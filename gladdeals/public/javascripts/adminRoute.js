var myApp = angular.module("myModule", ["ngRoute"])
	.config(function ($routeProvider, $locationProvider) {
		$routeProvider
			.when("/addCat",
				{
					templateUrl: "addCategory.html",
					controller: "addCategoryCTRL"
				})
			.when("/viewCat",
				{
					templateUrl: "viewCategory.html",
					controller: "viewCategoryCTRL"
				})
			.when("/editCat",
				{
					templateUrl: "editCategory.html",
					controller: "editCategoryCTRL"
				})
			.when("/deleteCat",
				{
					templateUrl: "viewCategory.html",
					controller: "deleteCategoryCTRL"
				})
			.when("/viewDeal",
				{
					templateUrl: "viewDeal.html",
					controller: "viewDealCTRL"
				})
			.when("/deleteDeal",
				{
					templateUrl: "viewDeal.html",
					controller: "deleteDealCTRL"
				})
			.when("/viewSupplier",
				{
					templateUrl: "viewSupplier.html",
					controller: "viewSupplierCTRL"
				})
			.when("/deleteSupplier",
				{
					templateUrl: "viewSupplier.html",
					controller: "deleteSupplierCTRL"
				})
			.when("/viewUser",
				{
					templateUrl: "viewUser.html",
					controller: "viewUserCTRL"
				})
			.when("/viewReview",
				{
					templateUrl: "viewReview.html",
					controller: "viewReviewCTRL"
				})
			.when("/deleteReview",
				{
					templateUrl: "viewReview.html",
					controller: "deleteReviewCTRL"
				})
			.when("/logout",
				{
					templateUrl: "homescreen.html",
					controller: "logoutCTRL"
				})

			.otherwise({
				templateUrl: "homescreen.html"
			});


	})
	.controller("addCategoryCTRL", function ($scope, $http) {
		$scope.category = {};
		console.log($scope.category);
		$scope.Submit = function () {
			var uploadUrl = '/upload';
			var data = $scope.category;
			var fd = new FormData();
			for (var key in data)
				fd.append(key, data[key]);

			var successCallBack = function (response) {
				alert(response.data.result);
				$scope.category = "";
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

	.controller("viewCategoryCTRL", function ($scope, $http, $log) {
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
	})

	.controller("deleteCategoryCTRL", function ($scope, $http, $log, $routeParams, $location) {
		var id = $routeParams.id;
		var successCallBack = function (response) {
			console.log(response.data.message);
			if (response.data.message == "Task successfully deleted") {
				$location.url("/viewCat");
			}
		};

		var errorCallBack = function (reason) {
			$scope.error = reason.data;
		};
		var idData = { "id": id };

		$http({
			method: 'POST',
			url: 'http://localhost:3000/delCategory',
			data: idData
		})
			.then(successCallBack, errorCallBack);



	})

	.controller("editCategoryCTRL", function ($scope, $http, $log, $routeParams, $location) {
		var id = $routeParams.id;
		var successCallBack = function (response) {
			$scope.category = response.data[0];
		};

		var errorCallBack = function (reason) {
			$scope.error = reason.data;
		};
		var idData = { "id": id };

		$http({
			method: 'POST',
			url: 'http://localhost:3000/editCategory',
			data: idData
		})
			.then(successCallBack, errorCallBack);


		$scope.Submit = function () {

			var successCallBack = function (response) {
				$location.url("/viewCat");
			};

			var errorCallBack = function (reason) {
				$scope.error = reason.data;
			};

			$http({
				method: 'POST',
				url: 'http://localhost:3000/updateCategory',
				data: $scope.category
			})
				.then(successCallBack, errorCallBack);

		}
	})

	.controller("viewDealCTRL", function ($scope, $http, $log) {
		var successCallBack = function (response) {
			$scope.deals = response.data;

		};

		var errorCallBack = function (reason) {
			$scope.error = reason.data;
		};


		$http({
			method: 'GET',
			url: 'http://localhost:3000/deal'
		})
			.then(successCallBack, errorCallBack);
	})

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

	.controller("viewSupplierCTRL", function ($scope, $http, $log) {
		var successCallBack = function (response) {
			$scope.suppliers = response.data;

		};

		var errorCallBack = function (reason) {
			$scope.error = reason.data;
		};


		$http({
			method: 'GET',
			url: 'http://localhost:3000/supplierAdmin'
		})
			.then(successCallBack, errorCallBack);
	})

	.controller("deleteSupplierCTRL", function ($scope, $http, $log, $routeParams, $location) {
		var id = $routeParams.id;
		var successCallBack = function (response) {
			console.log(response.data.message);
			if (response.data.message == "Task successfully deleted") {
				$location.url("/viewSupplier");
			}
		};

		var errorCallBack = function (reason) {
			$scope.error = reason.data;
		};
		var idData = { "id": id };

		$http({
			method: 'POST',
			url: 'http://localhost:3000/delSupplier',
			data: idData
		})
			.then(successCallBack, errorCallBack);
	})

	.controller("viewUserCTRL", function ($scope, $http, $log) {
		var successCallBack = function (response) {
			$scope.users = response.data;

		};

		var errorCallBack = function (reason) {
			$scope.error = reason.data;
		};


		$http({
			method: 'GET',
			url: 'http://localhost:3000/user'
		})
			.then(successCallBack, errorCallBack);
	})

	.controller("viewReviewCTRL", function ($scope, $http, $log) {
		var successCallBack = function (response) {
			$scope.reviews = response.data;

		};

		var errorCallBack = function (reason) {
			$scope.error = reason.data;
		};


		$http({
			method: 'GET',
			url: 'http://localhost:3000/userReview'
		})
			.then(successCallBack, errorCallBack);
	})

	.controller("deleteReviewCTRL", function ($scope, $http, $log, $routeParams, $location) {
		var id = $routeParams.id;
		var successCallBack = function (response) {
			console.log(response.data.message);
			if (response.data.message == "Task successfully deleted") {
				$location.url("/viewReview");
			}
		};

		var errorCallBack = function (reason) {
			$scope.error = reason.data;
		};
		var idData = { "id": id };

		$http({
			method: 'POST',
			url: 'http://localhost:3000/delReview',
			data: idData
		})
			.then(successCallBack, errorCallBack);
	}).controller("logoutCTRL", function ($window) {
		$window.location.href = 'http://localhost:3000/admin/';

	});


myApp.filter('Demofilter', function () {
	return function (input) {
		if (input == 1) {
			return "Active";
		}
		else {
			return "Disabled";
		}

	}
});