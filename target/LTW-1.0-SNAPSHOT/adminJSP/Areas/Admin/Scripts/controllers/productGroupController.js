app.controller('productGroupController', function ($scope, $rootScope, $route, $routeParams, $location, productGroupService, alertsService) {
    $scope.initializeController = function () {

        var productGroupID = ($routeParams.id || "");
        $rootScope.applicationModule = "ProductGroups";
        $rootScope.alerts = [];

        $scope.initObject();
        productGroupService.getDataParent($scope.getDataParentCompleted, $scope.getError);

        if (productGroupID > 0) {
            var obj = new Object();
            obj.Id = productGroupID;
            productGroupService.getProductGroup(obj, $scope.getEditCompleted, $scope.getError);
        }
        else {
            productGroupService.getIndex($scope.getIndexCompleted, $scope.getError);
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
        $scope.IconImage = "";
        $scope.IsImage = false;
        $scope.Summary = "";
        $scope.MetaTitle = "";
        $scope.MetaKeyword = "";
        $scope.MetaDescription = "";
        $scope.Inactive = false;
        $scope.IsHot = false;
    }
    $scope.createObject = function () {
        var ProductGroup = {
            Id: $scope.Id,
            ParentId: $scope.ParentId,
            Code: $scope.Code,
            Name: $scope.Name,
            Index: $scope.Index,
            Icon: $scope.Icon,
            Image: $scope.Image,
            IconImage: $scope.IconImage,
            IsImage: $scope.IsImage,
            Summary: $scope.Summary,
            MetaTitle: $scope.MetaTitle,
            MetaKeyword: $scope.MetaKeyword,
            MetaDescription: $scope.MetaDescription,
            IsHot: $scope.IsHot,
            Inactive: $scope.Inactive
        };
        return ProductGroup;
    }
    $scope.resetValues = function (index) {
        $scope.Id = 0;
        $scope.ParentId = 0;
        $scope.Name = "";
        $scope.Index = index + 1;
        $scope.Icon = "";
        $scope.Image = "/Areas/Admin/Images/icon-upload.png";
        $scope.IconImage = "/Areas/Admin/Images/icon-upload.png";
        $scope.IsImage = false;
        $scope.Summary = "";
        $scope.MetaTitle = "";
        $scope.MetaKeyword = "";
        $scope.MetaDescription = "";
        $scope.IsHot = false;
        $scope.Inactive = false;
    }

    $scope.addImage = function (image) {
        $scope.Image = image;
    }
    $scope.deleteImage = function () {
        $scope.Image = "/Areas/Admin/Images/icon-upload.png";
    };
    $scope.addIconImage = function (image) {
        $scope.IconImage = image;
    }
    $scope.deleteIconImage = function () {
        $scope.IconImage = "/Areas/Admin/Images/icon-upload.png";
    };
    $scope.getEditCompleted = function (response) {
        $scope.Id = response.Data.Id;
        $scope.ParentId = response.Data.ParentId;
        $scope.Name = response.Data.Name;
        $scope.Index = response.Data.Index;
        $scope.Icon = response.Data.Icon;
        $scope.Image = response.Data.Image;
        $scope.IconImage = response.Data.IconImage;
        $scope.IsImage = response.Data.IsImage;
        $scope.Summary = response.Data.Summary;
        $scope.MetaTitle = response.Data.MetaTitle;
        $scope.MetaKeyword = response.Data.MetaKeyword;
        $scope.MetaDescription = response.Data.MetaDescription;
        $scope.IsHot = response.Data.IsHot;
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
        var productGroup = $scope.createObject();
        productGroupService.create(productGroup, $scope.createCompleted, $scope.createError);
    }
    $scope.createBack = function () {
        var productGroup = $scope.createObject();
        productGroupService.create(productGroup, $scope.createBackCompleted, $scope.createError);
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
        $location.path("/productgroup");
    }
    $scope.createError = function (response) {
        $scope.IsSuccess = response.IsSuccess;
        $scope.IsError = response.IsError;
        $scope.InValid = response.InValid;
        $scope.Message = alertsService.FormatMessage(response.ReturnMessage);
    }

    $scope.update = function () {
        var productGroup = $scope.createObject();
        productGroupService.update(productGroup, $scope.updateCompleted, $scope.updateError);
    }
    $scope.updateBack = function () {
        var productGroup = $scope.createObject();
        productGroupService.update(productGroup, $scope.updateBackCompleted, $scope.updateError);
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
        $location.path("/productgroup");
    }
    $scope.updateError = function (response) {
        $scope.IsSuccess = response.IsSuccess;
        $scope.IsError = response.IsError;
        $scope.InValid = response.InValid;
        $scope.Message = alertsService.FormatMessage(response.ReturnMessage);
    }

    $scope.deletes = function (arr) {
        productGroupService.deletes(arr, $scope.deletesCompleted, $scope.deletesError);
    }
    $scope.deletesCompleted = function (response, status) {
        $route.reload();
    }
    $scope.deletesError = function (response) {
        alert(response.Message);
    }
});
