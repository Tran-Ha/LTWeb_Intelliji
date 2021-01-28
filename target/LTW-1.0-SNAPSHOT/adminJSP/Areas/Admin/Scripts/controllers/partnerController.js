app.controller('partnerController', function ($scope, $rootScope, $route, $routeParams, $location, partnerService, alertsService) {
    $scope.initializeController = function () {

        var partnerID = ($routeParams.id || "");
        $rootScope.applicationModule = "Partners";
        $rootScope.alerts = [];

        $scope.initObject();

        if (partnerID > 0) {
            var obj = new Object();
            obj.Id = partnerID;
            partnerService.getPartner(obj, $scope.getEditCompleted, $scope.getError);
        }
        else {
            partnerService.getIndex($scope.getIndexCompleted, $scope.getError);
        }

    }

    $scope.initObject = function () {
        $scope.Id = 0;
        $scope.Name = "";
        $scope.Index = 0;
        $scope.Link = "";
        $scope.Image = "";
        $scope.Inactive = false;
    }
    $scope.createObject = function () {
        var Partner = {
            Id: $scope.Id,
            Name: $scope.Name,
            Index: $scope.Index,
            Link: $scope.Link,
            Logo: $scope.Image,
            Inactive: $scope.Inactive
        };
        return Partner;
    }
    $scope.resetValues = function (index) {
        $scope.Id = 0;
        $scope.Name = "";
        $scope.Index = index + 1;
        $scope.Link = "";
        $scope.Image = "/Areas/Admin/Images/icon-upload.png";
        $scope.Inactive = false;
    }

    $scope.addImage = function (image) {
        $scope.Image = image;
    }
    $scope.deleteImage = function () {
        $scope.Image = "/Areas/Admin/Images/icon-upload.png";
    };

    $scope.getEditCompleted = function (response) {
        $scope.Id = response.Data.Id;
        $scope.Name = response.Data.Name;
        $scope.Index = response.Data.Index;
        $scope.Link = response.Data.Link;
        $scope.Image = response.Data.Logo;
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
        var partner = $scope.createObject();
        partnerService.create(partner, $scope.createCompleted, $scope.createError);
    }
    $scope.createBack = function () {
        var partner = $scope.createObject();
        partnerService.create(partner, $scope.createBackCompleted, $scope.createError);
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
        $location.path("/partner");
    }
    $scope.createError = function (response) {
        $scope.IsSuccess = response.IsSuccess;
        $scope.IsError = response.IsError;
        $scope.InValid = response.InValid;
        $scope.Message = alertsService.FormatMessage(response.ReturnMessage);
    }

    $scope.update = function () {
        var partner = $scope.createObject();
        partnerService.update(partner, $scope.updateCompleted, $scope.updateError);
    }
    $scope.updateBack = function () {
        var partner = $scope.createObject();
        partnerService.update(partner, $scope.updateBackCompleted, $scope.updateError);
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
        $location.path("/partner");
    }
    $scope.updateError = function (response) {
        $scope.IsSuccess = response.IsSuccess;
        $scope.IsError = response.IsError;
        $scope.InValid = response.InValid;
        $scope.Message = alertsService.FormatMessage(response.ReturnMessage);
    }

    $scope.deletes = function (arr) {
        partnerService.deletes(arr, $scope.deletesCompleted, $scope.deletesError);
    }
    $scope.deletesCompleted = function (response, status) {
        $route.reload();
    }
    $scope.deletesError = function (response) {
        alert(response.Message);
    }
});
