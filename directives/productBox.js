(function () {
    'use strict';

    angular
        .module('myApp.productBox', [])
        .directive('productBox', productbox);

   
    function productbox(){
        return {
            restrict: 'EA',
            templateUrl:'partials/productbox.html'
        };
    }
})();




