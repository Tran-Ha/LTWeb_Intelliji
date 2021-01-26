app.controller('userLoginController', function ($scope, $rootScope, $route, $routeParams, $location, userLoginService, alertsService) {
    $scope.initializeController = function () {

        var userLoginID = ($routeParams.id || "");
        $rootScope.applicationModule = "UserLogins";
        $rootScope.alerts = [];

        $scope.initObject();
        userLoginService.getProvinces($scope.getProvincesCompleted, $scope.getError);
        if (userLoginID > 0) {
            var obj = new Object();
            obj.Id = userLoginID;
            userLoginService.getUserLogin(obj, $scope.getEditCompleted, $scope.getError);
        }
        else {
            $scope.getDistricts(1);
        }
    }

    $scope.initObject = function () {
        $scope.Id = 0;
        $scope.Address = "";
        $scope.CreatedDate = new Date();
        $scope.DateOfBirth = new Date();
        $scope.DistrictId = 0;
        $scope.Email = "";
        $scope.Gender = false;
        $scope.Inactive = false;
        $scope.Name = "";
        $scope.Password = "";
        $scope.RePassword = "";
        $scope.Phone = "";
        $scope.ProvinceId = 0;
        $scope.Avatar = "/Areas/Admin/Images/icon-upload.png";
        $scope.Code = "";
        $scope.IsNewsLetter = false;
    }
    $scope.createObject = function () {
        var userLogin = {
            Id: $scope.Id,
            Address: $scope.Address,
            CreatedDate: $scope.CreatedDate,
            DateOfBirth: $scope.DateOfBirth,
            DistrictId: $scope.DistrictId,
            Email: $scope.Email,
            Gender: $scope.Gender,
            Inactive: $scope.Inactive,
            Name: $scope.Name,
            Password: $scope.Password,
            RePassword: $scope.Password,
            Phone: $scope.Phone,
            ProvinceId: $scope.ProvinceId,
            Avatar: $scope.Avatar,
            Code: $scope.Code,
            IsNewsLetter: $scope.IsNewsLetter,
        };
        return userLogin;
    }
    $scope.resetValues = function (index) {
        $scope.Id = 0;
        $scope.Address = "";
        $scope.CreatedDate = new Date();
        $scope.DateOfBirth = new Date();
        $scope.DistrictId = 0;
        $scope.Email = "";
        $scope.Gender = false;
        $scope.Inactive = false;
        $scope.Name = "";
        $scope.Password = "";
        $scope.RePassword = "";
        $scope.Phone = "";
        $scope.ProvinceId = 0;
        $scope.Avatar = "/Areas/Admin/Images/icon-upload.png";
        $scope.Code = "";
        $scope.IsNewsLetter = false;
    }

    $scope.addImage = function (image) {
        $scope.Avatar = image;
    }
    $scope.deleteImage = function () {
        $scope.Avatar = "/Areas/Admin/Images/icon-upload.png";
    };

    $scope.getEditCompleted = function (response) {
        $scope.Id = response.Data.Id;
        $scope.Address = response.Data.Address;
        $scope.CreatedDate = response.Data.CreatedDate;
        $scope.DateOfBirth = response.Data.DateOfBirth;
        $scope.DistrictId = response.Data.DistrictId;
        $scope.Email = response.Data.Email;
        $scope.Gender = response.Data.Gender;
        $scope.Inactive = response.Data.Inactive;
        $scope.Name = response.Data.Name;
        $scope.Password = response.Data.Password;
        $scope.RePassword = response.Data.RePassword;
        $scope.Phone = response.Data.Phone;
        $scope.ProvinceId = response.Data.ProvinceId;
        $scope.Avatar = response.Data.Avatar;
        $scope.Code = response.Data.Code;
        $scope.IsNewsLetter = response.Data.IsNewsLetter;
        $scope.getDistricts($scope.ProvinceId);
    }
    $scope.getProvincesCompleted = function (response) {
        $scope.Provinces = response.Records;
    }
    $scope.getDistricts = function (provinceId) {
        var obj = new Object();
        obj.provinceId = provinceId;
        userLoginService.getDistricts(obj, $scope.getDistrictsCompleted, $scope.getError);
    }
    $scope.getDistrictsCompleted = function (response) {
        $scope.Districts = response.Records;
    }

    $scope.getError = function (response) {
        $scope.Message = response.Message;
    }
    $scope.clearValidationErrors = function () {
    }

    $scope.create = function () {
        var userlogin = $scope.createObject();
        userLoginService.create(userlogin, $scope.createCompleted, $scope.createError);
    }
    $scope.createBack = function () {
        var userlogin = $scope.createObject();
        userLoginService.create(userlogin, $scope.createBackCompleted, $scope.createError);
    }
    $scope.createCompleted = function (response, status) {
        $scope.IsSuccess = response.IsSuccess;
        $scope.IsError = response.IsError;
        $scope.InValid = response.InValid;
        $scope.resetValues(response.Index);
    }
    $scope.createBackCompleted = function (response, status) {
        $scope.IsSuccess = response.IsSuccess;
        $scope.IsError = response.IsError;
        $scope.InValid = response.InValid;
        $scope.resetValues(response.Index);
        $location.path("/userlogin");
    }
    $scope.createError = function (response) {
        $scope.IsSuccess = response.IsSuccess;
        $scope.IsError = response.IsError;
        $scope.InValid = response.InValid;
        $scope.Message = alertsService.FormatMessage(response.ReturnMessage);
    }

    $scope.update = function () {
        var userlogin = $scope.createObject();
        userLoginService.update(userlogin, $scope.updateCompleted, $scope.updateError);
    }
    $scope.updateBack = function () {
        var userlogin = $scope.createObject();
        userLoginService.update(userlogin, $scope.updateBackCompleted, $scope.updateError);
    }
    $scope.updateCompleted = function (response, status) {
        $scope.IsSuccess = response.IsSuccess;
        $scope.IsError = response.IsError;
        $scope.InValid = response.InValid;
    }
    $scope.updateBackCompleted = function (response, status) {
        $scope.IsSuccess = response.IsSuccess;
        $scope.IsError = response.IsError;
        $scope.InValid = response.InValid;
        $location.path("/userlogin");
    }
    $scope.updateError = function (response) {
        $scope.IsSuccess = response.IsSuccess;
        $scope.IsError = response.IsError;
        $scope.InValid = response.InValid;
        $scope.Message = alertsService.FormatMessage(response.ReturnMessage);
    }

    $scope.deletes = function (arr) {
        userLoginService.deletes(arr, $scope.deletesCompleted, $scope.deletesError);
    }
    $scope.deletesCompleted = function (response, status) {
        $route.reload();
    }
    $scope.deletesError = function (response) {
        alert(response.Message);
    }

    $scope.changePassword = function () {
        var obj = {
            PasswordOld: $scope.PasswordOld,
            Password: $scope.Password,
            RePassword: $scope.RePassword,
        };
        userLoginService.changePassword(obj, $scope.changePasswordCompleted, $scope.updateError);
    }
    $scope.changePasswordCompleted = function (response, status) {
        $scope.IsSuccess = response.IsSuccess;
        $scope.IsError = response.IsError;
        $scope.InValid = response.InValid;
    }
});
