var myApp = angular.module("myModule", ["ngRoute"])
	.config(function ($routeProvider, $locationProvider) {
		$routeProvider
			.when("/",
				{
					templateUrl: "home.html",
					controller: "homeCTRL"
				})
			.when("/deals",
				{
					templateUrl: "showDeals.html",
					controller: "dealsCTRL"
				})
			.when("/showDeal",
				{
					templateUrl: "showDeal.html",
					controller: "showDealCTRL"
				})
			.when("/signup",
				{
					templateUrl: "signup.html",
					controller: "signupCTRL"
				})
			.when("/login",
				{
					templateUrl: "login.html",
					controller: "loginCTRL"
				})
			.when("/logout",
				{
					templateUrl: "home.html",
					controller: "logoutCTRL"
				})
			.when("/review",
				{
					templateUrl: "review.html",
					controller: "reviewCTRL"
				})
			.when("/buyDeal",
				{
					templateUrl: "buy.html",
					controller: "buydealCTRL"
				})
	}).controller("homeCTRL", function ($scope, $http, $window) {


		var successCallBack = function (response) {
			$scope.category = response.data;
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
	.controller("dealsCTRL", function ($scope, $http, $routeParams) {
		var id = $routeParams.id;

		var successCallBack = function (response) {
			$scope.deals = response.data;
		};

		var errorCallBack = function (reason) {
			$scope.error = reason.data;
		};

		var idData = { "id": id };

		$http({
			method: 'POST',
			url: 'http://localhost:3000/getDeal',
			data: idData
		})
			.then(successCallBack, errorCallBack);
	})
	.controller("showDealCTRL", function ($scope, $http, $routeParams, $window, $location) {
		var id = $routeParams.id;
		var successCallBack = function (response) {
			$scope.singleDeal = response.data;
			$window.localStorage["deal_title"] = response.data[0].deal_title;
			$window.localStorage["deal_price"] = response.data[0].price;

		};

		var errorCallBack = function (reason) {
			$scope.error = reason.data;
		};

		var idData = { "id": id };
		$http({
			method: 'POST',
			url: 'http://localhost:3000/getSingleDeal',
			data: idData
		})
			.then(successCallBack, errorCallBack);

		$scope.buy = function () {

			if ($window.localStorage["user_email"] != "") {
				$location.url("/buyDeal?id=" + $routeParams.id);
			}
			else {
				alert("Login to continue");
				$location.url("/login");
			}

		}
	})
	.controller("signupCTRL", function ($scope, $http, $routeParams, $location, $window) {
		$scope.user = {};
		$scope.signup = function () {

			var successCallBack = function (response) {

				$location.url("/login");
			};

			var errorCallBack = function (reason) {
				$scope.error = reason.data;
			};

			$http({
				method: 'POST',
				url: 'http://localhost:3000/user',
				data: $scope.user
			})
				.then(successCallBack, errorCallBack);

		}

	})
	.controller("loginCTRL", function ($scope, $http, $routeParams, $location, $window) {
		$scope.user = {};
		$scope.login = function () {
			console.log($scope.user);
			var successCallBack = function (response) {
				var loginResult = response.data.result;


				if (loginResult == "success") {
					$window.localStorage["user_email"] = $scope.user.user_email;
					$window.location.href = 'http://localhost:3000/';
				}
				else {
					alert("Username-Password Mismatch");
					$scope.user = {};
					$location.url("/login");
				}
			};

			var errorCallBack = function (reason) {
				$scope.error = reason.data;
			};

			$http({
				method: 'POST',
				url: 'http://localhost:3000/userLogin',
				data: $scope.user
			})
				.then(successCallBack, errorCallBack);

		}

	})
	.controller("reviewCTRL", function ($scope, $http, $routeParams, $location, $window) {
		$scope.review = {};
		$scope.submit = function () {
			review_email = $window.localStorage["user_email"];
			var completeData = {"review_email":review_email,"review_title":$scope.review.review_title,"review_data":$scope.review.review_data};
			var successCallBack = function (response) {
				var loginResult = response.data.result;


				if (loginResult == "success") {
					alert("Thanks for the Feedback!");
					$window.location.href = 'http://localhost:3000/';
				}
				
			};

			var errorCallBack = function (reason) {
				$scope.error = reason.data;
			};

			$http({
				method: 'POST',
				url: 'http://localhost:3000/userReview',
				data: completeData
			})
				.then(successCallBack, errorCallBack);
		}
	})
	.controller("logoutCTRL", function ($scope, $http, $routeParams, $location, $window) {

		if ($window.localStorage["user_email"] != null) {
			$window.localStorage["user_email"] = "";
		}
		$window.location.href = 'http://localhost:3000/';
	})
	.controller("buydealCTRL", function ($scope, $http, $routeParams, $location, $window) {

		var id = $routeParams.id;
		$scope.user_email = $window.localStorage["user_email"];
		$scope.deal_title = $window.localStorage["deal_title"];
		$scope.deal_price = $window.localStorage["deal_price"];
		payment_data = { "email": $window.localStorage["user_email"], "title": $window.localStorage["deal_title"], "price": $window.localStorage["deal_price"] };

	});


myApp.controller('indexController', function ($scope, $http, $window) {
	if ($window.localStorage["user_email"] != null) {
		$scope.token = $window.localStorage["user_email"];
	}
});

