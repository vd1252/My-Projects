var myApp = angular.module("myModule", ["ngRoute"])
    .config(function ($routeProvider, $locationProvider) {
        $routeProvider
            .when("/viewSupplierDetails",
                {
                    templateUrl: "viewSupplier.html",
                    controller: "viewSupplierCTRL"
                })
            .when("/editSupplier",
                {
                    templateUrl: "editSupplier.html",
                    controller: "editSupplierCTRL"
                })
            .when("/logout",
                {
                    templateUrl: "homeScreen.html",
                    controller: "logoutCTRL"
                })
            .when("/addDealSupplier",
                {
                    templateUrl: "addDeal.html",
                    controller: "addDealCTRL"
                })
            .when("/viewDealSupplier",
                {
                    templateUrl: "viewDeal.html",
                    controller: "viewDealCTRL"
                })
            .when("/deleteDeal",
                {
                    templateUrl: "viewDeal.html",
                    controller: "deleteDealCTRL"
                })

            // .when("/editCat",
            // 	{
            // 		templateUrl: "editCategory.html",
            // 		controller: "editCategoryCTRL"
            // 	})
            // .when("/deleteCat",
            // 	{
            // 		templateUrl: "viewCategory.html",
            // 		controller: "deleteCategoryCTRL"
            // 	})
            // .when("/viewDeal",
            // 	{
            // 		templateUrl: "viewDeal.html",
            // 		controller: "viewDealCTRL"
            // 	})

            // .when("/viewSupplier",
            // 	{
            // 		templateUrl: "viewSupplier.html",
            // 		controller: "viewSupplierCTRL"
            // 	})
            // .when("/deleteSupplier",
            // 	{
            // 		templateUrl: "viewSupplier.html",
            // 		controller: "deleteSupplierCTRL"
            // 	})
            // .when("/viewUser",
            // 	{
            // 		templateUrl: "viewUser.html",
            // 		controller: "viewUserCTRL"
            // 	})
            // .when("/viewReview",
            // 	{
            // 		templateUrl: "viewReview.html",
            // 		controller: "viewReviewCTRL"
            // 	})
            // .when("/deleteReview",
            // 	{
            // 		templateUrl: "viewReview.html",
            // 		controller: "deleteReviewCTRL"
            // 	})
            // .when("/logout",
            // 	{
            // 		templateUrl: "homescreen.html",
            // 		controller: "logoutCTRL"
            // 	})

            .otherwise({
                templateUrl: "homescreen.html"
            });


    })
    .controller("addDealCTRL", function ($scope, $http, $window) {
        $scope.deal = {};
        var successCallBack = function (response) {
            $scope.categories = response.data;

        };

        var errorCallBack = function (reason) {
            $scope.error = reason.data;
        };


        $http({
            method: 'GET',
            url: 'http://localhost:3000/category'
        })
            .then(successCallBack, errorCallBack);


        $scope.deal.supplier_id = $window.localStorage["supplierid"];

        $scope.Submit = function () {

            var uploadUrl = '/uploadDeal';
            var data = $scope.deal;
            console.log("formData", data);
            var fd = new FormData();
            for (var key in data)
                fd.append(key, data[key]);

            var successCallBack = function (response) {
                alert(response.data.result);
                $scope.deal = "";
            };
            var errorCallBack = function (reason) {
                $scope.login = reason.data;
            };
            $http.post(uploadUrl, fd, {
                transformRequest: angular.indentity,
                headers: { 'Content-Type': undefined }
            })
                .then(successCallBack, errorCallBack);
        }
    })

    .controller("viewDealCTRL", function ($scope, $http, $log, $window) {
        var id = $window.localStorage["supplierid"];
        var successCallBack = function (response) {
            $scope.deals = response.data;

        };

        var errorCallBack = function (reason) {
            $scope.error = reason.data;
        };
        var idDATA = { "id": id };

        $http({
            method: 'POST',
            url: 'http://localhost:3000/getDealSupplier',
            data: idDATA
        })
            .then(successCallBack, errorCallBack);
    })

    // .controller("deleteCategoryCTRL", function ($scope, $http, $log, $routeParams, $location) {
    // 	var id = $routeParams.id;
    // 	var successCallBack = function (response) {
    // 		console.log(response.data.message);
    // 		if (response.data.message == "Task successfully deleted") {
    // 			$location.url("/viewCat");
    // 		}
    // 	};

    // 	var errorCallBack = function (reason) {
    // 		$scope.error = reason.data;
    // 	};
    // 	var idData = { "id": id };

    // 	$http({
    // 		method: 'POST',
    // 		url: 'http://localhost:3000/delCategory',
    // 		data: idData
    // 	})
    // 		.then(successCallBack, errorCallBack);



    // })

    .controller("editSupplierCTRL", function ($scope, $http, $log, $routeParams, $location) {
        var id = $routeParams.id;
        var successCallBack = function (response) {
            $scope.supplier = response.data[0];
        };

        var errorCallBack = function (reason) {
            $scope.error = reason.data;
        };
        var idData = { "id": id };

        $http({
            method: 'POST',
            url: 'http://localhost:3000/editSupplierData',
            data: idData
        })
            .then(successCallBack, errorCallBack);


        $scope.Submit = function () {

            var successCallBack = function (response) {
                $location.url("/viewSupplierDetails");
            };

            var errorCallBack = function (reason) {
                $scope.error = reason.data;
            };

            $http({
                method: 'POST',
                url: 'http://localhost:3000/updateSupplierData',
                data: $scope.supplier
            })
                .then(successCallBack, errorCallBack);

        }
    })

    // .controller("viewDealCTRL", function ($scope, $http, $log) {
    // 	var successCallBack = function (response) {
    // 		$scope.deals = response.data;

    // 	};

    // 	var errorCallBack = function (reason) {
    // 		$scope.error = reason.data;
    // 	};


    // 	$http({
    // 		method: 'GET',
    // 		url: 'http://localhost:3000/deal'
    // 	})
    // 		.then(successCallBack, errorCallBack);
    // })

    .controller("deleteDealCTRL", function ($scope, $http, $log, $routeParams, $location) {
        var id = $routeParams.id;
        var successCallBack = function (response) {
            console.log(response.data.message);
            if (response.data.message == "Task successfully deleted") {
                $location.url("/viewDeal");
            }
        };

        var errorCallBack = function (reason) {
            $scope.error = reason.data;
        };
        var idData = { "id": id };

        $http({
            method: 'POST',
            url: 'http://localhost:3000/delDeal',
            data: idData
        })
            .then(successCallBack, errorCallBack);



    })

    .controller("viewSupplierCTRL", function ($scope, $http, $log, $window) {
        var id = $window.localStorage["supplierid"];
        var successCallBack = function (response) {
            $scope.suppliers = response.data;

        };

        var errorCallBack = function (reason) {
            $scope.error = reason.data;
        };
        var idData = { "id": id };


        $http({
            method: 'POST',
            url: 'http://localhost:3000/supplierData',
            data: idData
        })
            .then(successCallBack, errorCallBack);
    })

    // 	.controller("deleteSupplierCTRL", function ($scope, $http, $log, $routeParams, $location) {
    // 		var id = $routeParams.id;
    // 		var successCallBack = function (response) {
    // 			console.log(response.data.message);
    // 			if (response.data.message == "Task successfully deleted") {
    // 				$location.url("/viewSupplier");
    // 			}
    // 		};

    // 		var errorCallBack = function (reason) {
    // 			$scope.error = reason.data;
    // 		};
    // 		var idData = { "id": id };

    // 		$http({
    // 			method: 'POST',
    // 			url: 'http://localhost:3000/delSupplier',
    // 			data: idData
    // 		})
    // 			.then(successCallBack, errorCallBack);
    // 	})

    // 	.controller("viewUserCTRL", function ($scope, $http, $log) {
    // 		var successCallBack = function (response) {
    // 			$scope.users = response.data;

    // 		};

    // 		var errorCallBack = function (reason) {
    // 			$scope.error = reason.data;
    // 		};


    // 		$http({
    // 			method: 'GET',
    // 			url: 'http://localhost:3000/user'
    // 		})
    // 			.then(successCallBack, errorCallBack);
    // 	})

    // 	.controller("viewReviewCTRL", function ($scope, $http, $log) {
    // 		var successCallBack = function (response) {
    // 			$scope.reviews = response.data;

    // 		};

    // 		var errorCallBack = function (reason) {
    // 			$scope.error = reason.data;
    // 		};


    // 		$http({
    // 			method: 'GET',
    // 			url: 'http://localhost:3000/review'
    // 		})
    // 			.then(successCallBack, errorCallBack);
    // 	})

    // 	.controller("deleteReviewCTRL", function ($scope, $http, $log, $routeParams, $location) {
    // 		var id = $routeParams.id;
    // 		var successCallBack = function (response) {
    // 			console.log(response.data.message);
    // 			if (response.data.message == "Task successfully deleted") {
    // 				$location.url("/viewReview");
    // 			}
    // 		};

    // 		var errorCallBack = function (reason) {
    // 			$scope.error = reason.data;
    // 		};
    // 		var idData = { "id": id };

    // 		$http({
    // 			method: 'POST',
    // 			url: 'http://localhost:3000/delReview',
    // 			data: idData
    // 		})
    // 			.then(successCallBack, errorCallBack);
    // 	}).controller("logoutCTRL", function ($window) {
    // 		$window.location.href = 'http://localhost:3000/admin/';

    // 	})

    .controller("logoutCTRL", function ($scope, $http, $routeParams, $location, $window) {

        if ($window.localStorage["supplierid"] != null) {
            $window.localStorage["supplierid"] = "";
        }
        $window.location.href = 'http://localhost:3000/supplier/';
    });


// myApp.filter('Demofilter', function () {
// 	return function (input) {
// 		if (input == 1) {
// 			return "Active";
// 		}
// 		else {
// 			return "Disabled";
// 		}

// 	}
// });