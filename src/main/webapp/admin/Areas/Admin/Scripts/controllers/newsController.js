app.controller('newsController', function ($scope, $rootScope, $route, $routeParams, $location, newsService, alertsService) {
    $scope.initializeController = function () {

        var newsID = ($routeParams.id || "");
        $rootScope.applicationModule = "newss";
        $rootScope.alerts = [];
        $scope.NewsId = newsID;

        $scope.initObject();

        if (newsID > 0) {
            var obj = new Object();
            obj.Id = newsID;
            newsService.getNews(obj, $scope.getEditCompleted, $scope.getError);
        }
        else {
            newsService.getIndex($scope.getIndexCompleted, $scope.getError);
        }

        newsService.getNewsGroups($scope.getNewsGroupsCompleted, $scope.getError);
        newsService.getAccounts($scope.getAccountsCompleted, $scope.getError);
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
        $scope.NewsGroupId = 0;
        $scope.Name = "";
        $scope.Code = "";
        $scope.Index = index + 1;
        $scope.Image = "/Areas/Admin/Images/icon-upload.png";

        $scope.Summary = "";
        $scope.Content = "";
        $scope.IsHot = false;
        $scope.IsNew = false;

        $scope.MetaKeyword = "";
        $scope.MetaTitle = "";
        $scope.MetaDescription = "";
        $scope.Inactive = false;
    }
    $scope.initObject = function () {
        $scope.Id = 0;
        $scope.NewsGroupId = 0;
        $scope.Name = "";
        $scope.Code = "";
        $scope.Index = 0;
        $scope.Image = "";

        $scope.Summary = "";
        $scope.Content = "";
        $scope.IsHot = false;
        $scope.IsNew = false;

        $scope.MetaKeyword = "";
        $scope.MetaTitle = "";
        $scope.MetaDescription = "";
        $scope.Inactive = false;
    }
    $scope.createObject = function () {
        var news = {
            Id: $scope.Id,
            NewsGroupId: $scope.NewsGroupId,
            Code: $scope.Code,
            Name: $scope.Name,
            Index: $scope.Index,
            Image: $scope.Image,
            CreatedById: $scope.CreatedById,

            Summary: $scope.Summary,
            Content: $scope.Content,
            IsHot: $scope.IsHot,
            IsNew: $scope.IsNew,

            MetaTitle: $scope.MetaTitle,
            MetaKeyword: $scope.MetaKeyword,
            MetaDescription: $scope.MetaDescription,
            Inactive: $scope.Inactive,
        };
        return news;
    }

    $scope.addImage = function (image) {
        $scope.Image = image;
    }
    $scope.addImageFromURL = function () {
        $scope.Image = $scope.ImgURL;
        $('#modalImgURL').modal('toggle');
    }
    $scope.deleteImage = function () {
        $scope.Image = "/Areas/Admin/Images/icon-upload.png";
    };

    $scope.getEditCompleted = function (response) {
        $scope.Id = response.Data.Id;
        $scope.NewsGroupId = response.Data.NewsGroupId;
        $scope.Name = response.Data.Name;
        $scope.Code = response.Data.Code;
        $scope.Index = response.Data.Index;
        $scope.Image = response.Data.Image;
        $scope.CreatedById = response.Data.CreatedById;

        $scope.Summary = response.Data.Summary;
        $scope.Content = response.Data.Content;
        $scope.IsHot = response.Data.IsHot;
        $scope.IsNew = response.Data.IsNew;

        $scope.MetaKeyword = response.Data.MetaKeyword;
        $scope.MetaTitle = response.Data.MetaTitle;
        $scope.MetaDescription = response.Data.MetaDescription;
        $scope.Inactive = response.Data.Inactive;
    }
    $scope.getNewsGroupsCompleted = function (response) {
        $scope.NewsGroups = response.Records;
    }
    $scope.getAccountsCompleted = function (response) {
        $scope.Accounts = response.Records;
        if (response.Records.length > 0 && $scope.NewsId > 0)
            $scope.CreatedById = response.Records[0].Id;
    }
    $scope.getIndexCompleted = function (response) {
        $scope.Index = response + 1;
    }
    $scope.getError = function (response) {
    }
    $scope.clearValidationErrors = function () {
    }

    $scope.create = function () {
        var news = $scope.createObject();
        newsService.create(news, $scope.createCompleted, $scope.createError);
    }
    $scope.createBack = function () {
        var news = $scope.createObject();
        newsService.create(news, $scope.createBackCompleted, $scope.createError);
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
        $location.path("/news");
    }
    $scope.createError = function (response) {
        $scope.IsSuccess = response.IsSuccess;
        $scope.IsError = response.IsError;
        $scope.InValid = response.InValid;
        $scope.Message = alertsService.FormatMessage(response.ReturnMessage);
    }

    $scope.update = function () {
        var news = $scope.createObject();
        newsService.update(news, $scope.updateCompleted, $scope.updateError);
    }
    $scope.updateBack = function () {
        var news = $scope.createObject();
        newsService.update(news, $scope.updateBackCompleted, $scope.updateError);
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
        $location.path("/news");
    }
    $scope.updateError = function (response) {
        $scope.IsSuccess = response.IsSuccess;
        $scope.IsError = response.IsError;
        $scope.InValid = response.InValid;
        $scope.Message = alertsService.FormatMessage(response.ReturnMessage);
    }

    $scope.deletes = function (arr) {
        newsService.deletes(arr, $scope.deletesCompleted, $scope.deletesError);
    }
    $scope.deletesCompleted = function (response, status) {
        $route.reload();
    }
    $scope.deletesError = function (response) {
        alert(response.Message);
    }
});