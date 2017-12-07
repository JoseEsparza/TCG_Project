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

		<br>
		<br>
		<br>
		<br>
		<!-- Recetas más recientes -->
		<div  class="container" id="Cartas_recetas">
			<div class=" col-xs-10 col-md-4 carta_receta" ng-repeat="item in filtroItems">
				<a href="receta.php?id={{item.idrecetas}}"><img ng-src="http:Style/Assets/{{item.foto}}" alt="{{item.nombre_receta}}" class="img-responsive"></a>
				<div class="nombre_receta">
					<a href="receta.php?id={{item.idrecetas}}" ng-click=""><span>{{item.nombre_receta}}</span></a><a href="" class="favorito"><i class="fa fa-heart-o" aria-hidden="true"></i></a>
				</div>
			</div>
		</div>

		<br>
		<br>
		<br>
		<br>
		<div class="container col-md-offset-4 col-md-4 Filtros">
		    <ul uib-pagination boundary-links="true" total-items="totalItems"  items-per-page="numPerPage" ng-model="currentPage" previous-text="&lsaquo;" next-text="&rsaquo;" first-text="&laquo;" last-text="&raquo;"></ul>
		</div>


		<!-- Footer -->
		<!-- <footer class="footer">
			<div class="container">
				<div class="text-center">
					<small>Copyright © Your Website 2017</small>
				</div>
			</div>
		</footer> -->


		<script src="http://code.jquery.com/jquery-latest.js"></script>
		<script src="JS/jquery.easing.min.js"></script>
		<script src="JS/angular.js/angular.js"></script>
		<script src="Style/bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>
		<script src="JS/angular-ui-bootstrap/ui-bootstrap-tpls-2.1.2.min.js"></script>

		<script>
			var app = angular.module("TCG", ["ui.bootstrap"]);
				app.controller("main", ["$scope", "$filter", "$http",
					function (o, $filter, $http) {
					o.items = []; // JSON
					o.filtroItems = [];
					o.currentPage = 1;
					o.numPerPage = 3;
					o.hacerPagineo = function (arreglo) {
						var principio = ((o.currentPage - 1) * o.numPerPage); //0, 3
						var fin = principio + o.numPerPage; //3, 6
						o.filtroItems = arreglo.slice(principio, fin); //

					};
					o.buscar = function (busqueda) {
						var buscados = $filter('filter') (o.items, function (item) {
							return (item.nombre.toLowerCase().indexOf(busqueda.toLowerCase()) !== -1); // matches, contains
						});
						o.totalItems = buscados.length;
						o.hacerPagineo(buscados);
					};
					o.$watch('currentPage',function(){
						o.hacerPagineo(o.items);
					});
					o.inicializar = function () {
						$http({
							method: 'GET',
							url: '/api_tcg/api_tcg.php/recetas' //'http://thechefsguides.org/api/api.php/recetas'
						}).then(function successCallback(response) {

                        o.items = response.data;
                        o.hacerPagineo(o.items);
                        o.totalItems = o.items.length;

                        }, function errorCallback(response) {
                        console.log('Hubo un error!!!! NOOOOOOOOOOO')
                    });
        };
        o.inicializar();

    }]);
		</script>

	</body>
</html>