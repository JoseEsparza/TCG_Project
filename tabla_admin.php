<!DOCTYPE html>
	<html lang="en" ng-app='TCG'>
	<head>
		<meta charset="utf-8">
		<title>The Chef's Guide</title>
		<link rel="stylesheet" type="text/css" href="Style/bootstrap-3.3.7-dist/css/bootstrap.css">
		<link rel="stylesheet" type="text/css" href="Style/TCG.css">
		<link rel="stylesheet" type="text/css" href="Style/font-awesome-4.7.0/css/font-awesome.min.css">
		<link rel="icon" href="Style/Assets/Chefsito.ico">
	</head>
	<body ng-controller="main">

		<div class="container">
			<div class="col-md-10 col-md-offset-1 table-responsive">
				<h3>Recetas</h3>
				 <table class="table table-hover table-striped">
				 	<tr>
				 		<th>Id_Receta</th>
						<th>Nombre_receta</th>
						<th>Fecha_agregado</th>
						<th>Costo_receta</th>
						<th>Foto_receta</th>
					</tr>
				  <tr ng-repeat="ingr in o_recetas">
				  	<td>{{ingr.idrecetas}}</td>
				    <td>{{ingr.nombre_receta}}</td>
				    <td>{{ingr.fecha_creacion}}</td>
				    <td>{{ingr.costo_aprox}}</td>
				    <td>{{ingr.foto}}</td>
				  </tr>
				 </table>
			</div>
		</div>

		<br>
		<hr>

		<div class="container">
			<div class="col-md-10 col-md-offset-1 table-responsive">
				<h3>Ingredientes</h3>
				 <table class="table table-hover table-striped">
				 	<tr>
				 		<th>Id_Ingrediente</th>
						<th>Ingrediente</th>
						<th>Id_Receta</th>
						<th>Cantidad</th>
					</tr>
				  <tr ng-repeat="ingr in ingredientes">
				  	<td>{{ingr.id_ingrediente}}</td>
				    <td>{{ingr.nombre_ingrediente}}</td>
				    <td>{{ingr.id_receta}}</td>
				    <td>{{ingr.cantidad}}</td>
				  </tr>
				 </table>
			</div>
		</div>

		<br>
		<hr>

		<div class="container">
			<div class="col-md-10 col-md-offset-1 table-responsive">
				<h3>Pasos</h3>
				 <table class="table table-hover table-striped">
				 	<tr>
				 		<th>Numero_paso</th>
						<th>Paso</th>
						<th>Id_Receta</th>
						<th>Ruta_foto</th>
					</tr>
				  <tr ng-repeat="ingr in pasos">
				  	<td>{{ingr.num_paso}}</td>
				    <td>{{ingr.pasos}}</td>
				    <td>{{ingr.id_receta}}</td>
				    <td>{{ingr.ruta_foto}}</td>
				  </tr>
				 </table>
			</div>
		</div>



		<script src="http://code.jquery.com/jquery-latest.js"></script>
		<script src="JS/jquery.easing.min.js"></script>
		<script src="JS/angular.js/angular.js"></script>
		<script src="Style/bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>

		<script>
			var app = angular.module('TCG', [])


			app.controller('main', ['$scope', '$http',function($scope, $http){

				$scope.o_recetas = [];

				$scope.pasos = [];

				$scope.ingredientes = [];

				$http({
					method: 'GET',
					url: '/api_admin.php'
				}).then(function successCallback(response){

					console.log(response.data);
					$scope.o_recetas = response.data.datos_receta;
					$scope.pasos = response.data.pasos;
					$scope.ingredientes = response.data.ingredientes;

					console.log($scope.o_recetas);
					console.log($scope.pasos);
					console.log($scope.ingredientes);

				}, function errorCallback(response){
					console.log('Hubo un error!!!! NOOOOOOOOOOO');
				})

			}]);
		</script>
	</body>
</html>