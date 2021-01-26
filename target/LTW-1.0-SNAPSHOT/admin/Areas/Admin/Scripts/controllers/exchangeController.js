app.controller('exchangeController', function ($scope, $rootScope, $route, $routeParams, $location, exchangeService, alertsService) {
    $scope.initializeController = function () {

        var exchangeID = ($routeParams.id || "");
        $rootScope.applicationModule = "exchanges";
        $rootScope.alerts = [];

        $scope.initObject();

        if (exchangeID > 0) {
            var obj = new Object();
            obj.Id = exchangeID;
            exchangeService.getExchange(obj, $scope.getEditCompleted, $scope.getError);
        }
        else {
            exchangeService.getIndex($scope.getIndexCompleted, $scope.getError);
        }

        exchangeService.getExchangeGroups($scope.getExchangeGroups, $scope.getError);
        exchangeService.getExchangeTypes($scope.getExchangeTypes, $scope.getError);
        exchangeService.getProvinces($scope.getProvinces, $scope.getError);
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
        $scope.ExchangeGroupId = 0;
        $scope.Name = "";
        $scope.Code = "";
        $scope.Serial = "";
        $scope.Address = "";
        $scope.Price = 0;
        $scope.Room = 0;
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
        $scope.ExchangeGroupId = 0;
        $scope.Name = "";
        $scope.Code = "";
        $scope.Serial = "";
        $scope.Address = "";
        $scope.Price = 0;
        $scope.Room = 0;
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
        var exchange = {
            Id : $scope.Id,
            Code : $scope.Code,
            Serial : $scope.Serial,
            IsHot : $scope.IsHot,
            Image : $scope.Image,
            Summary : $scope.Summary,
            Index : $scope.Index,
            CountView : $scope.CountView,
            Content : $scope.Content,
            ExchangeGroupId : $scope.ExchangeGroupId,
            ExchangeTypeId : $scope.ExchangeTypeId,
            Inactive : $scope.Inactive,
            Name : $scope.Name,
            MetaDescription : $scope.MetaDescription,
            MetaKeyword : $scope.MetaKeyword,
            MetaTitle : $scope.MetaTitle,
            Price: $scope.Price,
            Room: $scope.Room,
            ShopId : $scope.ShopId,
            Timestamp : $scope.Timestamp,
            CreatedDate : $scope.CreatedDate,
            UpdatedDate : $scope.UpdatedDate,
            CreatedByEmail : $scope.CreatedByEmail,
            CreatedByName : $scope.CreatedByName,
            CreatedById : $scope.CreatedById,
            CreatedByAddress : $scope.CreatedByAddress,
            CreatedByPhone : $scope.CreatedByPhone,
            ProvinceId : $scope.ProvinceId,
            Address:$scope.Address,
            IsApprove:$scope.IsApprove,
        };
        return exchange;
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
        $scope.ExchangeGroupId = response.Data.ExchangeGroupId;
        $scope.ExchangeTypeId = response.Data.ExchangeTypeId;
        $scope.ProvinceId = response.Data.ProvinceId;
        $scope.Name = response.Data.Name;
        $scope.Code = response.Data.Code;
        $scope.Serial = response.Data.Serial;
        $scope.Index = response.Data.Index;
        $scope.Image = response.Data.Image;

        $scope.Summary = response.Data.Summary;
        $scope.Content = response.Data.Content;
        $scope.IsHot = response.Data.IsHot;
        $scope.IsNew = response.Data.IsNew;
        $scope.Address = response.Data.Address;
        $scope.IsApprove = response.Data.IsApprove;

        $scope.Price = response.Data.Price;
        $scope.Room = response.Data.Room;

        $scope.CreatedByEmail = response.Data.CreatedByEmail;
        $scope.CreatedByName = response.Data.CreatedByName;
        $scope.CreatedById = response.Data.CreatedById;
        $scope.CreatedByAddress = response.Data.CreatedByAddress;
        $scope.CreatedByPhone = response.Data.CreatedByPhone;

        $scope.MetaKeyword = response.Data.MetaKeyword;
        $scope.MetaTitle = response.Data.MetaTitle;
        $scope.MetaDescription = response.Data.MetaDescription;
        $scope.Inactive = response.Data.Inactive;
    }
    $scope.getExchangeGroups = function (response) {
        $scope.ExchangeGroups = response.Records;
    }
    $scope.getExchangeTypes = function (response) {
        $scope.ExchangeTypes = response.Records;
        if(response.Records.length>0)
        {
            $scope.ExchangeTypeId = response.Records[0].Id;
        }
    }
    $scope.getProvinces = function (response) {
        $scope.Provinces = response.Records;
        if (response.Records.length > 0) {
            $scope.ProvinceId = response.Records[0].Id;
        }
    }
    $scope.getIndexCompleted = function (response) {
        $scope.Index = response + 1;
    }
    $scope.getError = function (response) {
    }
    $scope.clearValidationErrors = function () {
    }

    $scope.create = function () {
        var exchange = $scope.createObject();
        exchangeService.create(exchange, $scope.createCompleted, $scope.createError);
    }
    $scope.createBack = function () {
        var exchange = $scope.createObject();
        exchangeService.create(exchange, $scope.createBackCompleted, $scope.createError);
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
        $location.path("/exchange");
    }
    $scope.createError = function (response) {
        $scope.IsSuccess = response.IsSuccess;
        $scope.IsError = response.IsError;
        $scope.InValid = response.InValid;
        $scope.Message = alertsService.FormatMessage(response.ReturnMessage);
    }

    $scope.update = function () {
        var exchange = $scope.createObject();
        exchangeService.update(exchange, $scope.updateCompleted, $scope.updateError);
    }
    $scope.updateBack = function () {
        var exchange = $scope.createObject();
        exchangeService.update(exchange, $scope.updateBackCompleted, $scope.updateError);
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
        $location.path("/exchange");
    }
    $scope.updateError = function (response) {
        $scope.IsSuccess = response.IsSuccess;
        $scope.IsError = response.IsError;
        $scope.InValid = response.InValid;
        $scope.Message = alertsService.FormatMessage(response.ReturnMessage);
    }
    
    $scope.deletes = function (arr) {
        exchangeService.deletes(arr, $scope.deletesCompleted, $scope.deletesError);
    }
    $scope.deletesCompleted = function (response, status) {
        $route.reload();
    }
    $scope.deletesError = function (response) {
        alert(response.Message);
    }
});