app.controller('newsLetterController', function ($scope, $rootScope, $route, $routeParams, $location, $filter, newsLetterService, alertsService) {
    $scope.initializeController = function () {

        var newsLetterID = ($routeParams.id || "");
        $rootScope.applicationModule = "NewsLetters";
        $rootScope.alerts = [];

        $scope.initObject();
        if (newsLetterID > 0) {
            var obj = new Object();
            obj.Id = newsLetterID;
            newsLetterService.getNewsLetter(obj, $scope.getEditCompleted, $scope.getError);
        }
    }
    $scope.initObject = function () {
    }
    $scope.createObject = function () {
    }
    $scope.resetValues = function (index) {
    }

    $scope.getEditCompleted = function (response) {
        $scope.Id = response.Data.Id;
        $scope.ShopId = response.Data.ShopId;
        $scope.Email = response.Data.Email;
        $scope.FullName = response.Data.FullName;
        $scope.Inactive = response.Data.Inactive;
        $scope.Phone = response.Data.Phone;
        $scope.RegisterDate = $filter('date')(response.Data.RegisterDate, 'd/MM/yyyy HH:mm');
        $scope.StopDate = $filter('date')(response.Data.StopDate, 'd/MM/yyyy HH:mm');
    }

    $scope.getError = function (response) {
        $scope.Message = response.Message;
    }
    $scope.clearValidationErrors = function () {
    }

    $scope.deletes = function (arr) {
        newsLetterService.deletes(arr, $scope.deletesCompleted, $scope.deletesError);
    }
    $scope.deletesCompleted = function (response, status) {
        $route.reload();
    }
    $scope.deletesError = function (response) {
        alert(response.Message);
    }
});
