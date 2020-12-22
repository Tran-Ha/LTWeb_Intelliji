app.controller('pageController', function ($scope, $rootScope, $route, $routeParams, $location, pageService, alertsService) {
    $scope.initializeController = function () {

        var pageID = ($routeParams.id || "");
        $rootScope.applicationModule = "pages";
        $rootScope.alerts = [];
        $scope.PageId = pageID;

        $scope.initObject();

        if (pageID > 0) {
            var obj = new Object();
            obj.Id = pageID;
            pageService.getPage(obj, $scope.getEditCompleted, $scope.getError);
        }
    }

    $scope.resetValues = function (index) {
        $scope.Id = 0;
        $scope.MetaKeyword = "";
        $scope.MetaTitle = "";
        $scope.MetaDescription = "";
        $scope.IsFull = false;
    }
    $scope.initObject = function () {
        $scope.Id = 0;
        $scope.MetaKeyword = "";
        $scope.MetaTitle = "";
        $scope.MetaDescription = "";
        $scope.IsFull = false;
    }
    $scope.createObject = function () {
        var page = {
            PageId: $scope.PageId,
            Name: $scope.Name,

            MetaTitle: $scope.MetaTitle,
            MetaKeyword: $scope.MetaKeyword,
            MetaDescription: $scope.MetaDescription,
            IsFull: $scope.IsFull,
        };
        return page;
    }

    $scope.getEditCompleted = function (response) {
        $scope.Id = response.Data.Id;
        $scope.PageId = response.Data.PageId;
        $scope.Name = response.Data.Name;
        $scope.Code = response.Data.Code;
        $scope.Index = response.Data.Index;


        $scope.MetaKeyword = response.Data.MetaKeyword;
        $scope.MetaTitle = response.Data.MetaTitle;
        $scope.MetaDescription = response.Data.MetaDescription;
        $scope.IsFull = response.Data.IsFull;
    }
    $scope.getError = function (response) {
    }
    $scope.clearValidationErrors = function () {
    }

    $scope.update = function () {
        var page = $scope.createObject();
        pageService.update(page, $scope.updateCompleted, $scope.updateError);
    }
    $scope.updateBack = function () {
        var page = $scope.createObject();
        pageService.update(page, $scope.updateBackCompleted, $scope.updateError);
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
        $location.path("/page");
    }
    $scope.updateError = function (response) {
        $scope.IsSuccess = response.IsSuccess;
        $scope.IsError = response.IsError;
        $scope.InValid = response.InValid;
        $scope.Message = alertsService.FormatMessage(response.ReturnMessage);
    }

    $scope.deletes = function (arr) {
        pageService.deletes(arr, $scope.deletesCompleted, $scope.deletesError);
    }
    $scope.deletesCompleted = function (response, status) {
        $route.reload();
    }
    $scope.deletesError = function (response) {
        alert(response.Message);
    }
});