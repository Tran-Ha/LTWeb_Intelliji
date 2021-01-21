app.controller('menuController', function ($scope, $rootScope, $route, $routeParams, $location, menuService, alertsService) {
    $scope.initializeController = function () {

        var menuID = ($routeParams.id || "");
        $rootScope.applicationModule = "Menus";
        $rootScope.alerts = [];

        $scope.initObject();
        if (menuID > 0) {
            var obj = new Object();
            obj.Id = menuID;
            menuService.getMenu(obj, $scope.getEditCompleted, $scope.getError);
        } else {
            menuService.getMenuTypes($scope.getMenuTypesCompleted, $scope.getError);
            menuService.getLinkTypes($scope.getLinkTypesCompleted, $scope.getError);
            menuService.getIndex($scope.getIndexCompleted, $scope.getError);
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
        $scope.MenuType = 1;
        $scope.LinkType = 1;
        $scope.Code = "";
        $scope.Inactive = false;
        $scope.IsShow = true;
        $scope.Index = 0;
        $scope.Content = "";
        $scope.MetaDescription = "";
        $scope.MetaKeyword = "";
        $scope.MetaTitle = "";
        $scope.Name = "";
        $scope.Url = "";

        $scope.linkTypeConst = {
            PAGE: 0,
            CONTENT: -1,
            URL: -2,
            GROUPPRODUCT: 3,
            GROUPNEWS: 5,
            GROUPPROJECT: 29,
            GROUPSERVICE: 26,
            GROUPTOUR: 40,
            GROUPEXCHANGE: 32,
            GROUPHOUSE: 43,
            GROUPROOM: 46,
        }
    }
    $scope.createObject = function () {
        var Menu = {
            Id: $scope.Id,
            Code: $scope.Code,
            MenuType: $scope.MenuType,
            LinkType: $scope.LinkType,
            Inactive: $scope.Inactive,
            Index: $scope.Index,
            IsMain: $scope.IsMain,
            Content: $scope.Content,
            IsLinkContent: $scope.IsLinkContent,
            IsLinkNews: $scope.IsLinkNews,
            IsLinkPage: $scope.IsLinkPage,
            IsLinkProduct: $scope.IsLinkProduct,
            IsLinkUrl: $scope.IsLinkUrl,
            Level: $scope.Level,
            ListParentId: $scope.ListParentId,
            NewsGroupId: $scope.NewsGroupId,
            PageId: $scope.PageId,
            PageContentId: $scope.PageContentId,
            ParentId: $scope.ParentId,
            ProductGroupId: $scope.ProductGroupId,
            IsLinkProject: $scope.IsLinkProject,
            ExchangeGroupId: $scope.ExchangeGroupId,
            HouseGroupId: $scope.HouseGroupId,
            IsLinkExchange: $scope.IsLinkExchange,
            IsLinkHouse: $scope.IsLinkHouse,
            IsLinkRoom: $scope.IsLinkRoom,
            IsLinkService: $scope.IsLinkService,
            IsLinkTour: $scope.IsLinkTour,
            ProjectGroupId: $scope.ProjectGroupId,
            RoomGroupId: $scope.RoomGroupId,
            ServiceGroupId: $scope.ServiceGroupId,
            TourGroupId: $scope.TourGroupId,
            ShopId: $scope.ShopId,
            Timestamp: $scope.Timestamp,
            MetaDescription: $scope.MetaDescription,
            MetaKeyword: $scope.MetaKeyword,
            MetaTitle: $scope.MetaTitle,
            Name: $scope.Name,
            Url: $scope.Url,
            IsShow: $scope.IsShow,
        };
        return Menu;
    }
    $scope.resetValues = function (index) {
        $scope.Id = 0;
        //$scope.ParentId = 0;
        //$scope.MenuType = 1;
        //$scope.LinkType = 1;
        $scope.Code = "";
        $scope.Inactive = false;
        $scope.Index = index + 1;
        $scope.Content = "";
        $scope.MetaDescription = "";
        $scope.MetaKeyword = "";
        $scope.MetaTitle = "";
        $scope.Name = "";
        $scope.Url = "";
    }
    $scope.changePage = function (pageId) {
        $scope.PageId = pageId;
    }

    $scope.getDataParent = function (menuType) {
        var obj = new Object();
        obj.menuType = menuType;
        menuService.getDataParent(obj, $scope.getDataParentCompleted, $scope.getError);
    }
    $scope.getDataByLinkType = function (linkType) {
        if (linkType == $scope.linkTypeConst.PAGE) {
            menuService.getPages($scope.getPagesCompleted, $scope.getError);
        }
        if (linkType == $scope.linkTypeConst.CONTENT) {
            menuService.getPageContents($scope.getPageContentsCompleted, $scope.getError);
        }
        else if (linkType == $scope.linkTypeConst.GROUPPRODUCT) {
            menuService.getProductGroups($scope.getProductGroupsCompleted, $scope.getError);
        }
        else if (linkType == $scope.linkTypeConst.GROUPNEWS) {
            menuService.getNewsGroups($scope.getNewsGroupsCompleted, $scope.getError);
        }
        else if (linkType == $scope.linkTypeConst.GROUPPROJECT) {
            menuService.getProjectGroups($scope.getProjectGroupsCompleted, $scope.getError);
        }
        else if (linkType == $scope.linkTypeConst.GROUPSERVICE) {
            menuService.getServiceGroups($scope.getServiceGroupsCompleted, $scope.getError);
        }
        else if (linkType == $scope.linkTypeConst.GROUPTOUR) {
            menuService.getTourGroups($scope.getTourGroupsCompleted, $scope.getError);
        }
        else if (linkType == $scope.linkTypeConst.GROUPEXCHANGE) {
            menuService.getExchangeGroups($scope.getExchangeGroupsCompleted, $scope.getError);
        }
        else if (linkType == $scope.linkTypeConst.GROUPHOUSE) {
            menuService.getHouseGroups($scope.getHouseGroupsCompleted, $scope.getError);
        }
        else if (linkType == $scope.linkTypeConst.GROUPROOM) {
            menuService.getRoomGroups($scope.getRoomGroupsCompleted, $scope.getError);
        }
    }

    $scope.getEditCompleted = function (response) {
        //$scope.getDataParent(response.Data.MenuType);
        //$scope.getDataByLinkType(response.Data.LinkType);

        $scope.Id = response.Data.Id;
        $scope.Code = response.Data.Code;
        $scope.MenuType = response.Data.MenuType;
        $scope.LinkType = response.Data.LinkType;
        $scope.Inactive = response.Data.Inactive;
        $scope.IsShow = response.Data.IsShow;
        $scope.Index = response.Data.Index;
        $scope.IsMain = response.Data.IsMain;
        $scope.Content = response.Data.Content;
        $scope.IsLinkContent = response.Data.IsLinkContent;
        $scope.IsLinkNews = response.Data.IsLinkNews;
        $scope.IsLinkPage = response.Data.IsLinkPage;
        $scope.IsLinkProduct = response.Data.IsLinkProduct;
        $scope.IsLinkUrl = response.Data.IsLinkUrl;
        $scope.Level = response.Data.Level;
        $scope.ListParentId = response.Data.ListParentId;
        $scope.NewsGroupId = response.Data.NewsGroupId;
        $scope.PageId = response.Data.PageId;
        $scope.PageContentId = response.Data.PageContentId;
        $scope.ParentId = response.Data.ParentId;
        $scope.ProductGroupId = response.Data.ProductGroupId;
        $scope.IsLinkProject = response.Data.IsLinkProject;
        $scope.ExchangeGroupId = response.Data.ExchangeGroupId;
        $scope.HouseGroupId = response.Data.HouseGroupId;
        $scope.IsLinkExchange = response.Data.IsLinkExchange;
        $scope.IsLinkHouse = response.Data.IsLinkHouse;
        $scope.IsLinkRoom = response.Data.IsLinkRoom;
        $scope.IsLinkService = response.Data.IsLinkService;
        $scope.IsLinkTour = response.Data.IsLinkTour;
        $scope.ProjectGroupId = response.Data.ProjectGroupId;
        $scope.RoomGroupId = response.Data.RoomGroupId;
        $scope.ServiceGroupId = response.Data.ServiceGroupId;
        $scope.TourGroupId = response.Data.TourGroupId;
        $scope.ShopId = response.Data.ShopId;
        $scope.Timestamp = response.Data.Timestamp;
        $scope.MetaDescription = response.Data.MetaDescription;
        $scope.MetaKeyword = response.Data.MetaKeyword;
        $scope.MetaTitle = response.Data.MetaTitle;
        $scope.Name = response.Data.Name;
        $scope.Url = response.Data.Url;

        $scope.MenuTypes = response.Records[0];
        $scope.LinkTypes = response.Records[1];
        $scope.Parents = response.Records[2];

        $scope.Pages = response.Records[3];
        $scope.PageContents = response.Records[3];
        $scope.ProductGroups = response.Records[3];
        $scope.NewsGroups = response.Records[3];
        $scope.ProjectGroups = response.Records[3];
        $scope.ServiceGroups = response.Records[3];
        $scope.TourGroups = response.Records[3];
        $scope.ExchangeGroups = response.Records[3];
        $scope.HouseGroups = response.Records[3];
        $scope.RoomGroups = response.Records[3];
    }
    $scope.getMenuTypesCompleted = function (response) {
        $scope.MenuTypes = response.Records;
        if (response.Records.length > 0) {
            $scope.getDataParent(response.Records[0].Id);
        }
    }
    $scope.getLinkTypesCompleted = function (response) {
        if (response.Records.length > 0) {
            $scope.LinkType = response.Records[0].Id;
            $scope.getDataByLinkType(response.Records[0].Id);
        }
        $scope.LinkTypes = response.Records;
    }
    $scope.getDataParentCompleted = function (response) {
        if (response.Records.length > 0)
            $scope.ParentId = response.Records[0].Id;
        $scope.Parents = response.Records;
    }
    $scope.getPagesCompleted = function (response) {
        if (response.Records.length > 0)
            $scope.PageId = response.Records[0].Id;
        $scope.Pages = response.Records;
    }
    $scope.getPageContentsCompleted = function (response) {
        if (response.Records.length > 0)
            $scope.PageContentId = response.Records[0].Id;
        $scope.PageContents = response.Records;
    }
    $scope.getProductGroupsCompleted = function (response) {
        if (response.Records.length > 0)
            $scope.ProductGroupId = response.Records[0].Id;
        $scope.ProductGroups = response.Records;
    }
    $scope.getNewsGroupsCompleted = function (response) {
        if (response.Records.length > 0)
            $scope.NewsGroupId = response.Records[0].Id;
        $scope.NewsGroups = response.Records;
    }
    $scope.getProjectGroupsCompleted = function (response) {
        if (response.Records.length > 0)
            $scope.ProjectGroupId = response.Records[0].Id;
        $scope.ProjectGroups = response.Records;
    }
    $scope.getServiceGroupsCompleted = function (response) {
        if (response.Records.length > 0)
            $scope.ServiceGroupId = response.Records[0].Id;
        $scope.ServiceGroups = response.Records;
    }
    $scope.getTourGroupsCompleted = function (response) {
        if (response.Records.length > 0)
            $scope.TourGroupId = response.Records[0].Id;
        $scope.TourGroups = response.Records;
    }
    $scope.getExchangeGroupsCompleted = function (response) {
        if (response.Records.length > 0)
            $scope.ExchangeGroupId = response.Records[0].Id;
        $scope.ExchangeGroups = response.Records;
    }
    $scope.getHouseGroupsCompleted = function (response) {
        if (response.Records.length > 0)
            $scope.HouseGroupId = response.Records[0].Id;
        $scope.HouseGroups = response.Records;
    }
    $scope.getRoomGroupsCompleted = function (response) {
        if (response.Records.length > 0)
            $scope.RoomGroupId = response.Records[0].Id;
        $scope.RoomGroups = response.Records;
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
        var menu = $scope.createObject();
        menuService.create(menu, $scope.createCompleted, $scope.createError);
    }
    $scope.createBack = function () {
        var menu = $scope.createObject();
        menuService.create(menu, $scope.createBackCompleted, $scope.createError);
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
        $location.path("/menu");
    }
    $scope.createError = function (response) {
        $scope.IsSuccess = response.IsSuccess;
        $scope.IsError = response.IsError;
        $scope.InValid = response.InValid;
        $scope.Message = alertsService.FormatMessage(response.ReturnMessage);
    }

    $scope.update = function () {
        var menu = $scope.createObject();
        menuService.update(menu, $scope.updateCompleted, $scope.updateError);
    }
    $scope.updateBack = function () {
        var menu = $scope.createObject();
        menuService.update(menu, $scope.updateBackCompleted, $scope.updateError);
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
        $location.path("/menu");
    }
    $scope.updateError = function (response) {
        $scope.IsSuccess = response.IsSuccess;
        $scope.IsError = response.IsError;
        $scope.InValid = response.InValid;
        $scope.Message = alertsService.FormatMessage(response.ReturnMessage);
    }

    $scope.deletes = function (arr) {
        menuService.deletes(arr, $scope.deletesCompleted, $scope.deletesError);
    }
    $scope.deletesCompleted = function (response, status) {
        $route.reload();
    }
    $scope.deletesError = function (response) {
        alert(response.Message);
    }
});
