<?php 
	include '../../config/init.php';

	header('Access-Control-Allow-Origin: *');
	header('Content-Type: application/json');

	//instantiate db class and call connect function
	$database = new Database();
	$db = $database->connect();

	//instantiate listing model class
	$listing = new Listing($db);

	$data = $listing->read();
	$row_count = $data->rowCount();


	$result['listings'] = [];
	$listings = [];


	if($row_count > 1){
		while($row = $data->fetch(PDO::FETCH_ASSOC)){
			extract($row);
			$listings['listing_id'] = $listing_id;
			$listings['title'] = $title;
			$listings['tags'] = $tags;
			$listings['description'] = $description;
			$listings['company'] = $company;
			$listings['created_at'] = $created_at;
			$listings['updated_at'] = $updated_at;
			$listings['update_flg'] = $update_flg;
			$listings['logo'] = $logo;
			array_push($result['listings'], $listings);
		}
	}
	else{
		$result['listings'] = null;
		$result['message'] = "No Listings found.";
	}
	echo json_encode($result);
