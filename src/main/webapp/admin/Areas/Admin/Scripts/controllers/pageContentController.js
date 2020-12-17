app.controller('pageContentController', function ($scope, $rootScope, $route, $routeParams, $location, pageContentService, alertsService) {
    $scope.initializeController = function () {
        var pageContentID = ($routeParams.id || "");
        $rootScope.applicationModule = "pageContents";
        $rootScope.alerts = [];
        $scope.pageContentId = pageContentID;

        $scope.initObject();

        if (pageContentID > 0) {
            var obj = new Object();
            obj.Id = pageContentID;
            pageContentService.getPageContent(obj, $scope.getEditCompleted, $scope.getError);
        }

        pageContentService.getPageOptions($scope.getPageOptionsCompleted, $scope.getError);
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

    $scope.resetValues = function (index) {
        $scope.Id = 0;
        $scope.Name = "";
        $scope.Code = "";

        $scope.Content = "";

        $scope.MetaKeyword = "";
        $scope.MetaTitle = "";
        $scope.MetaDescription = "";
        $scope.Inactive = false;
    }
    $scope.initObject = function () {
        $scope.Id = 0;
        $scope.Name = "";
        $scope.Code = "";

        $scope.Content = "";

        $scope.MetaKeyword = "";
        $scope.MetaTitle = "";
        $scope.MetaDescription = "";
        $scope.Inactive = false;
    }
    $scope.createObject = function () {
        var pageContent = {
            Id: $scope.Id,
            PageOptionId: $scope.PageOptionId,
            Code: $scope.Code,
            Name: $scope.Name,
            Content: $scope.Content,
            MetaTitle: $scope.MetaTitle,
            MetaKeyword: $scope.MetaKeyword,
            MetaDescription: $scope.MetaDescription,
            Inactive: $scope.Inactive,
        };
        return pageContent;
    }

    $scope.getEditCompleted = function (response) {
        $scope.Id = response.Data.Id;
        $scope.PageOptionId = response.Data.PageOptionId;
        $scope.Name = response.Data.Name;
        $scope.Code = response.Data.Code;
        $scope.Content = response.Data.Content;
        $scope.MetaKeyword = response.Data.MetaKeyword;
        $scope.MetaTitle = response.Data.MetaTitle;
        $scope.MetaDescription = response.Data.MetaDescription;
        $scope.Inactive = response.Data.Inactive;
        $scope.getPageUrl();
    }
    $scope.getPageOptionsCompleted = function (response) {
        if (response.Records.length > 0 && $scope.pageContentId <= 0)
            $scope.PageOptionId = response.Records[0].Id;

        $scope.PageOptions = response.Records;
    }
    $scope.getError = function (response) {
    }
    $scope.clearValidationErrors = function () {
    }

    $scope.create = function () {
        var pageContent = $scope.createObject();
        pageContentService.create(pageContent, $scope.createCompleted, $scope.createError);
    }
    $scope.createBack = function () {
        var pageContent = $scope.createObject();
        pageContentService.create(pageContent, $scope.createBackCompleted, $scope.createError);
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
        $location.path("/pagecontent");
    }
    $scope.createError = function (response) {
        $scope.IsSuccess = response.IsSuccess;
        $scope.IsError = response.IsError;
        $scope.InValid = response.InValid;
        $scope.Message = alertsService.FormatMessage(response.ReturnMessage);
    }

    $scope.update = function () {
        var pageContent = $scope.createObject();
        pageContentService.update(pageContent, $scope.updateCompleted, $scope.updateError);
    }
    $scope.updateBack = function () {
        var pageContent = $scope.createObject();
        pageContentService.update(pageContent, $scope.updateBackCompleted, $scope.updateError);
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
        $location.path("/pagecontent");
    }
    $scope.updateError = function (response) {
        $scope.IsSuccess = response.IsSuccess;
        $scope.IsError = response.IsError;
        $scope.InValid = response.InValid;
        $scope.Message = alertsService.FormatMessage(response.ReturnMessage);
    }
    $scope.getPageUrl = function () {
        var pageContent = $scope.createObject();
        pageContentService.getPageUrl(pageContent, $scope.getPageUrlCompleted, $scope.getError);
    }
    $scope.getPageUrlCompleted = function (response) {
        $scope.Url = response.Data.Url;
    }
    $scope.deletes = function (arr) {
        pageContentService.deletes(arr, $scope.deletesCompleted, $scope.deletesError);
    }
    $scope.deletesCompleted = function (response, status) {
        $route.reload();
    }
    $scope.deletesError = function (response) {
        alert(response.Message);
    }
});