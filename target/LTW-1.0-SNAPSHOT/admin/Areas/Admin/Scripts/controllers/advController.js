app.controller('advController', function ($scope, $rootScope, $route, $routeParams, $location, advService, alertsService) {
    $scope.initializeController = function () {

        var advID = ($routeParams.id || "");
        $rootScope.applicationModule = "Advs";
        $rootScope.alerts = [];

        $scope.initObject();
        advService.getAdvType($scope.getAdvTypeCompleted, $scope.getError);

        if (advID > 0) {
            var obj = new Object();
            obj.Id = advID;
            advService.getAdv(obj, $scope.getEditCompleted, $scope.getError);
        }
        else {
            advService.getIndex($scope.getIndexCompleted, $scope.getError);
        }
    }

    $scope.initObject = function () {
        $scope.Id = 0;
        $scope.AdvType = 1;
        $scope.Name = "";
        $scope.Index = 0;
        $scope.Image = "";
        $scope.Link = "";
        $scope.IsVideo = false;
        $scope.MetaTitle = "";
        $scope.MetaKeyword = "";
        $scope.MetaDescription = "";
        $scope.Inactive = false;
    }
    $scope.createObject = function () {
        var Adv = {
            Id: $scope.Id,
            AdvType: $scope.AdvType,
            Name: $scope.Name,
            Index: $scope.Index,
            Image: $scope.Image,
            Link: $scope.Link,
            IsVideo: $scope.IsVideo,
            MetaTitle: $scope.MetaTitle,
            MetaKeyword: $scope.MetaKeyword,
            MetaDescription: $scope.MetaDescription,
            Inactive: $scope.Inactive
        };
        return Adv;
    }
    $scope.resetValues = function (index) {
        $scope.Id = 0;
        //$scope.AdvType = 0;
        $scope.Name = "";
        $scope.Index = index + 1;
        $scope.Image = "/Areas/Admin/Images/icon-upload.png";
        $scope.Link = "";
        $scope.IsVideo = false;
        $scope.MetaTitle = "";
        $scope.MetaKeyword = "";
        $scope.MetaDescription = "";
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
        $scope.AdvType = response.Data.AdvType;
        $scope.Name = response.Data.Name;
        $scope.Index = response.Data.Index;
        $scope.Image = response.Data.Image;
        $scope.Link = response.Data.Link;
        $scope.IsVideo = response.Data.IsVideo;
        $scope.MetaTitle = response.Data.MetaTitle;
        $scope.MetaKeyword = response.Data.MetaKeyword;
        $scope.MetaDescription = response.Data.MetaDescription;
        $scope.Inactive = response.Data.Inactive;
    }
    $scope.getAdvTypeCompleted = function (response) {
        $scope.AdvTypes = response.Records;
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
        var adv = $scope.createObject();
        advService.create(adv, $scope.createCompleted, $scope.createError);
    }
    $scope.createBack = function () {
        var adv = $scope.createObject();
        advService.create(adv, $scope.createBackCompleted, $scope.createError);
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
        $location.path("/adv");
    }
    $scope.createError = function (response) {
        $scope.IsSuccess = response.IsSuccess;
        $scope.IsError = response.IsError;
        $scope.InValid = response.InValid;
        $scope.Message = alertsService.FormatMessage(response.ReturnMessage);
    }

    $scope.update = function () {
        var adv = $scope.createObject();
        advService.update(adv, $scope.updateCompleted, $scope.updateError);
    }
    $scope.updateBack = function () {
        var adv = $scope.createObject();
        advService.update(adv, $scope.updateBackCompleted, $scope.updateError);
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
        $location.path("/adv");
    }
    $scope.updateError = function (response) {
        $scope.IsSuccess = response.IsSuccess;
        $scope.IsError = response.IsError;
        $scope.InValid = response.InValid;
        $scope.Message = alertsService.FormatMessage(response.ReturnMessage);
    }

    $scope.deletes = function (arr) {
        advService.deletes(arr, $scope.deletesCompleted, $scope.deletesError);
    }
    $scope.deletesCompleted = function (response, status) {
        $route.reload();
    }
    $scope.deletesError = function (response) {
        alert(response.Message);
    }
});
