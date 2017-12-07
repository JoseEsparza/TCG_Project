<?php
function utf8ize($d) {
    if (is_array($d)) {
        foreach ($d as $k => $v) {
            $d[$k] = utf8ize($v);
        }
    } else if (is_string ($d)) {
        return utf8_encode($d);
    }
    return $d;
}

	header("Content-Type: application/json;charset=utf-8");

	// Create connection
	$local = false;
	if($local){
		$servername = "localhost";
		$username = "root";
		$password = "";
		$db = "tcg";
	}else{
		$servername = "localhost";
		$username = "tcg_db";
		$password = "Asd123";
		$db = "tcg_db1";
	}

	$conn = new mysqli($servername, $username, $password, $db);

	// Check connection
	if ($conn->connect_error) {
	    die("Connection failed: " . $conn->connect_error);
	}


	$sql_ingredientes = "SELECT * FROM ingredientes RIGHT JOIN ingredientes_receta ON ingredientes_receta.id_ingrediente = ingredientes.idIngredientes WHERE id_receta = ".$_GET['id'].";";

	$sql_pasos = "SELECT * FROM pasos_receta WHERE id_receta = ".$_GET['id'].";";

	$sql_receta = "SELECT * FROM recetas WHERE idrecetas = ".$_GET['id'].";";

	// echo $sql_ingredientes;
	// echo $sql_pasos;
	// echo $sql_receta;

	$result = $conn->query($sql_ingredientes);
	$result2 = $conn->query($sql_pasos);
	$result3 = $conn->query($sql_receta);

	$ingredientes = [];
	$pasos = [];
	$datos_receta = [];

	if ($result->num_rows > 0) {
	    // output data of each row
	    while($row = $result->fetch_assoc()) {

	       	$ingredientes[] = $row;
	        // echo "id: " . $row["id"]. " - Name: " . $row["firstname"]. " " . $row["lastname"]. "<br>";
	    }
	} else {
	    echo "0 results";
	}
	// echo json_encode($ingredientes);


	if ($result2->num_rows > 0) {
	    // output data of each row
	    while($row = $result2->fetch_assoc()) {

	       	$pasos[] = $row;
	        // echo "id: " . $row["id"]. " - Name: " . $row["firstname"]. " " . $row["lastname"]. "<br>";
	    }
	} else {
	    echo "0 results";
	}

	if ($result3->num_rows > 0) {
	    // output data of each row
	    while($row = $result3->fetch_assoc()) {

	       	$datos_receta = $row;
	        // echo "id: " . $row["id"]. " - Name: " . $row["firstname"]. " " . $row["lastname"]. "<br>";
	    }
	} else {
	    echo "0 results";
	}

	$receta = [];
	$receta['pasos'] = $pasos;
	$receta['ingredientes'] = $ingredientes;
	$receta['datos_receta'] = $datos_receta;


	echo json_encode(utf8ize($receta));
	//echo json_last_error();