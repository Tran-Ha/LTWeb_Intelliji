app.controller('aboutController', function ($scope, $rootScope, $route, $routeParams, $location, $filter, aboutService, alertsService) {
    $scope.initializeController = function () {

        var aboutID = ($routeParams.id || "");
        $rootScope.applicationModule = "Abouts";
        $rootScope.alerts = [];

        $scope.initObject();
        if (aboutID > 0) {
            var obj = new Object();
            obj.Id = aboutID;
            aboutService.getAbout(obj, $scope.getEditCompleted, $scope.getError);
        }
        else {
            aboutService.getIndex($scope.getIndexCompleted, $scope.getError);
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
        $scope.Code = "";
        $scope.Index = 0;
        $scope.Image = "/Areas/Admin/Images/icon-upload.png";
        $scope.Summary = "";
        $scope.Content = "";
        $scope.CreatedDate = new Date();
        $scope.UpdatedDate = new Date();
        $scope.MetaTitle = "";
        $scope.MetaKeyword = "";
        $scope.MetaDescription = "";
        $scope.Inactive = false;
    }
    $scope.createObject = function () {
        var About = {
            Id: $scope.Id,
            Name: $scope.Name,
            Code: $scope.Code,
            Index: $scope.Index,
            Image: $scope.Image,
            Summary: $scope.Summary,
            Content: $scope.Content,
            CreatedDate: $scope.CreatedDate,
            UpdatedDate: $scope.UpdatedDate,
            MetaTitle: $scope.MetaTitle,
            MetaKeyword: $scope.MetaKeyword,
            MetaDescription: $scope.MetaDescription,
            Inactive: $scope.Inactive,
        };
        return About;
    }
    $scope.resetValues = function (index) {
        $scope.Id = 0;
        $scope.Name = "";
        $scope.Code = "";
        $scope.Index = index + 1;
        $scope.Image = "/Areas/Admin/Images/icon-upload.png";
        $scope.Summary = "";
        $scope.Content = "";
        $scope.CreatedDate = new Date();
        $scope.UpdatedDate = new Date();
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
        $scope.Name = response.Data.Name;
        $scope.Code = response.Data.Code;
        $scope.Index = response.Data.Index;
        $scope.Image = response.Data.Image;
        $scope.Summary = response.Data.Summary;
        $scope.Content = response.Data.Content;
        $scope.CreatedDate = response.Data.CreatedDate;
        $scope.UpdatedDate = response.Data.UpdatedDate;
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
        var about = $scope.createObject();
        aboutService.create(about, $scope.createCompleted, $scope.createError);
    }
    $scope.createBack = function () {
        var about = $scope.createObject();
        aboutService.create(about, $scope.createBackCompleted, $scope.createError);
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
        $location.path("/about");
    }
    $scope.createError = function (response) {
        $scope.IsSuccess = response.IsSuccess;
        $scope.IsError = response.IsError;
        $scope.InValid = response.InValid;
        $scope.Message = alertsService.FormatMessage(response.ReturnMessage);
    }

    $scope.update = function () {
        var about = $scope.createObject();
        aboutService.update(about, $scope.updateCompleted, $scope.updateError);
    }
    $scope.updateBack = function () {
        var about = $scope.createObject();
        aboutService.update(about, $scope.updateBackCompleted, $scope.updateError);
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
        $location.path("/about");
    }
    $scope.updateError = function (response) {
        $scope.IsSuccess = response.IsSuccess;
        $scope.IsError = response.IsError;
        $scope.InValid = response.InValid;
        $scope.Message = alertsService.FormatMessage(response.ReturnMessage);
    }

    $scope.deletes = function (arr) {
        aboutService.deletes(arr, $scope.deletesCompleted, $scope.deletesError);
    }
    $scope.deletesCompleted = function (response, status) {
        $route.reload();
    }
    $scope.deletesError = function (response) {
        alert(response.Message);
    }
});
