(function () {

    'use strict';

    // Declare app level module which depends on views, and components
     angular.module('myApp', [
            'ngRoute',
            'ngResource',
            'myApp.dataservice',
            'myApp.productBox'
    ])
         .config( function ($routeProvider) {
             $routeProvider
                 .when('/dashboard', {
                     templateUrl: 'partials/dashboard.html',
                     controller: 'StoreController'
                 })
                 .when('/dashboard/:id', {
                     templateUrl: 'partials/product.html',
                     controller: 'StoreController'
                 })
                 .when('/cart', {
                     templateUrl: 'partials/cart.html',
                     controller: 'StoreController'
                 })
                 .otherwise({ redirectTo: '/dashboard' });
         });

})();
