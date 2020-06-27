myApp.service('multipartForm', ['$http', function ($http) {
	this.post = function (uploadUrl, data) {
		var fd = new FormData();
		console.log(data.file);
		for (var key in data)
			fd.append(key, data[key]);
		$http.post(uploadUrl, fd, {
			transformRequest: angular.indentity,
			headers: { 'Content-Type': undefined }
		});
	}
}])