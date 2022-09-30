<?php

	class Database{

		private $host = "localhost";
		private $user = "root" ;
		private $password = "";
		private $db_name = "workstreet";
		private $port = "3309";
		private $conn;

		public function connect(){
			$this->conn = null;

			try {
			  $this->conn = new PDO("mysql:host={$this->host};dbname={$this->db_name};port={$this->port}", $this->user, $this->password);
			  // set the PDO error mode to exception
			  $this->conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

			} catch(PDOException $e) {
			  echo "Connection failed: " . $e->getMessage();
			}

			return $this->conn;

		}
	}

	