app.controller('exchangePriceController', function ($scope, $rootScope, $route, $routeParams, $location, exchangePriceService, alertsService) {
    $scope.initializeController = function () {

        var exchangePriceID = ($routeParams.id || "");
        $rootScope.applicationModule = "exchangePrices";
        $rootScope.alerts = [];

        $scope.initObject();

        if (exchangePriceID > 0) {
            var obj = new Object();
            obj.Id = exchangePriceID;
            exchangePriceService.getexchangePrice(obj, $scope.getEditCompleted, $scope.getError);
        }
        else {
            exchangePriceService.getIndex($scope.getIndexCompleted, $scope.getError);
        }

    }

    $scope.initObject = function () {
        $scope.Id = 0;
        $scope.Code = "";
        $scope.Name = "";
        $scope.Index = 0;
        $scope.FromPrice = 0;
        $scope.ToPrice = 0;
        $scope.Inactive = false;
    }
    $scope.createObject = function () {
        var exchangePrice = {
            Id: $scope.Id,
            Code: $scope.Code,
            Name: $scope.Name,
            Index: $scope.Index,
            FromPrice: $scope.FromPrice,
            ToPrice: $scope.ToPrice,
            Inactive: $scope.Inactive
        };
        return exchangePrice;
    }
    $scope.resetValues = function (index) {
        $scope.Id = 0;
        $scope.Code = "";
        $scope.Name = "";
        $scope.Index = index + 1;
        $scope.FromPrice = 0;
        $scope.ToPrice = 0;
        $scope.Inactive = false;
    }

    $scope.getEditCompleted = function (response) {
        $scope.Id = response.Data.Id;
        $scope.Code = response.Data.Code;
        $scope.Name = response.Data.Name;
        $scope.Index = response.Data.Index;
        $scope.FromPrice = response.Data.FromPrice;
        $scope.ToPrice = response.Data.ToPrice;
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
        var exchangePrice = $scope.createObject();
        exchangePriceService.create(exchangePrice, $scope.createCompleted, $scope.createError);
    }
    $scope.createBack = function () {
        var exchangePrice = $scope.createObject();
        exchangePriceService.create(exchangePrice, $scope.createBackCompleted, $scope.createError);
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
        $location.path("/exchangeprice");
    }
    $scope.createError = function (response) {
        $scope.IsSuccess = response.IsSuccess;
        $scope.IsError = response.IsError;
        $scope.InValid = response.InValid;
        $scope.Message = alertsService.FormatMessage(response.ReturnMessage);
    }

    $scope.update = function () {
        var exchangePrice = $scope.createObject();
        exchangePriceService.update(exchangePrice, $scope.updateCompleted, $scope.updateError);
    }
    $scope.updateBack = function () {
        var exchangePrice = $scope.createObject();
        exchangePriceService.update(exchangePrice, $scope.updateBackCompleted, $scope.updateError);
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
        $location.path("/exchangeprice");
    }
    $scope.updateError = function (response) {
        $scope.IsSuccess = response.IsSuccess;
        $scope.IsError = response.IsError;
        $scope.InValid = response.InValid;
        $scope.Message = alertsService.FormatMessage(response.ReturnMessage);
    }

    $scope.deletes = function (arr) {
        exchangePriceService.deletes(arr, $scope.deletesCompleted, $scope.deletesError);
    }
    $scope.deletesCompleted = function (response, status) {
        $route.reload();
    }
    $scope.deletesError = function (response) {
        alert(response.Message);
    }
});
