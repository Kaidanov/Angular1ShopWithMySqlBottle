(function () {

    "use strict";

    angular
        .module('myApp').controller('StoreController', ['$scope', 'dataservice', '$routeParams', '$location', StoreController]);

    function StoreController($scope, dataservice, $routeParams, $location) {

        $scope.products = [];
        $scope.product = {};
        $scope.cart = new shoppingCart("ShopDemo");
        $scope.cart.addCheckoutParameters("PayPal", "2bhere4u@gmail.com");


        angular.element(document).ready(function () {
            activate();
        });

        function activate() {
            return getProducts();
        }

        function getProducts() {
            return dataservice.getProducts().then(function (data) {
                $scope.products = data.data.products;
                console.log($scope.products[0].name + "getProducts");
                return $scope.products;
            });
        }

        function getProductByID(id) {
            return dataservice.getProducts().then(function (data) {
                $scope.product = {};
                $scope.products = data.data.products;
                for (var i = 0; i < $scope.products.length; i++) {
                    if ($scope.products[i].id == id) {
                        $scope.product = $scope.products[i];
                        return $scope.product;
                    }
                }
                return null;
            });
        }


        // use 1.36.routing to pick the selected product
        if ($routeParams.id != null) {
            $scope.product = getProductByID($routeParams.id);
        }

        $scope.isActive = function (viewLocation) {
            return viewLocation === $location.path();
        };
    }


})();