<!DOCTYPE html>
<html lang="en" ng-app='TCG'>
	<head>
		<meta charset="utf-8">
		<title>The Chef's Guide</title>
		<link rel="stylesheet" type="text/css" href="Style/bootstrap-3.3.7-dist/css/bootstrap.css">
		<link rel="stylesheet" type="text/css" href="Style/TCG.css">
		<link rel="stylesheet" type="text/css" href="Style/font-awesome-4.7.0/css/font-awesome.min.css">
		<link rel="icon" href="/Style/Assets/Chefsito.ico">
	</head>
	<body ng-controller="main">

		<!-- Menú -->
		<header>
			<nav class="navbar navbar-default navbar-fixed-top m_menu">
				<div class="container-fluid">
					<div class="navbar-header">
						<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#Main_menu">
							<span class="sr-only">Menu</span>
							<span class="icon-bar"></span>
							<span class="icon-bar"></span>
							<span class="icon-bar"></span>
						</button>
						<a href="index.php" class="logo_txt"><img class="logo" src="Style/Assets/Chefsito-01.png" alt=""> The Chef's Guide</a>
					</div>
					<div class="collapse navbar-collapse" id="Main_menu">
						<ul class="nav navbar-nav navbar-right m_menu2">
							<li class=""><a href="index.php">Recetas</a></li>
						</ul>
					</div>
				</div>
			</nav>
		</header>

		<div class="container">
			<div class="col-md-10 col-md-offset-1">
				<div class="carta_receta">
					<img ng-src="/Style/Assets/{{o_recetas.foto}}" alt="{{o_recetas.nombre_receta}}" class="img-responsive">
					<div class="nombre_receta">
						<a href="receta.php?id={{o_recetas.idrecetas}}" ng-click=""><span>{{o_recetas.nombre_receta}}</span></a><a href="" class="favorito"><i class="fa fa-heart-o" aria-hidden="true"></i></a>
					</div>
				</div>
			</div>
		</div>
		<br>

		<div class="container">
			<div class="col-md-10 col-md-offset-1 table-responsive">
				<h3>Ingredientes</h3>
				 <table class="table table-hover table-striped">
				 	<tr>
						<th>Ingrediente</th>
						<th>Cantidad</th>
					</tr>
				  <tr ng-repeat="ingr in ingredientes">
				    <td>{{ingr.nombre_ingrediente}}</td>
				    <td>{{ingr.cantidad}}</td>
				  </tr>
				 </table>
			</div>
		</div>

		<br>

		<div class="container">
			<div class="col-md-10 col-md-offset-1 text-justify" ng-repeat="(key, paso) in pasos">
				<br>
				<h3>Paso {{paso.num_paso}}</h3>
				<p >{{paso.pasos}}</p>
				<img ng-src="/Images/{{paso.ruta_foto}}" alt="{{paso.num_paso}}" class="img-responsive center-block">
				<br>
			</div>
		</div>

		<script src="JS/jquery.min.js"></script>
		<script src="JS/jquery.easing.min.js"></script>
		<script src="JS/angular.js/angular.js"></script>
		<script src="Style/bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>
		<script>

			function getParameterByName(name, url) {
	    		if (!url) url = window.location.href;
	    		name = name.replace(/[\[\]]/g, "\\$&");
			    var regex = new RegExp("[?&]" + name + "(=([^&#]*)|&|#|$)"),
			        results = regex.exec(url);
			    if (!results) return null;
			    if (!results[2]) return '';
			    return decodeURIComponent(results[2].replace(/\+/g, " "));
			}

			var idreceta = getParameterByName('id');
			// console.log(idreceta)

			var app = angular.module('TCG', [])


			app.controller('main', ['$scope', '$http',function($scope, $http){

				$scope.idreceta = idreceta;
				$scope.url = '/traer_receta.php?id='; //'http://thechefsguides.org/traer_receta.php?id='
				$scope.url_id = $scope.url + $scope.idreceta;


				$scope.o_recetas = [];

				$scope.pasos = [];

				$scope.ingredientes = [];

				$http({
					method: 'GET',
					url: $scope.url_id
				}).then(function successCallback(response){

					$scope.o_recetas = response.data.datos_receta;
					$scope.pasos = response.data.pasos;
					$scope.ingredientes = response.data.ingredientes;

				}, function errorCallback(response){
					console.log('Hubo un error!!!! NOOOOOOOOOOO');
				})

			}]);

		</script>

	</body>
</html>