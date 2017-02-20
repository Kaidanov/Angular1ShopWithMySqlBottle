(function () {
    'use strict';

    angular
        .module('myApp.dataservice', [])
        .factory('dataservice', ['$http', dataservice]);

    function dataservice($http) {
        var service = {
            getProducts: getProducts
        };

        return service;

        function getProducts() {
           

            return $http({
                url: 'http://localhost:8000/get-my-json' // +"?callback=JSON_CALLBACK"
            })
                .success(function (data, status, headers, config) {
                    return data.products;
                })
                .error(function (data, status, headers, config) {
                    console.log(status);
                });
        }

       

    }

})();


