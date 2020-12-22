app.controller('projectController', function ($scope, $rootScope, $route, $routeParams, $location, projectService, alertsService) {
    $scope.initializeController = function () {

        var projectID = ($routeParams.id || "");
        $rootScope.applicationModule = "Projects";
        $rootScope.alerts = [];

        $scope.initObject();

        if (projectID > 0) {
            var obj = new Object();
            obj.Id = projectID;
            projectService.getProject(obj, $scope.getEditCompleted, $scope.getError);
        }
        else {
            projectService.getIndex($scope.getIndexCompleted, $scope.getError);
        }

        projectService.getProjectGroups($scope.getProjectGroups, $scope.getError);
        
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
    $scope.dragStartTab = function (e, ui) {
        ui.item.data('start', ui.item.index());
    }
    $scope.dragEndTab = function (e, ui) {
        var start = ui.item.data('start'),
            end = ui.item.index();

        $scope.ProjectTabs.splice(end, 0,
            $scope.ProjectTabs.splice(start, 1)[0]);

        $scope.$apply();
    }
    var sortableTab = $('.sortable-tab').sortable({
        start: $scope.dragStartTab,
        update: $scope.dragEndTab
    });

    $scope.dragStartImage = function (e, ui) {
        ui.item.data('start', ui.item.index());
    }
    $scope.dragEndImage = function (e, ui) {
        var start = ui.item.data('start'),
            end = ui.item.index();

        $scope.ProjectImages.splice(end, 0,
            $scope.ProjectImages.splice(start, 1)[0]);

        $scope.$apply();
    }
    var sortableImage = $('.sortable-image').sortable({
        start: $scope.dragStartImage,
        update: $scope.dragEndImage
    });

    $scope.resetValues = function (model) {
        $scope.Id = 0;
        $scope.ProjectGroupId = 0;
        $scope.Name = "";
        $scope.Code = "";
        $scope.Serial = "";
        $scope.BarCode = "";
        $scope.Index = 0;
        $scope.Image = "";
        $scope.Price = 0;
        $scope.PriceDiscount = 0;

        $scope.Summary = "";
        $scope.IsBest = false;
        $scope.IsHot = false;
        $scope.IsNew = false;
        $scope.IsPromotion = false;

        $scope.MetaKeyword = "";
        $scope.MetaTitle = "";
        $scope.MetaDescription = "";
        $scope.Inactive = false;

        $scope.ProjectImages = new Array();
    }
    $scope.initObject = function () {
        $scope.Id = 0;
        $scope.ProjectGroupId = 0;
        $scope.Name = "";
        $scope.Code = "";
        $scope.Serial = "";
        $scope.BarCode = "";
        $scope.Index = 0;
        $scope.Image = "";
        $scope.Price = 0;
        $scope.PriceDiscount = 0;
        $scope.MetaKeyword = "";

        $scope.Summary = "";
        $scope.IsBest = false;
        $scope.IsHot = false;
        $scope.IsNew = false;
        $scope.IsPromotion = false;

        $scope.MetaTitle = "";
        $scope.MetaDescription = "";
        $scope.Inactive = false;

        $scope.ProjectImages = new Array();
        $scope.ProjectTabs = new Array();
    }
    $scope.createObject = function () {
        var Project = {
            Id: $scope.Id,
            ProjectGroupId: $scope.ProjectGroupId,
            Code: $scope.Code,
            Serial: $scope.Serial,
            BarCode: $scope.BarCode,
            Name: $scope.Name,
            Index: $scope.Index,
            Image: $scope.Image,
            Price: $scope.Price,
            PriceDiscount: $scope.PriceDiscount,

            Summary: $scope.Summary,
            IsBest: $scope.IsBest,
            IsHot: $scope.IsHot,
            IsNew: $scope.IsNew,
            IsPromotion: $scope.IsPromotion,

            MetaTitle: $scope.MetaTitle,
            MetaKeyword: $scope.MetaKeyword,
            MetaDescription: $scope.MetaDescription,
            Inactive: $scope.Inactive,
            ModelShared_ProjectImage: $scope.ProjectImages,
            ModelShared_ProjectTab: $scope.ProjectTabs,
        };
        return Project;
    }

    $scope.addProjectImage = function (item) {
        $scope.ProjectImages.push(item);
    }
    $scope.addImageFromURL = function () {
        var obj = {
            Image: $scope.ImgURL,
        };
        $scope.ProjectImages.push(obj);
        $('#modalImgURL').modal('toggle');
    }
    $scope.deleteProjectImage = function (idx) {
        var item = $scope.ProjectImages[idx];
        $scope.ProjectImages.splice(idx, 1);
        //API.DeletePerson({ id: person_to_delete.id }, function (success) {
        //});
    };
    $scope.addProjectTab = function (item) {
        $scope.ProjectTabs.push(item);
    }
    $scope.deleteProjectTab = function (idx) {
        console.log(idx);
        var item = $scope.ProjectTabs[idx];
        $scope.ProjectTabs.splice(idx, 1);
        //API.DeletePerson({ id: person_to_delete.id }, function (success) {
        //});
    };

    $scope.getEditCompleted = function (response) {
        $scope.Id = response.Data.Id;
        $scope.ProjectGroupId = response.Data.ProjectGroupId;
        $scope.Name = response.Data.Name;
        $scope.Code = response.Data.Code;
        $scope.Serial = response.Data.Serial;
        $scope.BarCode = response.Data.BarCode;
        $scope.Index = response.Data.Index;
        $scope.Image = response.Data.Image;
        $scope.Price = response.Data.Price;
        $scope.PriceDiscount = response.Data.PriceDiscount;

        $scope.Summary = response.Data.Summary;
        $scope.IsBest = response.Data.IsBest;
        $scope.IsHot = response.Data.IsHot;
        $scope.IsNew = response.Data.IsNew;
        $scope.IsPromotion = response.Data.IsPromotion;

        $scope.MetaKeyword = response.Data.MetaKeyword;
        $scope.MetaTitle = response.Data.MetaTitle;
        $scope.MetaDescription = response.Data.MetaDescription;
        $scope.Inactive = response.Data.Inactive;

        $scope.ProjectImages = response.Data.ModelShared_ProjectImage;
        $scope.ProjectTabs = response.Data.ModelShared_ProjectTab;

        setTimeout(function () {
            InitProjectTabs();
        }, 100);
    }
    $scope.getProjectGroups = function (response) {
        $scope.ProjectGroups = response.Records;
    }
    $scope.getIndexCompleted = function (response) {
        $scope.Index = response + 1;
    }
    $scope.getError = function (response) {
    }
    $scope.clearValidationErrors = function () {
    }

    $scope.create = function () {
        var project = $scope.createObject();
        projectService.create(project, $scope.createCompleted, $scope.createError);
    }
    $scope.createBack = function () {
        var project = $scope.createObject();
        projectService.create(project, $scope.createBackCompleted, $scope.createError);
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
        $location.path("/project");
    }
    $scope.createError = function (response) {
        $scope.IsSuccess = response.IsSuccess;
        $scope.IsError = response.IsError;
        $scope.InValid = response.InValid;
        $scope.Message = alertsService.FormatMessage(response.ReturnMessage);
    }

    $scope.update = function () {
        var project = $scope.createObject();
        projectService.update(project, $scope.updateCompleted, $scope.updateError);
    }
    $scope.updateBack = function () {
        var project = $scope.createObject();
        projectService.update(project, $scope.updateBackCompleted, $scope.updateError);
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
        $location.path("/project");
    }

    $scope.updateError = function (response) {
        $scope.IsSuccess = response.IsSuccess;
        $scope.IsError = response.IsError;
        $scope.InValid = response.InValid;
        $scope.Message = alertsService.FormatMessage(response.ReturnMessage);
    }
    
    $scope.deletes = function (arr) {
        projectService.deletes(arr, $scope.deletesCompleted, $scope.deletesError);
    }
    $scope.deletesCompleted = function (response, status) {
        $route.reload();
    }
    $scope.deletesError = function (response) {
        alert(response.Message);
    }
});