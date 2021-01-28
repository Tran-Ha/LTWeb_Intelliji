app.controller('supportController', function ($scope, $rootScope, $route, $routeParams, $location, supportService, alertsService) {
    $scope.initializeController = function () {

        var supportID = ($routeParams.id || "");
        $rootScope.applicationModule = "Supports";
        $rootScope.alerts = [];

        $scope.initObject();
        if (supportID > 0) {
            var obj = new Object();
            obj.Id = supportID;
            supportService.getSupport(obj, $scope.getEditCompleted, $scope.getError);
        }
        else {
            supportService.getIndex($scope.getIndexCompleted, $scope.getError);
        }

    }

    $scope.initObject = function () {
        $scope.Id = 0;
        $scope.ShopId = 0;
        $scope.FullName = "";
        $scope.Position = "";
        $scope.Index = 0;
        $scope.Phone = "";
        $scope.Skype = "";
        $scope.Yahoo = "";
        $scope.Viber = "";
        $scope.Zalo = "";
        $scope.Facebook = "";
        $scope.Address = "";
        $scope.Company = "";
        $scope.Email = "";
        $scope.Phone1 = "";
        $scope.Avatar = "/Areas/Admin/Images/icon-upload.png";
        $scope.Inactive = false;
    }
    $scope.createObject = function () {
        var Support = {
            Id: $scope.Id,
            ShopId: $scope.ShopId,
            FullName: $scope.FullName,
            Position: $scope.Position,
            Index: $scope.Index,
            Phone: $scope.Phone,
            Skype: $scope.Skype,
            Yahoo: $scope.Yahoo,
            Viber: $scope.Viber,
            Zalo: $scope.Zalo,
            Facebook: $scope.Facebook,
            Address: $scope.Address,
            Company: $scope.Company,
            Email: $scope.Email,
            Phone1: $scope.Phone1,
            Avatar: $scope.Avatar,
            Inactive: $scope.Inactive,
        };
        return Support;
    }
    $scope.resetValues = function (index) {
        $scope.Id = 0;
        $scope.ShopId = 0;
        $scope.FullName = "";
        $scope.Position = "";
        $scope.Index = index + 1;
        $scope.Phone = "";
        $scope.Skype = "";
        $scope.Yahoo = "";
        $scope.Viber = "";
        $scope.Zalo = "";
        $scope.Facebook = "";
        $scope.Address = "";
        $scope.Company = "";
        $scope.Email = "";
        $scope.Phone1 = "";
        $scope.Avatar = "/Areas/Admin/Images/icon-upload.png";
        $scope.Inactive = false;
    }

    $scope.addImage = function (image) {
        $scope.Avatar = image;
    }
    $scope.deleteImage = function () {
        $scope.Avatar = "/Areas/Admin/Images/icon-upload.png";
    };

    $scope.getEditCompleted = function (response) {
        $scope.Id = response.Data.Id;
        $scope.ShopId = response.Data.ShopId;
        $scope.FullName = response.Data.FullName;
        $scope.Position = response.Data.Position;
        $scope.Index = response.Data.Index;
        $scope.Phone = response.Data.Phone;
        $scope.Skype = response.Data.Skype;
        $scope.Yahoo = response.Data.Yahoo;
        $scope.Viber = response.Data.Viber;
        $scope.Zalo = response.Data.Zalo;
        $scope.Facebook = response.Data.Facebook;
        $scope.Address = response.Data.Address;
        $scope.Company = response.Data.Company;
        $scope.Email = response.Data.Email;
        $scope.Phone1 = response.Data.Phone1;
        $scope.Avatar = response.Data.Avatar;
        $scope.Inactive = response.Data.Inactive;
    }
    $scope.getIndexCompleted = function (response) {
        $scope.Index = response + 1;
    }
    $scope.getError = function (response) {
        $scope.Message = response.Message;
    }
    $scope.clearValidationErrors = function () {
    }

    $scope.create = function () {
        var support = $scope.createObject();
        supportService.create(support, $scope.createCompleted, $scope.createError);
    }
    $scope.createBack = function () {
        var support = $scope.createObject();
        supportService.create(support, $scope.createBackCompleted, $scope.createError);
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
        $location.path("/support");
    }
    $scope.createError = function (response) {
        $scope.IsSuccess = response.IsSuccess;
        $scope.IsError = response.IsError;
        $scope.InValid = response.InValid;
        $scope.Message = alertsService.FormatMessage(response.ReturnMessage);
    }

    $scope.update = function () {
        var support = $scope.createObject();
        supportService.update(support, $scope.updateCompleted, $scope.updateError);
    }
    $scope.updateBack = function () {
        var support = $scope.createObject();
        supportService.update(support, $scope.updateBackCompleted, $scope.updateError);
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
        $location.path("/support");
    }
    $scope.updateError = function (response) {
        $scope.IsSuccess = response.IsSuccess;
        $scope.IsError = response.IsError;
        $scope.InValid = response.InValid;
        $scope.Message = alertsService.FormatMessage(response.ReturnMessage);
    }

    $scope.deletes = function (arr) {
        supportService.deletes(arr, $scope.deletesCompleted, $scope.deletesError);
    }
    $scope.deletesCompleted = function (response, status) {
        $route.reload();
    }
    $scope.deletesError = function (response) {
        alert(response.Message);
    }
});
