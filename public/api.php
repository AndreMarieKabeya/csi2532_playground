<?php
//$reply = ["hello" => "world"];
$all=getallheaders();
$mutant=$all["X-Men"];

switch ($mutant){
	case "Wolverine":
	$name="Logan";
	break;
	default:
	$name="Unknown";
}

//header('Status: 400 Bad Request');
header("Content-Type: application/json");
$reply=["mutant" => $mutant,"name" => $name];
echo json_encode($all);
