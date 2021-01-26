app.controller('paymentMethodController', function ($scope, $rootScope, $route, $routeParams, $location, paymentMethodService, alertsService) {
    $scope.initializeController = function () {

        var paymentMethodID = ($routeParams.id || "");
        $rootScope.applicationModule = "PaymentMethods";
        $rootScope.alerts = [];

        $scope.initObject();
        if (paymentMethodID > 0) {
            var obj = new Object();
            obj.Id = paymentMethodID;
            paymentMethodService.getPaymentMethod(obj, $scope.getEditCompleted, $scope.getError);
        }
        else {
            paymentMethodService.getIndex($scope.getIndexCompleted, $scope.getError);
        }
    }
    $scope.editorOptions = {
        height: 200,
        toolbar: 'full',
        toolbar_full: [
            { name: 'basicstyles', items: ['Bold', 'Italic', 'Strike', 'Underline'] },
            { name: 'paragraph', items: ['BulletedList', 'NumberedList', 'Blockquote'] },
            { name: 'editing', items: ['JustifyLeft', 'JustifyCenter', 'JustifyRight', 'JustifyBlock', 'Outdent', 'Indent', 'HorizontalRule'] },
            { name: 'links', items: ['Link', 'Unlink', 'Anchor'] },
            { name: 'tools', items: ['SpellChecker', 'Maximize'] },
            { name: 'styles', items: ['Format', 'Font', 'FontSize', 'TextColor', 'BackgroundColor'] },
            { name: 'insert', items: ['Image', 'Youtube', 'oembed', 'Table', 'MediaEmbed', 'Preview', 'Source'] }, '/',
        ]
    };

    $scope.initObject = function () {
        $scope.Id = 0;
        $scope.Name = "";
        $scope.Index = 0;
        $scope.Summary = "";
        $scope.Inactive = false;
    }
    $scope.createObject = function () {
        var PaymentMethod = {
            Id: $scope.Id,
            Name: $scope.Name,
            Index: $scope.Index,
            Summary: $scope.Summary,
            Inactive: $scope.Inactive
        };
        return PaymentMethod;
    }
    $scope.resetValues = function (index) {
        $scope.Id = 0;
        $scope.Name = "";
        $scope.Index = index + 1;
        $scope.Summary = "";
        $scope.Inactive = false;
    }

    $scope.getEditCompleted = function (response) {
        $scope.Id = response.Data.Id;
        $scope.Name = response.Data.Name;
        $scope.Index = response.Data.Index;
        $scope.Summary = response.Data.Summary;
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
        var paymentMethod = $scope.createObject();
        paymentMethodService.create(paymentMethod, $scope.createCompleted, $scope.createError);
    }
    $scope.createBack = function () {
        var paymentMethod = $scope.createObject();
        paymentMethodService.create(paymentMethod, $scope.createBackCompleted, $scope.createError);
    }
    $scope.createCompleted = function (response, status) {
        $scope.IsSuccess = response.IsSuccess;
        $scope.IsError = response.IsError;
        $scope.InValid = response.InValid;
        $scope.resetValues(response.Index);
        $route.reload();
    }
    $scope.createBackCompleted = function (response, status) {
        $scope.IsSuccess = response.IsSuccess;
        $scope.IsError = response.IsError;
        $scope.InValid = response.InValid;
        $scope.resetValues(response.Index);
        $route.reload();
        $location.path("/paymentmethod");
    }
    $scope.createError = function (response) {
        $scope.IsSuccess = response.IsSuccess;
        $scope.IsError = response.IsError;
        $scope.InValid = response.InValid;
        $scope.Message = alertsService.FormatMessage(response.ReturnMessage);
    }

    $scope.update = function () {
        var paymentMethod = $scope.createObject();
        paymentMethodService.update(paymentMethod, $scope.updateCompleted, $scope.updateError);
    }
    $scope.updateBack = function () {
        var paymentMethod = $scope.createObject();
        paymentMethodService.update(paymentMethod, $scope.updateBackCompleted, $scope.updateError);
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
        $location.path("/paymentmethod");
    }
    $scope.updateError = function (response) {
        $scope.IsSuccess = response.IsSuccess;
        $scope.IsError = response.IsError;
        $scope.InValid = response.InValid;
        $scope.Message = alertsService.FormatMessage(response.ReturnMessage);
    }

    $scope.deletes = function (arr) {
        paymentMethodService.deletes(arr, $scope.deletesCompleted, $scope.deletesError);
    }
    $scope.deletesCompleted = function (response, status) {
        $route.reload();
    }
    $scope.deletesError = function (response) {
        alert(response.Message);
    }
});
