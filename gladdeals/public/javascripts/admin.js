var app = angular.module('loginApp', []);

app.controller('loginController', function($scope,$http,$window)
 {
  $scope.admin = {};
  $scope.submit = function() {
      
    console.log($scope.admin);
    var successCallBack = function(response)
    {
        var loginResult = response.data.result;
        console.log(loginResult);
        if(loginResult=="success")
        {
            $window.location.href = 'http://localhost:3000/admin/home.html';
        }
        else
        {
            $window.location.href = 'http://localhost:3000/admin/';
            alert("Username-Password Mismatch");
        }
    };
    var errorCallBack = function(reason)
    {
        $scope.login = reason.data;
    };
    
    $http({
        method:'POST',
        url:'http://localhost:3000/loginAdmin',
        data:$scope.admin
        })
        .then(successCallBack,errorCallBack);
}
});

