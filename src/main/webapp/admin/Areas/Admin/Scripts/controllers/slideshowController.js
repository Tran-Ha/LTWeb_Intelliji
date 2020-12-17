app.controller('slideshowController', function ($scope, $rootScope, $route, $routeParams, $location, slideshowService, alertsService) {
    $scope.initializeController = function () {

        var slideshowID = ($routeParams.id || "");
        $rootScope.applicationModule = "Slideshows";
        $rootScope.alerts = [];

        $scope.initObject();
        if (slideshowID > 0) {
            var obj = new Object();
            obj.Id = slideshowID;
            slideshowService.getSlideshow(obj, $scope.getEditCompleted, $scope.getError);
        }
        else {
            slideshowService.getIndex($scope.getIndexCompleted, $scope.getError);
        }

    }

    $scope.initObject = function () {
        $scope.Id = 0;
        $scope.Image = "/Areas/Admin/Images/icon-upload.png";
        $scope.Index = 0;
        $scope.Name = "";
        $scope.ShopId = 0;
        $scope.Link = "";
        $scope.Inactive = false;
    }
    $scope.createObject = function () {
        var Slideshow = {
            Id: $scope.Id,
            Image: $scope.Image,
            Index: $scope.Index,
            Name: $scope.Name,
            ShopId: $scope.ShopId,
            Timestamp: $scope.Timestamp,
            Link: $scope.Link,
            Inactive: $scope.Inactive,
        };
        return Slideshow;
    }
    $scope.resetValues = function (index) {
        $scope.Id = 0;
        $scope.Image = "/Areas/Admin/Images/icon-upload.png";
        $scope.Index = index + 1;
        $scope.Name = "";
        $scope.ShopId = 0;
        $scope.Link = "";
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
        $scope.Image = response.Data.Image;
        $scope.Index = response.Data.Index;
        $scope.Name = response.Data.Name;
        $scope.ShopId = response.Data.ShopId;
        $scope.Timestamp = response.Data.Timestamp;
        $scope.Link = response.Data.Link;
        $scope.Inactive = response.Data.Inactive;
    }
    $scope.getDataParentCompleted = function (response) {
        $scope.Parents = response.Records;
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
        var slideshow = $scope.createObject();
        slideshowService.create(slideshow, $scope.createCompleted, $scope.createError);
    }
    $scope.createBack = function () {
        var slideshow = $scope.createObject();
        slideshowService.create(slideshow, $scope.createBackCompleted, $scope.createError);
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
        $location.path("/slideshow");
    }
    $scope.createError = function (response) {
        $scope.IsSuccess = response.IsSuccess;
        $scope.IsError = response.IsError;
        $scope.InValid = response.InValid;
        $scope.Message = alertsService.FormatMessage(response.ReturnMessage);
    }

    $scope.update = function () {
        var slideshow = $scope.createObject();
        slideshowService.update(slideshow, $scope.updateCompleted, $scope.updateError);
    }
    $scope.updateBack = function () {
        var slideshow = $scope.createObject();
        slideshowService.update(slideshow, $scope.updateBackCompleted, $scope.updateError);
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
        $location.path("/slideshow");
    }
    $scope.updateError = function (response) {
        $scope.IsSuccess = response.IsSuccess;
        $scope.IsError = response.IsError;
        $scope.InValid = response.InValid;
        $scope.Message = alertsService.FormatMessage(response.ReturnMessage);
    }

    $scope.deletes = function (arr) {
        slideshowService.deletes(arr, $scope.deletesCompleted, $scope.deletesError);
    }
    $scope.deletesCompleted = function (response, status) {
        $route.reload();
    }
    $scope.deletesError = function (response) {
        alert(response.Message);
    }
});
