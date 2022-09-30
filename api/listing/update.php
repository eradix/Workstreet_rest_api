<?php 
	include '../../config/init.php';

	header('Access-Control-Allow-Origin: *');
	header('Content-Type: application/json');
	header('Access-Control-Allow-Methods: PUT');
	header('Access-Control-Allow-Headers: Access-Control-Allow-Headers,Content-Type, Access-Control-Allow-Methods, Authorization, X-Requested-With');

	//instantiate db class and call connect function
	$database = new Database();
	$db = $database->connect();

	//instantiate listing model class
	$listing = new Listing($db);

	//get raw posted data
	$data = json_decode(file_get_contents("php://input"));

	if($data){
		//assign the extracted data
		$listing->title = $data->title;
		$listing->tags = $data->tags;
		$listing->description = $data->description;
		$listing->created_by = $data->created_by;
		$listing->listing_id = $data->listing_id;

		//call upadte function
		if($listing->update()){
			echo json_encode(['message' => 'Listing updated successfully']);
		} else {
			echo json_encode(['message' => 'Listing was not updated']);
		}
	}
	else{
		echo json_encode(['message' => 'an error occured.']);
	}








