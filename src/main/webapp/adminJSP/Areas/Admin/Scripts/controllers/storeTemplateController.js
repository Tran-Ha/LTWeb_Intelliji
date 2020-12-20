app.controller('storeTemplateController', function ($scope, $rootScope, $route, $routeParams, $location, storeTemplateService, alertsService) {
    $scope.initializeController = function () {

        var storeTemplateID = ($routeParams.id || "");
        $rootScope.applicationModule = "StoreTemplates";
        $rootScope.alerts = [];

        $scope.initObject();
        storeTemplateService.getFields($scope.getFieldsCompleted, $scope.getError);
        $scope.getCurrentTemplate();
        $scope.search();
    }
    $scope.DoCtrlPagingAct = function (text, page, pageSize, total) {
        var obj = $scope.createObject();
        obj.jtStartIndex = (page - 1) * pageSize;
        storeTemplateService.getStoreTemplates(obj, $scope.getStoreTemplatesCompleted, $scope.getError);
    };
    $scope.initObject = function () {
        $scope.currentPage = 1;
        $scope.FieldId = 0;
        $scope.pageSize = 12;
        $scope.total = 12;
        $scope.adjacent = 2;
        $scope.dots = "...";
        $scope.scrollTop = false;
        $scope.hideIfEmpty = false;
        $scope.ulClass = "pagination";
        $scope.activeClass = "active";
        $scope.disabledClass = "disabled";
        $scope.showPrevNext = true;
    }
    $scope.createObject = function (page) {
        var itemSearch = {
            fieldId: $scope.FieldId,
            jtStartIndex: 0,
            jtPageSize: $scope.pageSize,
        };
        return itemSearch;
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

    $scope.changeTemplateColor = function (idx) {
        var item = $scope.template.TemplateColors[idx];
        $scope.template.Image = item.Image;
        $scope.template.ColorCurrentId = item.Id;
    };

    $scope.changeCurrentTemplateColor = function (idx) {
        var item = $scope.currentTemplate.TemplateColors[idx];
        $scope.currentTemplate.Image = item.Image;
        $scope.currentTemplate.ColorCurrentId = item.Id;
    };

    $scope.getCurrentTemplate = function () {
        storeTemplateService.getCurrentTemplate($scope.getCurrentTemplateCompleted, $scope.getError);
    }
    $scope.getTemplate = function (templateId) {
        var obj = new Object();
        obj.templateId = templateId;
        storeTemplateService.getTemplate(obj, $scope.getTemplateCompleted, $scope.getError);
    }
    $scope.search = function () {
        var obj = $scope.createObject();
        storeTemplateService.getStoreTemplates(obj, $scope.getStoreTemplatesCompleted, $scope.getError);
    }

    $scope.getCurrentTemplateCompleted = function (response) {
        var obj = new Object();
        obj.Id = response.Data.Id;
        obj.Code = response.Data.Code;
        obj.Image = response.Data.Image;
        obj.ColorCurrentId = response.Data.ColorCurrentId;
        obj.TemplateColors = response.Data.ModelTpl_TemplateColor;
        $scope.currentTemplate = obj;
    }
    $scope.getTemplateCompleted = function (response) {
        var obj = new Object();
        obj.Id = response.Data.Id;
        obj.Name = response.Data.Name;
        obj.Code = response.Data.Code;
        obj.Image = response.Data.Image;
        obj.TemplateColors = response.Data.ModelTpl_TemplateColor;
        $scope.template = obj;
    }

    $scope.getFieldsCompleted = function (response) {
        $scope.Fields = response.Records;
    }
    $scope.getStoreTemplatesCompleted = function (response) {
        $scope.StoreTemplates = response.Records;
        $scope.total = response.TotalRecordCount;
    }

    $scope.getError = function (response) {
        $scope.Message = response.Message;
    }
    $scope.clearValidationErrors = function () {
    }

    $scope.updateColor = function () {
        storeTemplateService.updateColor($scope.currentTemplate, $scope.updateColorCompleted, $scope.updateColorError);
    }
    $scope.updateColorCompleted = function (response, status) {
        $scope.IsSuccess = response.IsSuccess;
        $scope.IsError = response.IsError;
        $scope.InValid = response.InValid;
        alert("Cập nhật thành công.");
        $route.reload();
    }
    $scope.updateColorError = function (response) {
        $scope.IsSuccess = response.IsSuccess;
        $scope.IsError = response.IsError;
        $scope.InValid = response.InValid;
        $scope.Message = alertsService.FormatMessage(response.ReturnMessage);
    }
    $scope.updateTemplate = function () {
        if(confirm('Bạn có muốn thay đổi mẫu giao diện và bố cục website không, dữ liệu không thay đổi ?'))
        {
            $('#modalTemplate').modal('toggle');
            storeTemplateService.updateTemplate($scope.template, $scope.updateTemplateCompleted, $scope.updateTemplateError);
        }
    }
    $scope.updateTemplateCompleted = function (response, status) {
        $scope.IsSuccess = response.IsSuccess;
        $scope.IsError = response.IsError;
        $scope.InValid = response.InValid;
        alert("Cập nhật thành công.");
        $route.reload();
    }
    $scope.updateTemplateError = function (response) {
        $scope.IsSuccess = response.IsSuccess;
        $scope.IsError = response.IsError;
        $scope.InValid = response.InValid;
        $scope.Message = alertsService.FormatMessage(response.ReturnMessage);
    }
});
app.directive('showTemplateColor', function () {
    return function (scope, element, attrs) {
        element.click(function () {
            var $template = element.parent().find('.superbox-show');
            element.parent().find('.superbox-list').removeClass("active");
            $template.toggle();
            element.addClass("active");
            $template.insertAfter(element).css("display", "block");

            $template.find(".superbox-close").click(function () {
                element.parent().find('.superbox-list').removeClass("active");
                $template.find(".superbox-current-img").animate({ "opacity": 0 }, 200, function () {
                    $template.slideUp();
                })
            });
        })
    }

})
