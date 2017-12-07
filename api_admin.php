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

			$sql_ingredientes_admin = "SELECT * FROM ingredientes RIGHT JOIN ingredientes_receta ON ingredientes_receta.id_ingrediente = ingredientes.idIngredientes";

			$sql_pasos_admin = "SELECT * FROM pasos_receta";

			$sql_receta_admin = "SELECT * FROM recetas";

			$result_ad = $conn->query($sql_ingredientes_admin);
			$result_ad2 = $conn->query($sql_pasos_admin);
			$result_ad3 = $conn->query($sql_receta_admin);

			$ingredientes_admin = [];
			$pasos_admin = [];
			$datos_receta_admin = [];

			if ($result_ad->num_rows > 0) {
			    // output data of each row
			    while($row = $result_ad->fetch_assoc()) {

			       	$ingredientes_admin[] = $row;
			        // echo "id: " . $row["id"]. " - Name: " . $row["firstname"]. " " . $row["lastname"]. "<br>";
			    }
			} else {
			    echo "0 results";
			}
			// echo json_encode($ingredientes);


			if ($result_ad2->num_rows > 0) {
			    // output data of each row
			    while($row = $result_ad2->fetch_assoc()) {

			       	$pasos_admin[] = $row;
			        // echo "id: " . $row["id"]. " - Name: " . $row["firstname"]. " " . $row["lastname"]. "<br>";
			    }
			} else {
			    echo "0 results";
			}

			if ($result_ad3->num_rows > 0) {
			    // output data of each row
			    while($row = $result_ad3->fetch_assoc()) {

			       	$datos_receta_admin[] = $row;
			        // echo "id: " . $row["id"]. " - Name: " . $row["firstname"]. " " . $row["lastname"]. "<br>";
			    }
			} else {
			    echo "0 results";
			}
			$recetas_admin = [];
			$receta_admin['pasos'] = $pasos_admin;
			$receta_admin['ingredientes'] = $ingredientes_admin;
			$receta_admin['datos_receta'] = $datos_receta_admin;
			echo json_encode(utf8ize($receta_admin));