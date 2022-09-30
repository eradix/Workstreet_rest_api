<?php 
	include '../../config/init.php';

	header('Access-Control-Allow-Origin: *');
	header('Content-Type: application/json');
	header('Access-Control-Allow-Methods: DELETE');
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
		$listing->listing_id = $data->listing_id;

		//call upadte function
		if($listing->delete()){
			echo json_encode(['message' => 'Listing deleted successfully']);
		} else {
			echo json_encode(['message' => 'Listing was not deleted']);
		}
	}
	else{
		echo json_encode(['message' => 'an error occured.']);
	}








