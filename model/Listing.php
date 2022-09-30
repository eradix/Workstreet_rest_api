<?php 
	date_default_timezone_set('Asia/Manila');

	class Listing{
		//properties
		private $conn;

		public $listing_id;
		public $title;
		public $tags;
		public $description;
		public $company;
		public $created_at;
		public $updated_at;
		public $update_flg;
		public $logo;
		public $created_by;

		//constructor
		public function __construct($db){
			$this->conn = $db;
		}

		//methods
		public function read(){
			//sql statement
			$sql = "SELECT l.listing_id, l.title, l.tags, l.description, u.company, l.created_at, l.updated_at, l.update_flg, u.logo ";
			$sql.= "from listings l left join user_account u ";
			$sql.= "On l.created_by = u.user_id ";
			$sql .= "ORDER BY l.created_at DESC";

			//prepare
			$stmt = $this->conn->prepare($sql);

			//execute
			$stmt->execute();


			return $stmt;
		}

		public function single_listing(){
			//sql statement
			$sql = "SELECT l.listing_id, l.title, l.tags, l.description, l.created_by, u.company, l.created_at, l.updated_at, l.update_flg, u.logo ";
			$sql.= "from listings l left join user_account u ";
			$sql.= "On l.created_by = u.user_id ";
			$sql .= "WHERE listing_id = ?";

			//prepare
			$stmt = $this->conn->prepare($sql);

			//bind id
			$stmt->bindParam(1, $this->listing_id, PDO::PARAM_INT);

			//execute
			$stmt->execute();

			//fetch data
			$row = $stmt->fetch(PDO::FETCH_ASSOC);

			//check if row has been fetch
			if($row){
				//set properties
				$this->listing_id 	= $row['listing_id'];
				$this->title 		= $row['title'];
				$this->tags 		= $row['tags'];
				$this->description 	= $row['description'];
				$this->company 		= $row['company'];
				$this->created_at 	= $row['created_at'];
				$this->updated_at 	= $row['updated_at'];
				$this->update_flg 	= $row['update_flg'];
				$this->logo 		= $row['logo'];
				$this->created_by 		= $row['created_by'];

			} 
			//if no data has been fetch echo error
			else{
				exit();
			}

		}

		public function create(){
			//current timestamp
			$now = date("Y-m-d H:i:s");

			try{

				//sql insert query
				$sql = "INSERT INTO listings (title, tags, description, created_by, updated_at, update_flg) ";
				$sql .= "VALUES  (:title, :tags, :description, 3, '$now', 1)";


				//prepare statement
				$stmt = $this->conn->prepare($sql);

				//clean and sanitize data
				$this->title = htmlspecialchars(strip_tags($this->title));
				$this->tags = htmlspecialchars(strip_tags($this->tags));
				$this->description = htmlspecialchars(strip_tags($this->description));

				//bind parameters
				$stmt->bindPAram(':title', $this->title);
				$stmt->bindPAram(':tags', $this->tags);
				$stmt->bindPAram(':description', $this->description);

				//execute
				$stmt->execute();

				return true;
			}
			catch(PDOException $e) {
			  echo "Error: " . $e->getMessage();
			}
		}

		public function update(){
			//current timestamp
			$now = date("Y-m-d H:i:s");

			try{

				//sql insert query
				$sql = "UPDATE listings SET title = :title, tags = :tags, description = :description, created_by = :created_by, updated_at = '$now', update_flg = 1 ";
				$sql .= "WHERE listing_id = :listing_id";


				//prepare statement
				$stmt = $this->conn->prepare($sql);

				//clean and sanitize data
				$this->title = htmlspecialchars(strip_tags($this->title));
				$this->tags = htmlspecialchars(strip_tags($this->tags));
				$this->description = htmlspecialchars(strip_tags($this->description));
				$this->created_by = htmlspecialchars(strip_tags($this->created_by));
				$this->listing_id = htmlspecialchars(strip_tags($this->listing_id));

				//bind parameters
				$stmt->bindPAram(':title', $this->title);
				$stmt->bindPAram(':tags', $this->tags);
				$stmt->bindPAram(':description', $this->description);
				$stmt->bindPAram(':created_by', $this->created_by);
				$stmt->bindPAram(':listing_id', $this->listing_id);

				//execute
				$stmt->execute();

				return true;
			}
			catch(PDOException $e) {
			  echo "Error: " . $e->getMessage();
			}
		}

		public function delete(){
			//create query
			$sql = "DELETE FROM listings WHERE listing_id = :listing_id Limit 1";

			try{

				//prepare statement
				$stmt = $this->conn->prepare($sql);

				//clean and sanitize data
				$this->listing_id = htmlspecialchars(strip_tags($this->listing_id));

				//bind parameters
				$stmt->bindPAram(':listing_id', $this->listing_id, PDO::PARAM_INT);

				//execute
				$stmt->execute();

				return true;

			}
			 catch(PDOException $e) {
			  	echo "Error: " . $e->getMessage();
			}

		}

		public function search(){
			//sql statement
			$sql = "SELECT l.listing_id, l.title, l.tags, l.description, l.created_by, u.company, l.created_at, l.updated_at, l.update_flg, u.logo ";
			$sql.= "from listings l left join user_account u ";
			$sql.= "On l.created_by = u.user_id ";
			$sql .= "WHERE l.title like :title or l.tags like :tags or l.description like :description or u.company like :company";

			//prepare
			$stmt = $this->conn->prepare($sql);

			//clean and sanitize data
			$this->title = "%" . htmlspecialchars(strip_tags($this->title)) . "%";
			$this->tags = "%" . htmlspecialchars(strip_tags($this->tags)) . "%";
			$this->description = "%" . htmlspecialchars(strip_tags($this->description)) . "%";
			$this->company = "%" . htmlspecialchars(strip_tags($this->company)) . "%";

			//bind
			$stmt->bindPAram(':title', $this->title);
			$stmt->bindPAram(':tags', $this->tags);
			$stmt->bindPAram(':description', $this->description);
			$stmt->bindPAram(':company', $this->company);

			//execute
			$stmt->execute();


			return $stmt;
		}

	}