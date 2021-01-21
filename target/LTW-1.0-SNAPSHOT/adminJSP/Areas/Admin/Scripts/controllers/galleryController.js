app.controller('galleryController', function ($scope, $rootScope, $route, $routeParams, $location, galleryService, alertsService) {
    $scope.initializeController = function () {

        var galleryID = ($routeParams.id || "");
        $rootScope.applicationModule = "gallerys";
        $rootScope.alerts = [];

        $scope.initObject();

        if (galleryID > 0) {
            var obj = new Object();
            obj.Id = galleryID;
            galleryService.getGallery(obj, $scope.getEditCompleted, $scope.getError);
        }
        else {
            galleryService.getIndex($scope.getIndexCompleted, $scope.getError);
        }

        galleryService.getGalleryGroups($scope.getGalleryGroups, $scope.getError);
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
    $scope.dragStartImage = function (e, ui) {
        ui.item.data('start', ui.item.index());
    }
    $scope.dragEndImage = function (e, ui) {
        var start = ui.item.data('start'),
            end = ui.item.index();

        $scope.GalleryImages.splice(end, 0,
            $scope.GalleryImages.splice(start, 1)[0]);

        $scope.$apply();
    }
    var sortableImage = $('.sortable-image').sortable({
        start: $scope.dragStartImage,
        update: $scope.dragEndImage
    });

    $scope.addGalleryImage = function (item) {
        $scope.GalleryImages.push(item);
    }
    $scope.addImageFromURL = function () {
        var obj = {
            Image: $scope.ImgURL,
        };
        $scope.GalleryImages.push(obj);
        $('#modalImgURL').modal('toggle');
    }
    $scope.deleteGalleryImage = function (idx) {
        var item = $scope.GalleryImages[idx];
        $scope.GalleryImages.splice(idx, 1);
        //API.DeletePerson({ id: person_to_delete.id }, function (success) {
        //});
    };

    $scope.resetValues = function (model) {
        $scope.Id = 0;
        $scope.GalleryGroupId = 0;
        $scope.Name = "";
        $scope.Code = "";
        $scope.Index = 0;
        $scope.Image = "/Areas/Admin/Images/icon-upload.png";

        $scope.Summary = "";
        $scope.Content = "";
        $scope.IsHot = false;
        $scope.IsNew = false;

        $scope.MetaKeyword = "";
        $scope.MetaTitle = "";
        $scope.MetaDescription = "";
        $scope.Inactive = false;

        $scope.GalleryImages = new Array();
    }
    $scope.initObject = function () {
        $scope.Id = 0;
        $scope.GalleryGroupId = 0;
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

        $scope.GalleryImages = new Array();
    }
    $scope.createObject = function () {
        var gallery = {
            Id: $scope.Id,
            GalleryGroupId: $scope.GalleryGroupId,
            Code: $scope.Code,
            Name: $scope.Name,
            Index: $scope.Index,
            Image: $scope.Image,

            Summary: $scope.Summary,
            Content: $scope.Content,
            IsHot: $scope.IsHot,
            IsNew: $scope.IsNew,

            MetaTitle: $scope.MetaTitle,
            MetaKeyword: $scope.MetaKeyword,
            MetaDescription: $scope.MetaDescription,
            Inactive: $scope.Inactive,
            ModelShared_GalleryImage: $scope.GalleryImages,
        };
        return gallery;
    }

    $scope.getEditCompleted = function (response) {
        $scope.Id = response.Data.Id;
        $scope.GalleryGroupId = response.Data.GalleryGroupId;
        $scope.Name = response.Data.Name;
        $scope.Code = response.Data.Code;
        $scope.Index = response.Data.Index;
        $scope.Image = response.Data.Image;

        $scope.Summary = response.Data.Summary;
        $scope.Content = response.Data.Content;
        $scope.IsHot = response.Data.IsHot;
        $scope.IsNew = response.Data.IsNew;

        $scope.MetaKeyword = response.Data.MetaKeyword;
        $scope.MetaTitle = response.Data.MetaTitle;
        $scope.MetaDescription = response.Data.MetaDescription;
        $scope.Inactive = response.Data.Inactive;

        $scope.GalleryImages = response.Data.ModelShared_GalleryImage;
    }
    $scope.getGalleryGroups = function (response) {
        $scope.GalleryGroups = response.Records;
    }
    $scope.getIndexCompleted = function (response) {
        $scope.Index = response + 1;
    }
    $scope.getError = function (response) {
    }
    $scope.clearValidationErrors = function () {
    }

    $scope.create = function () {
        var gallery = $scope.createObject();
        galleryService.create(gallery, $scope.createCompleted, $scope.createError);
    }
    $scope.createBack = function () {
        var gallery = $scope.createObject();
        galleryService.create(gallery, $scope.createBackCompleted, $scope.createError);
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
        $location.path("/gallery");
    }
    $scope.createError = function (response) {
        $scope.IsSuccess = response.IsSuccess;
        $scope.IsError = response.IsError;
        $scope.InValid = response.InValid;
        $scope.Message = alertsService.FormatMessage(response.ReturnMessage);
    }

    $scope.update = function () {
        var gallery = $scope.createObject();
        galleryService.update(gallery, $scope.updateCompleted, $scope.updateError);
    }
    $scope.updateBack = function () {
        var gallery = $scope.createObject();
        galleryService.update(gallery, $scope.updateBackCompleted, $scope.updateError);
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
        $location.path("/gallery");
    }
    $scope.updateError = function (response) {
        $scope.IsSuccess = response.IsSuccess;
        $scope.IsError = response.IsError;
        $scope.InValid = response.InValid;
        $scope.Message = alertsService.FormatMessage(response.ReturnMessage);
    }
    
    $scope.deletes = function (arr) {
        galleryService.deletes(arr, $scope.deletesCompleted, $scope.deletesError);
    }
    $scope.deletesCompleted = function (response, status) {
        $route.reload();
    }
    $scope.deletesError = function (response) {
        alert(response.Message);
    }
});