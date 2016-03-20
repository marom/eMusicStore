/**
 * Created by maro on 20/03/16.
 */

var cartApp = angular.module("cartApp", []);

cartApp.controller("cartCtrl", function($scope, $http) {

    $scope.refreshCart = function(cartId) {
        $http.get("/eMusicStore/rest/cart/" + $scope.cartId).success(function(data) {
            $scope.cartId = data;
        });
    };

    $scope.clearCart = function() {
        $http.delete("/eMusicStore/rest/cart/" + $scope.cartId).success($scope.refreshCart($scope.cartId));
    };

    $scope.initCart = function(cartId) {
        $scope.cartId = cartId;
        $scope.refreshCart(cartId);
    };

    $scope.addToCart = function(productId) {
        $http.put("/eMusicStore/rest/cart/add" + productId).success(function(data) {
           $scope.refreshCart($http.get("/eMusicStore/rest/cart/cartId"));
            alert("Product successfully added to the cart.")
        });
    };

    $scope.removeFromCart = function(productId) {
        $http.put("/eMusicStore/rest/cart/remove/" + productId).success(function(data) {
           $scope.refreshCart($http.get("/eMusicStore/rest/cart/cartId"));
        });
    };
});
