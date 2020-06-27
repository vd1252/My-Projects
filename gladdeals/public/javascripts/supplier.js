var app = angular.module('supplierApp', []);

app.controller('loginController', function ($scope, $http, $window) {
    $scope.sup = {};
    $scope.login = function () {

        var successCallBack = function (response) {
            var loginResult = response.data.result;
            
            console.log(loginResult);
            if (loginResult == "success") {
                $window.localStorage["supplierid"]=response.data.supplierId;    
                $window.location.href = 'http://localhost:3000/supplier/home.html';
            }
            else {
                $window.location.href = 'http://localhost:3000/supplier/';
                alert("Username-Password Mismatch");
            }
        };
        var errorCallBack = function (reason) {
            $scope.login = reason.data;
        };

        $http({
            method: 'POST',
            url: 'http://localhost:3000/supplierLogin',
            data: $scope.sup
        })
            .then(successCallBack, errorCallBack);
    }
});

app.controller("registerController", function ($scope, $http, $window) {
    $scope.supplier = {};
    $scope.register = function () {

        var successCallBack = function (response) {
            var loginResult = response.data.result;
            console.log(loginResult);
            if (loginResult == "success") {
                alert("Successfully Registered");
                $scope.supplier={};
            }
            else {
                alert("Registration Failed");
            }
        };
        var errorCallBack = function (reason) {
            $scope.login = reason.data;
        };

        $http({
            method: 'POST',
            url: 'http://localhost:3000/supplierRegister',
            data: $scope.supplier
        })
            .then(successCallBack, errorCallBack);
    }
});

