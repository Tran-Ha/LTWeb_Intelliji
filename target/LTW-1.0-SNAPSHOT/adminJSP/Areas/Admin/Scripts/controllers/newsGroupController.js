app.controller('newsGroupController', function ($scope, $rootScope, $route, $routeParams, $location, newsGroupService, alertsService) {
    $scope.initializeController = function () {

        var newsGroupID = ($routeParams.id || "");
        $rootScope.applicationModule = "newsGroups";
        $rootScope.alerts = [];

        $scope.initObject();
        newsGroupService.getDataParent($scope.getDataParentCompleted, $scope.getError);

        if (newsGroupID > 0) {
            var obj = new Object();
            obj.Id = newsGroupID;
            newsGroupService.getnewsGroup(obj, $scope.getEditCompleted, $scope.getError);
        }
        else {
            newsGroupService.getIndex($scope.getIndexCompleted, $scope.getError);
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
        $scope.ParentId = 0;
        $scope.Name = "";
        $scope.Index = 0;
        $scope.Icon = "";
        $scope.Image = "";
        $scope.MetaTitle = "";
        $scope.MetaKeyword = "";
        $scope.MetaDescription = "";
        $scope.Inactive = false;
    }
    $scope.createObject = function () {
        var newsGroup = {
            Id: $scope.Id,
            ParentId: $scope.ParentId,
            Code: $scope.Code,
            Name: $scope.Name,
            Index: $scope.Index,
            Icon: $scope.Icon,
            Image: $scope.Image,
            MetaTitle: $scope.MetaTitle,
            MetaKeyword: $scope.MetaKeyword,
            MetaDescription: $scope.MetaDescription,
            Inactive: $scope.Inactive
        };
        return newsGroup;
    }
    $scope.resetValues = function (index) {
        $scope.Id = 0;
        $scope.ParentId = 0;
        $scope.Name = "";
        $scope.Index = index + 1;
        $scope.Icon = "";
        $scope.Image = "/Areas/Admin/Images/icon-upload.png";
        $scope.MetaTitle = "";
        $scope.MetaKeyword = "";
        $scope.MetaDescription = "";
        $scope.Inactive = false;
    }

    $scope.getEditCompleted = function (response) {
        $scope.Id = response.Data.Id;
        $scope.ParentId = response.Data.ParentId;
        $scope.Name = response.Data.Name;
        $scope.Index = response.Data.Index;
        $scope.Icon = response.Data.Icon;
        $scope.Image = response.Data.Image;
        $scope.MetaTitle = response.Data.MetaTitle;
        $scope.MetaKeyword = response.Data.MetaKeyword;
        $scope.MetaDescription = response.Data.MetaDescription;
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
        var newsGroup = $scope.createObject();
        newsGroupService.create(newsGroup, $scope.createCompleted, $scope.createError);
    }
    $scope.createBack = function () {
        var newsGroup = $scope.createObject();
        newsGroupService.create(newsGroup, $scope.createBackCompleted, $scope.createError);
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
        $location.path("/newsgroup");
    }
    $scope.createError = function (response) {
        $scope.IsSuccess = response.IsSuccess;
        $scope.IsError = response.IsError;
        $scope.InValid = response.InValid;
        $scope.Message = alertsService.FormatMessage(response.ReturnMessage);
    }

    $scope.update = function () {
        var newsGroup = $scope.createObject();
        newsGroupService.update(newsGroup, $scope.updateCompleted, $scope.updateError);
    }
    $scope.updateBack = function () {
        var newsGroup = $scope.createObject();
        newsGroupService.update(newsGroup, $scope.updateBackCompleted, $scope.updateError);
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
        $location.path("/newsgroup");
    }
    $scope.updateError = function (response) {
        $scope.IsSuccess = response.IsSuccess;
        $scope.IsError = response.IsError;
        $scope.InValid = response.InValid;
        $scope.Message = alertsService.FormatMessage(response.ReturnMessage);
    }

    $scope.deletes = function (arr) {
        newsGroupService.deletes(arr, $scope.deletesCompleted, $scope.deletesError);
    }
    $scope.deletesCompleted = function (response, status) {
        $route.reload();
    }
    $scope.deletesError = function (response) {
        alert(response.Message);
    }
});
