var app = angular.module("TCG", ["ui.bootstrap"]);

app.controller("main", ["$scope", "$filter", "$http",
    function (o, $filter, $http) {
        o.items = []; // JSON
        o.filtroItems = [];
        o.currentPage = 1;
        o.numPerPage = 3;
        o.totalItems = o.items.length;
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
                       url: 'http://localhost/api/api.php/recetas' //'http://thechefsguides.org/api/api.php/recetas'
                    }).then(function successCallback(response) {
                        // this callback will be called asynchronously
                        // when the response is available

                        o.items = response.data;
                        o.hacerPagineo(o.items);
                        console.log(o.items);

                        }, function errorCallback(response) {
                        // called asynchronously if an error occurs
                        // or server returns response with an error status.
                        console.log('Hubo un error!!!! NOOOOOOOOOOO')
                    });
            //JSON de un REST aca el GET
            //$http.get("REST" , function(items){
            //   o.items = items;
            //    o.hacerPagineo(o.items);
            //});
            // o.hacerPagineo(o.items);
        };
        o.inicializar();

    }]);