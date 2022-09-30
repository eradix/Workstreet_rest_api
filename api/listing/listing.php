<?php 
	include '../../config/init.php';

	header('Access-Control-Allow-Origin: *');
	header('Content-Type: application/json');

	//instantiate db class and call connect function
	$database = new Database();
	$db = $database->connect();

	//instantiate listing model class
	$listing = new Listing($db);

	//getting the value of id
	$listing->listing_id = $_GET['id'] ?? die("need to input an id");

	//calling function
	$result = $listing->single_listing();

	//assigned to array
	$listing = [

			"listing_id" 	=> $listing->listing_id,
			"title" 		=> $listing->title,
			"tags" 			=> $listing->tags,
			"description" 	=> $listing->description,
			"company" 		=> $listing->company,
			"created_at" 	=> $listing->created_at,
			"updated_at" 	=> $listing->updated_at,
			"update_flg" 	=> $listing->update_flg,
			"logo" 			=> $listing->logo,
			"created_by" 	=> $listing->created_by,
	];

	//convert to json obj
	echo json_encode($listing);


	
