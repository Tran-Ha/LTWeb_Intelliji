app.controller('themeController', function ($scope, $rootScope, $routeParams, $location, themeService, alertsService) {
    $scope.initializeController = function (shopId) {

        var themeID = ($routeParams.id || "");
        $rootScope.applicationModule = "themes";
        $rootScope.alerts = [];
        $scope.ShopId = shopId;
        $scope.initObject();

        $scope.getLogCss();
    }
    $scope.editorOptions = {
        lineNumbers: true,
        matchBrackets: true,
        mode: "text/css",
        extraKeys: { "Ctrl-Space": "autocomplete" },
        //onGutterClick: foldFunc,
        //extraKeys: { "Ctrl-Q": function (cm) { foldFunc(cm, cm.getCursor().line); } }
    };
    $scope.initObject = function () {
        $scope.FileType = 1;
        $scope.SelectVersion = false;
    }
    $scope.toggleSelectVersion = function () {
        $scope.SelectVersion = !$scope.SelectVersion;
    }
    $scope.changeFileType = function (fileType) {
        $scope.FileType = fileType;
        $scope.getLogCss();
    }
    $scope.changeLogCss = function (id) {
        var item = $scope.LogCss.filter(function (o) { return o.Id == id; })[0];
        if (item != null) {
            $scope.Id = item.Id;
            $scope.ContentNew = item.ContentNew;
            $scope.ContentOld = item.ContentNew;
        }
    }

    $scope.getLogCss = function () {
        var obj = {
            fileType: $scope.FileType,
        };
        themeService.getLogCss(obj, $scope.getLogCssCompleted, $scope.getError);
    }
    $scope.getLogCssCompleted = function (response) {
        $scope.LogCss = response.Records;
        $scope.Id = response.Data.Id;
        $scope.ContentNew = response.Data.ContentNew;
        $scope.ContentOld = response.Data.ContentNew;
    }

    $scope.getError = function (response) {
    }
    $scope.clearValidationErrors = function () {
    }


    $scope.updateTheme = function () {
        var obj = {
            FileTypeId: $scope.FileType,
            ShopId: $scope.ShopId,
            ContentNew: $scope.ContentNew,
            ContentOld: $scope.ContentOld,
        };
        themeService.updateTheme(obj, $scope.updateThemeCompleted, $scope.updateError);
    }
    $scope.updateThemeCompleted = function (response, status) {
        $scope.IsSuccess = true;
        $scope.IsError = false;
        $scope.getLogCss();
    }
    $scope.updateError = function (response) {
        $scope.IsSuccess = false
        $scope.IsError = true
        $scope.Message = response.Message;
    }

});