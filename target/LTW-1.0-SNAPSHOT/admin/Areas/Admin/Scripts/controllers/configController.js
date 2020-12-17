app.controller('configController', function ($scope, $rootScope, $route, $routeParams, $location, $window, configService, alertsService, configGlobal) {
    $scope.initShop = function () {
        configService.getShop($scope.getShopCompleted, $scope.getError);
    }
    $scope.getShopCompleted = function (response) {
        $scope.Id = response.Data.Id;
        $scope.Code = response.Data.Code;
        $scope.Name = response.Data.Name;
        $scope.AccessNumber = response.Data.AccessNumber;
        $scope.GoogleAnalytics = response.Data.GoogleAnalytics;
        $scope.Address = response.Data.Address;
        $scope.BeginTrial = response.Data.BeginTrial;
        $scope.CountTrial = response.Data.CountTrial;
        $scope.CreatedDate = response.Data.CreatedDate;
        $scope.Email = response.Data.Email;
        $scope.EndTrial = response.Data.EndTrial;
        $scope.Facebook = response.Data.Facebook;
        $scope.Fax = response.Data.Fax;
        $scope.Google = response.Data.Google;
        $scope.Hotline = response.Data.Hotline;
        $scope.Image = response.Data.Image;
        $scope.Logo = response.Data.Logo;
        $scope.Favicon = response.Data.Favicon;
        $scope.MetaDescription = response.Data.MetaDescription;
        $scope.MetaKeyword = response.Data.MetaKeyword;
        $scope.MetaTitle = response.Data.MetaTitle;
        $scope.MetaVerification = response.Data.MetaVerification;
        $scope.HeaderCode = response.Data.HeaderCode;
        $scope.FooterCode = response.Data.FooterCode;
        $scope.Phone = response.Data.Phone;
        $scope.Sologan = response.Data.Sologan;
        $scope.TaxCode = response.Data.TaxCode;
        $scope.Twitter = response.Data.Twitter;
        $scope.Youtube = response.Data.Youtube;
        $scope.Fanpage = response.Data.Fanpage;
        $scope.NameShort = response.Data.NameShort;
        $scope.Website = response.Data.Website;
        $scope.WorkTime = response.Data.WorkTime;
        $scope.Inactive = response.Data.Inactive;
    }
    $scope.updateShop = function () {
        var obj = {
            Id: $scope.Id,
            Code: $scope.Code,
            Name: $scope.Name,
            AccessNumber: $scope.AccessNumber,
            GoogleAnalytics: $scope.GoogleAnalytics,
            Address: $scope.Address,
            BeginTrial: $scope.BeginTrial,
            CountTrial: $scope.CountTrial,
            CreatedDate: $scope.CreatedDate,
            Email: $scope.Email,
            EndTrial: $scope.EndTrial,
            Facebook: $scope.Facebook,
            Fax: $scope.Fax,
            Google: $scope.Google,
            Hotline: $scope.Hotline,
            Image: $scope.Image,
            Logo: $scope.Logo,
            Favicon: $scope.Favicon,
            MetaDescription: $scope.MetaDescription,
            MetaKeyword: $scope.MetaKeyword,
            MetaTitle: $scope.MetaTitle,
            MetaVerification: $scope.MetaVerification,
            HeaderCode: $scope.HeaderCode,
            FooterCode: $scope.FooterCode,
            Phone: $scope.Phone,
            Sologan: $scope.Sologan,
            TaxCode: $scope.TaxCode,
            Twitter: $scope.Twitter,
            Youtube: $scope.Youtube,
            Fanpage: $scope.Fanpage,
            NameShort: $scope.NameShort,
            Website: $scope.Website,
            WorkTime: $scope.WorkTime,
            Inactive: $scope.Inactive,
        };

        configService.updateShop(obj, $scope.updateShopCompleted, $scope.updateError);
    }
    $scope.updateShopCompleted = function (response, status) {
        $scope.IsSuccess = response.IsSuccess;
        $scope.IsError = response.IsError;
        $scope.InValid = response.InValid;
    }

    $scope.initConfigGeneral = function () {
        $scope.IsMailPrivate = false;
        configService.getConfigGeneral($scope.getConfigGeneralCompleted, $scope.getError);
    }
    $scope.getConfigGeneralCompleted = function (response) {
        $scope.IsBoxLayout = response.Data.IsBoxLayout;
        $scope.IsFullHeader = response.Data.IsFullHeader;
        $scope.IsFullSlideshow = response.Data.IsFullSlideshow;
        $scope.IsFullAdv = response.Data.IsFullAdv;
        $scope.IsFullMain = response.Data.IsFullMain;
        $scope.IsFullPartner = response.Data.IsFullPartner;
        $scope.IsFullFooter = response.Data.IsFullFooter;
        $scope.EmailReceive = response.Data.EmailReceive;
        $scope.EmaiSend = response.Data.EmaiSend;
        $scope.EnableSSL = response.Data.EnableSSL;
        $scope.FacebookApplicationID = response.Data.FacebookApplicationID;
        $scope.FormContact = response.Data.FormContact;
        $scope.FormCoupon = response.Data.FormCoupon;
        $scope.FormForgetPassword = response.Data.FormForgetPassword;
        $scope.FormRegiterAccount = response.Data.FormRegiterAccount;
        $scope.Id = response.Data.Id;
        $scope.IsMailPrivate = response.Data.IsMailPrivate;
        $scope.UserName = response.Data.UserName;
        $scope.Password = response.Data.Password;
        $scope.IsReceiveEmail = response.Data.IsReceiveEmail;
        $scope.ShowOnline = response.Data.ShowOnline;
        $scope.SMTPPort = response.Data.SMTPPort;
        $scope.SMTPServer = response.Data.SMTPServer;
        $scope.VirtualAccess = response.Data.VirtualAccess;
        $scope.VirtualOnline = response.Data.VirtualOnline;
    }
    $scope.updateConfigGeneral = function () {
        var obj = {
            IsBoxLayout: $scope.IsBoxLayout,
            IsFullHeader: $scope.IsFullHeader,
            IsFullSlideshow: $scope.IsFullSlideshow,
            IsFullAdv: $scope.IsFullAdv,
            IsFullMain: $scope.IsFullMain,
            IsFullPartner: $scope.IsFullPartner,
            IsFullFooter: $scope.IsFullFooter,
            EmailReceive: $scope.EmailReceive,
            EmaiSend: $scope.EmaiSend,
            EnableSSL: $scope.EnableSSL,
            FacebookApplicationID: $scope.FacebookApplicationID,
            FormContact: $scope.FormContact,
            FormCoupon: $scope.FormCoupon,
            FormForgetPassword: $scope.FormForgetPassword,
            FormRegiterAccount: $scope.FormRegiterAccount,
            Id: $scope.Id,
            IsMailPrivate: $scope.IsMailPrivate,
            UserName: $scope.UserName,
            Password: $scope.Password,
            IsReceiveEmail: $scope.IsReceiveEmail,
            ShowOnline: $scope.ShowOnline,
            SMTPPort: $scope.SMTPPort,
            SMTPServer: $scope.SMTPServer,
            VirtualAccess: $scope.VirtualAccess,
            VirtualOnline: $scope.VirtualOnline,
        };

        configService.updateConfigGeneral(obj, $scope.updateConfigGeneralCompleted, $scope.updateError);
    }
    $scope.updateConfigGeneralCompleted = function (response, status) {
        $scope.IsSuccess = response.IsSuccess;
        $scope.IsError = response.IsError;
        $scope.InValid = response.InValid;
    }
    $scope.sendTestMail = function () {
        var obj = {
            EmailReceive: $scope.EmailReceive,
            EmaiSend: $scope.EmaiSend,
            EnableSSL: $scope.EnableSSL,
            FacebookApplicationID: $scope.FacebookApplicationID,
            FormContact: $scope.FormContact,
            FormCoupon: $scope.FormCoupon,
            FormForgetPassword: $scope.FormForgetPassword,
            FormRegiterAccount: $scope.FormRegiterAccount,
            Id: $scope.Id,
            IsMailPrivate: $scope.IsMailPrivate,
            UserName: $scope.UserName,
            Password: $scope.Password,
            IsReceiveEmail: $scope.IsReceiveEmail,
            ShowOnline: $scope.ShowOnline,
            SMTPPort: $scope.SMTPPort,
            SMTPServer: $scope.SMTPServer,
            VirtualAccess: $scope.VirtualAccess,
            VirtualOnline: $scope.VirtualOnline,

            ToEmail: $scope.ToEmail,
            Title: $scope.Title,
            Content: $scope.Content,
        };
        configService.sendTestMail(obj, $scope.sendTestMailCompleted, $scope.sendTestMailError);
    }
    $scope.sendTestMailCompleted = function (response, status) {
        $scope.IsSuccess = response.IsSuccess;
        $scope.IsError = response.IsError;
        $scope.InValid = response.InValid;
        alert("Gửi mail thành công.");
        $('#modalSendMail').modal('toggle');
    }
    $scope.sendTestMailError = function (response) {
        $scope.IsSuccess = response.IsSuccess;
        $scope.IsError = response.IsError;
        $scope.InValid = response.InValid;
        alert(response.Message);
    }
    $scope.initConfigAccountCoupon = function () {

    }
    $scope.confirmShopPayment = function () {
        var obj = {
            TransactionCode: $scope.CouponCode,
        };
        configService.confirmShopPayment(obj, $scope.confirmShopPaymentCompleted, $scope.confirmShopPaymentError);
    }
    $scope.confirmShopPaymentCompleted = function (response, status) {
        $scope.CouponCode = "",
        $scope.IsSuccess = response.IsSuccess;
        $scope.IsError = response.IsError;
        $scope.InValid = response.InValid;
    }
    $scope.confirmShopPaymentError = function (response) {
        $scope.IsSuccess = response.IsSuccess;
        $scope.IsError = response.IsError;
        $scope.InValid = response.InValid;
        $scope.Message = alertsService.FormatMessage(response.ReturnMessage);
    }

    $scope.initConfigDomain = function () {
        configService.getConfigDomain($scope.getConfigDomainCompleted, $scope.getError);
    }
    $scope.getConfigDomainCompleted = function (response) {
        $scope.Domain = response.Data.Domain;
        $scope.DomainOther = response.Data.DomainOther;
    }
    $scope.updateConfigDomain = function () {
        var obj = {
            Domain: $scope.Domain,
            DomainOther: $scope.DomainOther,
        };

        configService.updateConfigDomain(obj, $scope.updateConfigDomainCompleted, $scope.updateError);
    }
    $scope.updateConfigDomainCompleted = function (response, status) {
        $scope.IsSuccess = response.IsSuccess;
        $scope.IsError = response.IsError;
        $scope.InValid = response.InValid;
    }

    $scope.initConfigMap = function () {
        $scope.CityLocations = [{ Id: 1 }];
        configService.getMaps($scope.getMapsCompleted, $scope.getError);
    }
    var map;
    $scope.$on('mapInitialized', function (event, map) {
        map = map;
        //$scope.placeMarker = function (e) {
        //    var marker = new google.maps.Marker({ position: e.latLng, map: map });
        //    marker.draggable = true;
        //    map.panTo(e.latLng);
        //}
    });

    $scope.addMarker = function (event) {
        var ll = event.latLng;
        $scope.PosX = ll.lat();
        $scope.PosY = ll.lng();
        $scope.resetValues();
        $('#modalAdd').modal('show');
    }
    $scope.showMarker = function (id) {
        $scope.map.markers[id].setMap($scope.map);
    }
    $scope.showInfoWindow = function (event, item) {
        var ll = event.latLng;
        $scope.PosX = ll.lat();
        $scope.PosY = ll.lng();
        var obj = { id: item.Id };
        configService.getMap(obj, $scope.getMapCompleted, $scope.getError);
        $('#modalUpdate').modal('show');
        //var infowindow = new google.maps.InfoWindow();
        //var center = new google.maps.LatLng(item[0], item[1]);

        //infowindow.setContent(
        //    '<h3>' + item + '</h3>');

        //infowindow.setPosition(center);
        //infowindow.open(item);

    };

    $scope.getMapsCompleted = function (response) {
        $scope.Maps = response.Records;
    }
    $scope.getMapCompleted = function (response) {
        $scope.Id = response.Data.Id;
        $scope.Name = response.Data.Name;
        $scope.Address = response.Data.Address;
        $scope.Phone = response.Data.Phone;
    }
    $scope.updateMap = function () {
        var obj = {
            Id: $scope.Id,
            Name: $scope.Name,
            Address: $scope.Address,
            Phone: $scope.Phone,
            PosX: $scope.PosX,
            PosY: $scope.PosY,
        };
        configService.updateMap(obj, $scope.updateMapCompleted, $scope.updateError);
    }
    $scope.updateMapCompleted = function (response, status) {
        $scope.IsSuccess = response.IsSuccess;
        $scope.IsError = response.IsError;
        $scope.InValid = response.InValid;
        $('#modalUpdate').modal('toggle');
        $scope.resetValues();
    }
    $scope.createMap = function () {
        var obj = {
            Name: $scope.Name,
            Address: $scope.Address,
            Phone: $scope.Phone,
            PosX: $scope.PosX,
            PosY: $scope.PosY,
        };
        configService.createMap(obj, $scope.createMapCompleted, $scope.updateError);
    }
    $scope.createMapCompleted = function (response, status) {
        $scope.IsSuccess = response.IsSuccess;
        $scope.IsError = response.IsError;
        $scope.InValid = response.InValid;
        configService.getMaps($scope.getMapsCompleted, $scope.getError);
        $('#modalAdd').modal('toggle');
        $scope.resetValues();
    }
    $scope.deleteMap = function (id) {
        if (confirm("Bạn có muốn xóa vị trí bản đồ này không?")) {
            var obj = { id: id };
            configService.deleteMap(obj, $scope.deleteMapCompleted, $scope.updateError);
        }
    }
    $scope.deleteMapCompleted = function (response, status) {
        $scope.IsSuccess = response.IsSuccess;
        $scope.IsError = response.IsError;
        $scope.InValid = response.InValid;
        configService.getMaps($scope.getMapsCompleted, $scope.getError);
    }
    $scope.resetValues = function () {
        $scope.Id = 0;
        $scope.Name = "";
        $scope.Address = "";
        $scope.Phone = "";
    }

    $scope.initConfigProduct = function () {
        $scope.ColumnProducts = [{ Id: 2, Name: "2" }, { Id: 3, Name: "3" }, { Id: 4, Name: "4" }, { Id: 6, Name: "6" }];
        $scope.ColumnProductGroups = [{ Id: 2, Name: "2" }, { Id: 3, Name: "3" }, { Id: 4, Name: "4" }, { Id: 6, Name: "6" }];
        $scope.ColumnProductHomes = [{ Id: 2, Name: "2" }, { Id: 3, Name: "3" }, { Id: 4, Name: "4" }, { Id: 6, Name: "6" }];
        $scope.PageSizes = [{ Id: 12, Name: "12" }, { Id: 24, Name: "24" }, { Id: 36, Name: "36" }, { Id: 48, Name: "48" }, { Id: 60, Name: "60" }, { Id: 72, Name: "72" }];
        $scope.ProductSorts = [{ Code: "index", Name: "Thứ tự" }, { Code: "price", Name: "Đơn giá" }, { Code: "Name", Name: "Tên sản phẩm" }];
        $scope.ProductOrders = [{ Code: "asc", Name: "Tăng dần" }, { Code: "desc", Name: "Giảm dần" }];
        $scope.Ratios = [{ Id: 1, Name: "3x2", WidthRatio: 3, HeightRatio: 2 }, { Id: 2, Name: "4x3", WidthRatio: 4, HeightRatio: 3 }, { Id: 3, Name: "1x1", WidthRatio: 1, HeightRatio: 1 }, { Id: 4, Name: "3x4", WidthRatio: 3, HeightRatio: 4 }, { Id: 5, Name: "2x3", WidthRatio: 2, HeightRatio: 3 }];

        configService.getConfigProduct($scope.getConfigProductCompleted, $scope.getError);
    }
    $scope.getConfigProductCompleted = function (response) {
        $scope.AllowComment = response.Data.AllowComment;
        $scope.AllowCommentFacebook = response.Data.AllowCommentFacebook;
        $scope.AllowOrder = response.Data.AllowOrder;
        $scope.ApproveCommentPost = response.Data.ApproveCommentPost;
        $scope.AutoQuantityOrder = response.Data.AutoQuantityOrder;
        $scope.IsInventory = response.Data.IsInventory;
        $scope.Order = response.Data.Order;
        $scope.Sort = response.Data.Sort;
        $scope.PageSize = response.Data.PageSize;
        $scope.QuantityHot = response.Data.QuantityHot;
        $scope.QuantityBest = response.Data.QuantityBest;
        $scope.QuantityNew = response.Data.QuantityNew;
        $scope.QuantityPromotion = response.Data.QuantityPromotion;
        $scope.ReceiveEmailComment = response.Data.ReceiveEmailComment;
        $scope.ShowControlSortBy = response.Data.ShowControlSortBy;
        $scope.ShowLikeShareFacebook = response.Data.ShowLikeShareFacebook;
        $scope.ShowPrice = response.Data.ShowPrice;
        $scope.ShowRate = response.Data.ShowRate;
        $scope.ShowSerial = response.Data.ShowSerial;
        $scope.ShowWarranty = response.Data.ShowWarranty;
        $scope.TextNotPrice = response.Data.TextNotPrice;
        $scope.TextPriceZero = response.Data.TextPriceZero;
        $scope.QuantitySlide = response.Data.QuantitySlide;
        $scope.HeightRatio = response.Data.HeightRatio;
        $scope.WidthRatio = response.Data.WidthRatio;
        $scope.ColumnProduct = response.Data.ColumnProduct;
        $scope.ColumnProductGroup = response.Data.ColumnProductGroup;
        $scope.ColumnProductHome = response.Data.ColumnProductHome;
        var ratio = $scope.Ratios.filter(function (c) { return c.WidthRatio == $scope.WidthRatio && c.HeightRatio == $scope.HeightRatio })[0]
        if (ratio != null)
            $scope.Ratio = ratio.Id;
        else
            $scope.Ratio = 1;
    }
    $scope.updateConfigProduct = function () {
        var obj = {
            AllowComment: $scope.AllowComment,
            AllowCommentFacebook: $scope.AllowCommentFacebook,
            AllowOrder: $scope.AllowOrder,
            ApproveCommentPost: $scope.ApproveCommentPost,
            AutoQuantityOrder: $scope.AutoQuantityOrder,
            IsInventory: $scope.IsInventory,
            Order: $scope.Order,
            Sort: $scope.Sort,
            PageSize: $scope.PageSize,
            QuantityHot: $scope.QuantityHot,
            QuantityBest: $scope.QuantityBest,
            QuantityNew: $scope.QuantityNew,
            QuantityPromotion: $scope.QuantityPromotion,
            ReceiveEmailComment: $scope.ReceiveEmailComment,
            ShowControlSortBy: $scope.ShowControlSortBy,
            ShowLikeShareFacebook: $scope.ShowLikeShareFacebook,
            ShowPrice: $scope.ShowPrice,
            ShowRate: $scope.ShowRate,
            ShowSerial: $scope.ShowSerial,
            ShowWarranty: $scope.ShowWarranty,
            TextNotPrice: $scope.TextNotPrice,
            TextPriceZero: $scope.TextPriceZero,
            QuantitySlide: $scope.QuantitySlide,
            ColumnProduct: $scope.ColumnProduct,
            ColumnProductGroup: $scope.ColumnProductGroup,
            ColumnProductHome: $scope.ColumnProductHome,
        };
        var ratio = $scope.Ratios[$scope.Ratio - 1];
        obj.WidthRatio = ratio.WidthRatio;
        obj.HeightRatio = ratio.HeightRatio;
        configService.updateConfigProduct(obj, $scope.updateConfigProductCompleted, $scope.updateError);
    }
    $scope.updateConfigProductCompleted = function (response, status) {
        $scope.IsSuccess = response.IsSuccess;
        $scope.IsError = response.IsError;
        $scope.InValid = response.InValid;
    }
    $scope.changeColumnProduct = function (columnProduct) {
        $scope.ColumnProduct = columnProduct;
    }
    $scope.changeColumnProductGroup = function (columnProductGroup) {
        $scope.ColumnProductGroup = columnProductGroup;
    }
    $scope.changeColumnProductHome = function (columnProductHome) {
        $scope.ColumnProductHome = columnProductHome;
    }

    $scope.initConfigProject = function () {
        $scope.ColumnProjects = [{ Id: 2, Name: "2" }, { Id: 3, Name: "3" }, { Id: 4, Name: "4" }, { Id: 6, Name: "6" }];
        $scope.PageSizes = [{ Id: 12, Name: "12" }, { Id: 24, Name: "24" }, { Id: 36, Name: "36" }, { Id: 48, Name: "48" }, { Id: 60, Name: "60" }, { Id: 72, Name: "72" }];
        $scope.ProjectSorts = [{ Code: "index", Name: "Thứ tự" }, { Code: "Name", Name: "Tên dự án" }];
        $scope.ProjectOrders = [{ Code: "asc", Name: "Tăng dần" }, { Code: "desc", Name: "Giảm dần" }];
        $scope.Ratios = [{ Id: 1, Name: "3x2", WidthRatio: 3, HeightRatio: 2 }, { Id: 2, Name: "4x3", WidthRatio: 4, HeightRatio: 3 }, { Id: 3, Name: "1x1", WidthRatio: 1, HeightRatio: 1 }, { Id: 4, Name: "3x4", WidthRatio: 3, HeightRatio: 4 }, { Id: 5, Name: "2x3", WidthRatio: 2, HeightRatio: 3 }];

        configService.getConfigProject($scope.getConfigProjectCompleted, $scope.getError);
    }
    $scope.getConfigProjectCompleted = function (response) {
        $scope.AllowComment = response.Data.AllowComment;
        $scope.AllowCommentFacebook = response.Data.AllowCommentFacebook;
        $scope.ApproveCommentPost = response.Data.ApproveCommentPost;
        $scope.Order = response.Data.Order;
        $scope.Sort = response.Data.Sort;
        $scope.PageSize = response.Data.PageSize;
        $scope.QuantityHot = response.Data.QuantityHot;
        $scope.QuantityNew = response.Data.QuantityNew;
        $scope.ReceiveEmailComment = response.Data.ReceiveEmailComment;
        $scope.ShowControlSortBy = response.Data.ShowControlSortBy;
        $scope.ShowLikeShareFacebook = response.Data.ShowLikeShareFacebook;
        $scope.ShowPrice = response.Data.ShowPrice;
        $scope.ShowRate = response.Data.ShowRate;
        $scope.ShowSerial = response.Data.ShowSerial;
        $scope.TextNotPrice = response.Data.TextNotPrice;
        $scope.TextPriceZero = response.Data.TextPriceZero;
        $scope.QuantitySlide = response.Data.QuantitySlide;
        $scope.HeightRatio = response.Data.HeightRatio;
        $scope.WidthRatio = response.Data.WidthRatio;
        $scope.ColumnProject = response.Data.ColumnProject;
        var ratio = $scope.Ratios.filter(function (c) { return c.WidthRatio == $scope.WidthRatio && c.HeightRatio == $scope.HeightRatio })[0]
        if (ratio != null)
            $scope.Ratio = ratio.Id;
        else
            $scope.Ratio = 1;
    }
    $scope.updateConfigProject = function () {
        var obj = {
            AllowComment: $scope.AllowComment,
            AllowCommentFacebook: $scope.AllowCommentFacebook,
            ApproveCommentPost: $scope.ApproveCommentPost,
            Order: $scope.Order,
            Sort: $scope.Sort,
            PageSize: $scope.PageSize,
            QuantityHot: $scope.QuantityHot,
            QuantityNew: $scope.QuantityNew,
            ReceiveEmailComment: $scope.ReceiveEmailComment,
            ShowControlSortBy: $scope.ShowControlSortBy,
            ShowLikeShareFacebook: $scope.ShowLikeShareFacebook,
            ShowPrice: $scope.ShowPrice,
            ShowRate: $scope.ShowRate,
            ShowSerial: $scope.ShowSerial,
            TextNotPrice: $scope.TextNotPrice,
            TextPriceZero: $scope.TextPriceZero,
            QuantitySlide: $scope.QuantitySlide,
            ColumnProject: $scope.ColumnProject,
        };
        var ratio = $scope.Ratios[$scope.Ratio - 1];
        obj.WidthRatio = ratio.WidthRatio;
        obj.HeightRatio = ratio.HeightRatio;
        configService.updateConfigProject(obj, $scope.updateConfigProjectCompleted, $scope.updateError);
    }
    $scope.updateConfigProjectCompleted = function (response, status) {
        $scope.IsSuccess = response.IsSuccess;
        $scope.IsError = response.IsError;
        $scope.InValid = response.InValid;
    }
    $scope.changeColumnProject = function (columnProject) {
        $scope.ColumnProject = columnProject;
    }

    $scope.initConfigService = function () {
        $scope.ColumnServices = [{ Id: 2, Name: "2" }, { Id: 3, Name: "3" }, { Id: 4, Name: "4" }, { Id: 6, Name: "6" }];
        $scope.PageSizes = [{ Id: 12, Name: "12" }, { Id: 24, Name: "24" }, { Id: 36, Name: "36" }, { Id: 48, Name: "48" }, { Id: 60, Name: "60" }, { Id: 72, Name: "72" }];
        $scope.ServiceSorts = [{ Code: "index", Name: "Thứ tự" }, { Code: "Name", Name: "Tên dịch vụ" }];
        $scope.ServiceOrders = [{ Code: "asc", Name: "Tăng dần" }, { Code: "desc", Name: "Giảm dần" }];
        $scope.Ratios = [{ Id: 1, Name: "3x2", WidthRatio: 3, HeightRatio: 2 }, { Id: 2, Name: "4x3", WidthRatio: 4, HeightRatio: 3 }, { Id: 3, Name: "1x1", WidthRatio: 1, HeightRatio: 1 }, { Id: 4, Name: "3x4", WidthRatio: 3, HeightRatio: 4 }, { Id: 5, Name: "2x3", WidthRatio: 2, HeightRatio: 3 }];

        configService.getConfigService($scope.getConfigServiceCompleted, $scope.getError);
    }
    $scope.getConfigServiceCompleted = function (response) {
        $scope.AllowComment = response.Data.AllowComment;
        $scope.AllowCommentFacebook = response.Data.AllowCommentFacebook;
        $scope.ApproveCommentPost = response.Data.ApproveCommentPost;
        $scope.Order = response.Data.Order;
        $scope.Sort = response.Data.Sort;
        $scope.PageSize = response.Data.PageSize;
        $scope.QuantityHot = response.Data.QuantityHot;
        $scope.QuantityNew = response.Data.QuantityNew;
        $scope.ReceiveEmailComment = response.Data.ReceiveEmailComment;
        $scope.ShowControlSortBy = response.Data.ShowControlSortBy;
        $scope.ShowLikeShareFacebook = response.Data.ShowLikeShareFacebook;
        $scope.QuantitySlide = response.Data.QuantitySlide;
        $scope.HeightRatio = response.Data.HeightRatio;
        $scope.WidthRatio = response.Data.WidthRatio;
        $scope.ColumnService = response.Data.ColumnService;
        var ratio = $scope.Ratios.filter(function (c) { return c.WidthRatio == $scope.WidthRatio && c.HeightRatio == $scope.HeightRatio })[0]
        if (ratio != null)
            $scope.Ratio = ratio.Id;
        else
            $scope.Ratio = 1;
    }
    $scope.updateConfigService = function () {
        var obj = {
            AllowComment: $scope.AllowComment,
            AllowCommentFacebook: $scope.AllowCommentFacebook,
            ApproveCommentPost: $scope.ApproveCommentPost,
            Order: $scope.Order,
            Sort: $scope.Sort,
            PageSize: $scope.PageSize,
            QuantityHot: $scope.QuantityHot,
            QuantityNew: $scope.QuantityNew,
            ReceiveEmailComment: $scope.ReceiveEmailComment,
            ShowControlSortBy: $scope.ShowControlSortBy,
            ShowLikeShareFacebook: $scope.ShowLikeShareFacebook,
            QuantitySlide: $scope.QuantitySlide,
            ColumnService: $scope.ColumnService,
        };
        var ratio = $scope.Ratios[$scope.Ratio - 1];
        obj.WidthRatio = ratio.WidthRatio;
        obj.HeightRatio = ratio.HeightRatio;
        configService.updateConfigService(obj, $scope.updateConfigServiceCompleted, $scope.updateError);
    }
    $scope.updateConfigServiceCompleted = function (response, status) {
        $scope.IsSuccess = response.IsSuccess;
        $scope.IsError = response.IsError;
        $scope.InValid = response.InValid;
    }
    $scope.changeColumnService = function (columnService) {
        $scope.ColumnService = columnService;
    }

    $scope.initConfigGallery = function () {
        $scope.ColumnGallerys = [{ Id: 2, Name: "2" }, { Id: 3, Name: "3" }, { Id: 4, Name: "4" }, { Id: 6, Name: "6" }];
        $scope.PageSizes = [{ Id: 12, Name: "12" }, { Id: 24, Name: "24" }, { Id: 36, Name: "36" }, { Id: 48, Name: "48" }, { Id: 60, Name: "60" }, { Id: 72, Name: "72" }];
        $scope.GallerySorts = [{ Code: "index", Name: "Thứ tự" }, { Code: "Name", Name: "Tên thư viện ảnh" }];
        $scope.GalleryOrders = [{ Code: "asc", Name: "Tăng dần" }, { Code: "desc", Name: "Giảm dần" }];
        $scope.Ratios = [{ Id: 1, Name: "3x2", WidthRatio: 3, HeightRatio: 2 }, { Id: 2, Name: "4x3", WidthRatio: 4, HeightRatio: 3 }, { Id: 3, Name: "1x1", WidthRatio: 1, HeightRatio: 1 }, { Id: 4, Name: "3x4", WidthRatio: 3, HeightRatio: 4 }, { Id: 5, Name: "2x3", WidthRatio: 2, HeightRatio: 3 }];

        configService.getConfigGallery($scope.getConfigGalleryCompleted, $scope.getError);
    }
    $scope.getConfigGalleryCompleted = function (response) {
        $scope.AllowComment = response.Data.AllowComment;
        $scope.AllowCommentFacebook = response.Data.AllowCommentFacebook;
        $scope.ApproveCommentPost = response.Data.ApproveCommentPost;
        $scope.Order = response.Data.Order;
        $scope.Sort = response.Data.Sort;
        $scope.PageSize = response.Data.PageSize;
        $scope.QuantityHot = response.Data.QuantityHot;
        $scope.QuantityNew = response.Data.QuantityNew;
        $scope.ReceiveEmailComment = response.Data.ReceiveEmailComment;
        $scope.ShowControlSortBy = response.Data.ShowControlSortBy;
        $scope.ShowLikeShareFacebook = response.Data.ShowLikeShareFacebook;
        $scope.QuantitySlide = response.Data.QuantitySlide;
        $scope.HeightRatio = response.Data.HeightRatio;
        $scope.WidthRatio = response.Data.WidthRatio;
        $scope.ColumnGallery = response.Data.ColumnGallery;
        var ratio = $scope.Ratios.filter(function (c) { return c.WidthRatio == $scope.WidthRatio && c.HeightRatio == $scope.HeightRatio })[0]
        if (ratio != null)
            $scope.Ratio = ratio.Id;
        else
            $scope.Ratio = 1;
    }
    $scope.updateConfigGallery = function () {
        var obj = {
            AllowComment: $scope.AllowComment,
            AllowCommentFacebook: $scope.AllowCommentFacebook,
            ApproveCommentPost: $scope.ApproveCommentPost,
            Order: $scope.Order,
            Sort: $scope.Sort,
            PageSize: $scope.PageSize,
            QuantityHot: $scope.QuantityHot,
            QuantityNew: $scope.QuantityNew,
            ReceiveEmailComment: $scope.ReceiveEmailComment,
            ShowControlSortBy: $scope.ShowControlSortBy,
            ShowLikeShareFacebook: $scope.ShowLikeShareFacebook,
            QuantitySlide: $scope.QuantitySlide,
            ColumnGallery: $scope.ColumnGallery,
        };
        var ratio = $scope.Ratios[$scope.Ratio - 1];
        obj.WidthRatio = ratio.WidthRatio;
        obj.HeightRatio = ratio.HeightRatio;
        configService.updateConfigGallery(obj, $scope.updateConfigGalleryCompleted, $scope.updateError);
    }
    $scope.updateConfigGalleryCompleted = function (response, status) {
        $scope.IsSuccess = response.IsSuccess;
        $scope.IsError = response.IsError;
        $scope.InValid = response.InValid;
    }
    $scope.changeColumnGallery = function (columnGallery) {
        $scope.ColumnGallery = columnGallery;
    }

    $scope.initConfigExchange = function () {
        $scope.ColumnExchanges = [{ Id: 2, Name: "2" }, { Id: 3, Name: "3" }, { Id: 4, Name: "4" }, { Id: 6, Name: "6" }];
        $scope.PageSizes = [{ Id: 12, Name: "12" }, { Id: 24, Name: "24" }, { Id: 36, Name: "36" }, { Id: 48, Name: "48" }, { Id: 60, Name: "60" }, { Id: 72, Name: "72" }];
        $scope.ExchangeSorts = [{ Code: "index", Name: "Thứ tự" }, { Code: "CreatedDate", Name: "Ngày tạo" }, { Code: "price", Name: "Đơn giá" }, { Code: "Name", Name: "Tên sàn giao dịch" }];
        $scope.ExchangeOrders = [{ Code: "asc", Name: "Tăng dần" }, { Code: "desc", Name: "Giảm dần" }];
        $scope.Ratios = [{ Id: 1, Name: "3x2", WidthRatio: 3, HeightRatio: 2 }, { Id: 2, Name: "4x3", WidthRatio: 4, HeightRatio: 3 }, { Id: 3, Name: "1x1", WidthRatio: 1, HeightRatio: 1 }, { Id: 4, Name: "3x4", WidthRatio: 3, HeightRatio: 4 }, { Id: 5, Name: "2x3", WidthRatio: 2, HeightRatio: 3 }];

        configService.getConfigExchange($scope.getConfigExchangeCompleted, $scope.getError);
    }
    $scope.getConfigExchangeCompleted = function (response) {
        $scope.AllowComment = response.Data.AllowComment;
        $scope.AllowCommentFacebook = response.Data.AllowCommentFacebook;
        $scope.ApproveCommentPost = response.Data.ApproveCommentPost;
        $scope.Order = response.Data.Order;
        $scope.Sort = response.Data.Sort;
        $scope.PageSize = response.Data.PageSize;
        $scope.QuantityHot = response.Data.QuantityHot;
        $scope.QuantityNew = response.Data.QuantityNew;
        $scope.ReceiveEmailComment = response.Data.ReceiveEmailComment;
        $scope.ShowControlSortBy = response.Data.ShowControlSortBy;
        $scope.ShowLikeShareFacebook = response.Data.ShowLikeShareFacebook;
        $scope.QuantitySlide = response.Data.QuantitySlide;
        $scope.HeightRatio = response.Data.HeightRatio;
        $scope.WidthRatio = response.Data.WidthRatio;
        $scope.ColumnExchange = response.Data.ColumnExchange;
        var ratio = $scope.Ratios.filter(function (c) { return c.WidthRatio == $scope.WidthRatio && c.HeightRatio == $scope.HeightRatio })[0]
        if (ratio != null)
            $scope.Ratio = ratio.Id;
        else
            $scope.Ratio = 1;
    }
    $scope.updateConfigExchange = function () {
        var obj = {
            AllowComment: $scope.AllowComment,
            AllowCommentFacebook: $scope.AllowCommentFacebook,
            ApproveCommentPost: $scope.ApproveCommentPost,
            Order: $scope.Order,
            Sort: $scope.Sort,
            PageSize: $scope.PageSize,
            QuantityHot: $scope.QuantityHot,
            QuantityNew: $scope.QuantityNew,
            ReceiveEmailComment: $scope.ReceiveEmailComment,
            ShowControlSortBy: $scope.ShowControlSortBy,
            ShowLikeShareFacebook: $scope.ShowLikeShareFacebook,
            TextPriceZero: $scope.TextPriceZero,
            QuantitySlide: $scope.QuantitySlide,
            ColumnExchange: $scope.ColumnExchange,
        };
        var ratio = $scope.Ratios[$scope.Ratio - 1];
        obj.WidthRatio = ratio.WidthRatio;
        obj.HeightRatio = ratio.HeightRatio;
        configService.updateConfigExchange(obj, $scope.updateConfigExchangeCompleted, $scope.updateError);
    }
    $scope.updateConfigExchangeCompleted = function (response, status) {
        $scope.IsSuccess = response.IsSuccess;
        $scope.IsError = response.IsError;
        $scope.InValid = response.InValid;
    }
    $scope.changeColumnExchange = function (columnExchange) {
        $scope.ColumnExchange = columnExcchange;
    }

    $scope.initConfigNews = function () {
        $scope.PageSizes = [{ Id: 12, Name: "12" }, { Id: 24, Name: "24" }, { Id: 36, Name: "36" }, { Id: 48, Name: "48" }, { Id: 60, Name: "60" }, { Id: 72, Name: "72" }];
        $scope.NewsSorts = [{ Code: "index", Name: "Thứ tự" }, { Code: "CreatedDate", Name: "Ngày tạo" }, { Code: "Name", Name: "Tên tin tức" }];
        $scope.NewsOrders = [{ Code: "asc", Name: "Tăng dần" }, { Code: "desc", Name: "Giảm dần" }];
        $scope.Ratios = [{ Id: 1, Name: "3x2", WidthRatio: 3, HeightRatio: 2 }, { Id: 2, Name: "4x3", WidthRatio: 4, HeightRatio: 3 }, { Id: 3, Name: "1x1", WidthRatio: 1, HeightRatio: 1 }, { Id: 4, Name: "3x4", WidthRatio: 3, HeightRatio: 4 }, { Id: 5, Name: "2x3", WidthRatio: 2, HeightRatio: 3 }];

        configService.getConfigNews($scope.getConfigNewsCompleted, $scope.getError);
    }
    $scope.getConfigNewsCompleted = function (response) {
        $scope.AllowComment = response.Data.AllowComment;
        $scope.AllowCommentFacebook = response.Data.AllowCommentFacebook;
        $scope.ApproveCommentPost = response.Data.ApproveCommentPost;
        $scope.Order = response.Data.Order;
        $scope.Sort = response.Data.Sort;
        $scope.PageSize = response.Data.PageSize;
        $scope.QuantityHot = response.Data.QuantityHot;
        $scope.QuantityNew = response.Data.QuantityNew;
        $scope.ReceiveEmailComment = response.Data.ReceiveEmailComment;
        $scope.ShowControlSortBy = response.Data.ShowControlSortBy;
        $scope.ShowLikeShareFacebook = response.Data.ShowLikeShareFacebook;
        $scope.QuantitySlide = response.Data.QuantitySlide;
        $scope.HeightRatio = response.Data.HeightRatio;
        $scope.WidthRatio = response.Data.WidthRatio;
        var ratio = $scope.Ratios.filter(function (c) { return c.WidthRatio == $scope.WidthRatio && c.HeightRatio == $scope.HeightRatio })[0]
        if (ratio != null)
            $scope.Ratio = ratio.Id;
        else
            $scope.Ratio = 1;
    }
    $scope.updateConfigNews = function () {
        var obj = {
            AllowComment: $scope.AllowComment,
            AllowCommentFacebook: $scope.AllowCommentFacebook,
            AllowOrder: $scope.AllowOrder,
            ApproveCommentPost: $scope.ApproveCommentPost,
            Order: $scope.Order,
            Sort: $scope.Sort,
            PageSize: $scope.PageSize,
            QuantityHot: $scope.QuantityHot,
            QuantityNew: $scope.QuantityNew,
            ReceiveEmailComment: $scope.ReceiveEmailComment,
            ShowControlSortBy: $scope.ShowControlSortBy,
            ShowLikeShareFacebook: $scope.ShowLikeShareFacebook,
            QuantitySlide: $scope.QuantitySlide,
        };
        var ratio = $scope.Ratios[$scope.Ratio - 1];
        obj.WidthRatio = ratio.WidthRatio;
        obj.HeightRatio = ratio.HeightRatio;
        configService.updateConfigNews(obj, $scope.updateConfigNewsCompleted, $scope.updateError);
    }
    $scope.updateConfigNewsCompleted = function (response, status) {
        $scope.IsSuccess = response.IsSuccess;
        $scope.IsError = response.IsError;
        $scope.InValid = response.InValid;
    }

    $scope.changePageSize = function (pageSize) {
        $scope.PageSize = pageSize;
    }
    $scope.changeRatio = function (ratio) {
        $scope.Ratio = ratio;
    }

    $scope.initBanner = function () {
        configService.getBannerTypes($scope.getBannerTypesCompleted, $scope.getError);
        configService.getBanner($scope.getBannerCompleted, $scope.getError);
    }
    $scope.getBannerCompleted = function (response) {
        $scope.Color = response.Data.Color;
        $scope.Id = response.Data.Id;
        $scope.IsUpload = response.Data.IsUpload;
        $scope.Image = response.Data.Image;
        $scope.IsColor = response.Data.IsColor;
        $scope.IsDefault = response.Data.IsDefault;
        $scope.IsBanner = response.Data.IsBanner;
        $scope.IsFixed = response.Data.IsFixed;
        $scope.Height = response.Data.Height;
        $scope.Width = response.Data.Width;
        $scope.BannerType = response.Data.BannerType;
        if ($scope.Image == "")
            $scope.Image = "/Areas/Admin/Images/icon-upload.png";

        $scope.Current = {};
        $scope.Current.Color = response.Data.Color;
        $scope.Current.Id = response.Data.Id;
        $scope.Current.IsUpload = response.Data.IsUpload;
        $scope.Current.Image = response.Data.Image;
        $scope.Current.IsColor = response.Data.IsColor;
        $scope.Current.IsDefault = response.Data.IsDefault;
        $scope.Current.IsBanner = response.Data.IsBanner;
        $scope.Current.IsFixed = response.Data.IsFixed;
        $scope.Current.Height = response.Data.Height;
        $scope.Current.Width = response.Data.Width;
        $scope.Current.BannerType = response.Data.BannerType;
    }
    $scope.getBannerTypesCompleted = function (response) {
        $scope.BannerTypes = response.Records;
    }
    $scope.updateBanner = function () {
        var obj = {
            Id: $scope.Id,
            Color: $scope.Color,
            IsUpload: $scope.IsUpload,
            Image: $scope.Image,
            IsColor: $scope.IsColor,
            IsDefault: $scope.IsDefault,
            IsFixed: $scope.IsFixed,
            IsBanner: $scope.IsBanner,
            Height: $scope.Height,
            Width: $scope.Width,
            BannerType: $scope.BannerType,
        };

        configService.updateBanner(obj, $scope.updateBannerCompleted, $scope.updateError);
    }
    $scope.updateBannerCompleted = function (response, status) {
        $scope.IsSuccess = response.IsSuccess;
        $scope.IsError = response.IsError;
        $scope.InValid = response.InValid;
    }

    $scope.addImage = function (image) {
        $scope.Image = image;
    }
    $scope.deleteImage = function () {
        $scope.Image = "/Areas/Admin/Images/icon-upload.png";
    };
    $scope.addLogo = function (logo) {
        $scope.Logo = logo;
    }
    $scope.deleteLogo = function () {
        $scope.Logo = "/Areas/Admin/Images/icon-upload.png";
    };
    $scope.addFavicon = function (favicon) {
        $scope.Favicon = favicon;
    }
    $scope.deleteFavicon = function () {
        $scope.Favicon = "/Areas/Admin/Images/icon-upload.png";
    };
    $scope.updateError = function (response) {
        $scope.IsSuccess = response.IsSuccess;
        $scope.IsError = response.IsError;
        $scope.InValid = response.InValid;
        $scope.Message = alertsService.FormatMessage(response.ReturnMessage);
    }

    $scope.initBackground = function () {
        configService.getBackgroundTypes($scope.getBackgroundTypesCompleted, $scope.getError);
        configService.getBackground($scope.getBackgroundCompleted, $scope.getError);
    }
    $scope.getBackgroundCompleted = function (response) {
        $scope.Color = response.Data.Color;
        $scope.Id = response.Data.Id;
        $scope.IsUpload = response.Data.IsUpload;
        $scope.Image = response.Data.Image;
        $scope.IsColor = response.Data.IsColor;
        $scope.IsDefault = response.Data.IsDefault;
        $scope.IsFixed = response.Data.IsFixed;
        $scope.BackgroundType = response.Data.BackgroundType;
        if ($scope.Image == "")
            $scope.Image = "/Areas/Admin/Images/icon-upload.png";

        $scope.Current = {};
        $scope.Current.Color = response.Data.Color;
        $scope.Current.Id = response.Data.Id;
        $scope.Current.Image = response.Data.Image;
        $scope.Current.IsUpload = response.Data.IsUpload;
        $scope.Current.IsColor = response.Data.IsColor;
        $scope.Current.IsDefault = response.Data.IsDefault;
        $scope.Current.IsFixed = response.Data.IsFixed;
        $scope.Current.BackgroundType = response.Data.BackgroundType;
    }
    $scope.getBackgroundTypesCompleted = function (response) {
        $scope.BackgroundTypes = response.Records;
    }
    $scope.updateBackground = function () {
        var obj = {
            Id: $scope.Id,
            Color: $scope.Color,
            IsUpload: $scope.IsUpload,
            Image: $scope.Image,
            IsColor: $scope.IsColor,
            IsDefault: $scope.IsDefault,
            IsFixed: $scope.IsFixed,
            BackgroundType: $scope.BackgroundType,
        };

        configService.updateBackground(obj, $scope.updateBackgroundCompleted, $scope.updateError);
    }
    $scope.updateBackgroundCompleted = function (response, status) {
        $scope.IsSuccess = response.IsSuccess;
        $scope.IsError = response.IsError;
        $scope.InValid = response.InValid;
    }
    $scope.DoCtrlPagingAct = function (text, page, pageSize, total) {
        var itemSearch = {
            jtStartIndex: (page - 1) * pageSize,
            jtPageSize: $scope.pageSize,
        };
        configService.getInvoice(itemSearch, $scope.getInvoiceCompleted, $scope.getError);
    };
    $scope.initConfigAccount = function () {
        $scope.currentPage = 1;
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

        configService.getPackageCurrent($scope.getPackageCurrentCompleted, $scope.getError);
        var itemSearch = {
            jtStartIndex: 0,
            jtPageSize: $scope.pageSize,
        };
        configService.getInvoice(itemSearch, $scope.getInvoiceCompleted, $scope.getError);
    }
    $scope.getPackageCurrentCompleted = function (response) {
        $scope.ItemUsed = response.Data.ItemUsed;
        $scope.ItemLimit = response.Data.ItemLimit;
        $scope.CapacityUsed = response.Data.CapacityUsed;
        $scope.Capacity = response.Data.Capacity;
        $scope.CapacityUsedPercent = response.Data.CapacityUsedPercent;
        $scope.BeginUse = response.Data.BeginUse;
        $scope.EndUse = response.Data.EndUse;
        $scope.PackageNameCurrent = response.Data.PackageNameCurrent;
        $scope.AccountStatus = response.Data.AccountStatus;
    }
    $scope.getInvoiceCompleted = function (response) {
        $scope.Invoices = response.Records;
        $scope.TotalRecordCount = response.TotalRecordCount;
        $scope.total = response.TotalRecordCount;
    }

    $scope.initConfigAccountChange = function () {
        configService.getAllowCreateInvoice($scope.getAllowCreateInvoiceCompleted, $scope.getError);
        configService.getPackageCurrent($scope.getPackageCurrentCompleted, $scope.getError);
    }
    $scope.getAllowCreateInvoiceCompleted = function (response) {
        $scope.Allow = response.Data.Allow;
        $scope.InvoiceId = response.Data.InvoiceId;
        $scope.Message = response.Data.Message;
        $scope.IsError = response.Data.IsError;
    }
    $scope.initConfigAccountCheckout = function () {
        var packageID = ($routeParams.id || "");
        $rootScope.applicationModule = "ConfigAccountCheckout";
        $rootScope.alerts = [];

        $scope.Months = [{ Id: 12, Name: "12 tháng" }, { Id: 24, Name: "24 tháng - Tặng 6 tháng" }, { Id: 36, Name: "36 tháng - Tặng 12 tháng" }];
        configService.getPackageCurrent($scope.getPackageCurrentCompleted, $scope.getError);
        if (packageID > 0) {
            var obj = new Object();
            obj.id = packageID;
            obj.month = 12;
            obj.methodId = 1;
            configService.getPackage(obj, $scope.getPackageCompleted, $scope.getError);
        }
    }
    $scope.initConfigAccountCheckoutATMComplete = function () {
        var obj = $location.search();
        configService.checkoutOnePayATMComplete(obj, $scope.checkoutOnePayCompleted, $scope.checkoutOnePayCompletedError);
    }
    $scope.initConfigAccountCheckoutVisaComplete = function () {
        var obj = $location.search();
        configService.checkoutOnePayVisaComplete(obj, $scope.checkoutOnePayCompleted, $scope.checkoutOnePayCompletedError);
    }
    $scope.checkoutOnePayCompleted = function (response) {
        $scope.Id = response.Data.Id;
        $scope.Amount = response.Data.Amount;
        $scope.AutoCode = response.Data.AutoCode;
        $scope.CreatedDate = response.Data.CreatedDate;
        $scope.DayRemain = response.Data.DayRemain;
        $scope.Discount = response.Data.Discount;
        $scope.Price = response.Data.Price;
        $scope.Inactive = response.Data.Inactive;
        $scope.DiscountAmount = response.Data.DiscountAmount;
        $scope.Month = response.Data.Month;
        $scope.PackageId = response.Data.PackageId;
        $scope.PackageName = response.Data.PackageName;
        $scope.NewDateExpire = response.Data.NewDateExpire;
        $scope.PaymentMethodId = response.Data.PaymentMethodId;
        $scope.ShopId = response.Data.ShopId;
        $scope.StateId = response.Data.StateId;
        $scope.StateName = response.Data.StateName;
        $scope.Timestamp = response.Data.Timestamp;
        $scope.TotalAmount = response.Data.TotalAmount;
        $scope.TransactionCode = response.Data.TransactionCode;

        $scope.Message = response.Message;
        $scope.StatusCode = response.StatusCode;
        $scope.Result = response.Result;
        $scope.IsError = false;
    }
    $scope.checkoutOnePayCompletedError = function (response) {
        $scope.Message = response.Message;
        $scope.StatusCode = response.StatusCode;
        $scope.Result = response.Result;
        $scope.IsError = true;
    }
    $scope.getPackage = function () {
        var obj = new Object();
        obj.id = $scope.PackageId;
        obj.month = $scope.Month;
        obj.methodId = $scope.PaymentMethodId;
        configService.getPackage(obj, $scope.getPackageCompleted, $scope.getError);
    }

    $scope.getPackageCompleted = function (response) {
        $scope.Id = response.Data.Id;
        $scope.Amount = response.Data.Amount;
        $scope.AutoCode = response.Data.AutoCode;
        $scope.CreatedDate = response.Data.CreatedDate;
        $scope.DayRemain = response.Data.DayRemain;
        $scope.Discount = response.Data.Discount;
        $scope.Price = response.Data.Price;
        $scope.Inactive = response.Data.Inactive;
        $scope.DiscountAmount = response.Data.DiscountAmount;
        $scope.Month = response.Data.Month;
        $scope.PackageId = response.Data.PackageId;
        $scope.PackageName = response.Data.PackageName;
        $scope.NewDateExpire = response.Data.NewDateExpire;
        $scope.PaymentMethodId = response.Data.PaymentMethodId;
        $scope.ShopId = response.Data.ShopId;
        $scope.StateId = response.Data.StateId;
        $scope.StateName = response.Data.StateName;
        $scope.Timestamp = response.Data.Timestamp;
        $scope.TotalAmount = response.Data.TotalAmount;
        $scope.TransactionCode = response.Data.TransactionCode;
    }
    $scope.getError = function (response) {
        $scope.Message = response.Message;
    }
    $scope.checkout = function () {
        var obj = {
            PaymentMethodId: $scope.PaymentMethodId,
        };
        configService.checkoutAccount(obj, $scope.checkoutAccountCompleted, $scope.getError);
    }
    $scope.checkoutAccountCompleted = function (response) {
        $window.location.href = response.Data;
    }

    $scope.initConfigAccountTransfer = function () {
        var invoiceID = ($routeParams.id || "");
        $rootScope.applicationModule = "ConfigAccountTransfer";
        $rootScope.alerts = [];

        if (invoiceID > 0) {
            var obj = new Object();
            obj.id = invoiceID;
            configService.getInvoiceById(obj, $scope.getInvoiceByIdCompleted, $scope.getError);
        }
    }
    $scope.initConfigAccountInvoice = function () {
        var invoiceID = ($routeParams.id || "");
        $rootScope.applicationModule = "ConfigAccountInvoice";
        $rootScope.alerts = [];

        if (invoiceID > 0) {
            var obj = new Object();
            obj.id = invoiceID;
            configService.getInvoiceById(obj, $scope.getInvoiceByIdCompleted, $scope.getError);
        }
    }
    $scope.cancelInvoice = function () {
        var obj = new Object();
        obj.id = $scope.Id;
        configService.cancelInvoice(obj, $scope.cancelInvoiceCompleted, $scope.updateError);
    }
    $scope.cancelInvoiceCompleted = function (response, status) {
        $scope.IsSuccess = response.IsSuccess;
        $scope.IsError = response.IsError;
        $scope.InValid = response.InValid;
        $route.reload();
    }
    $scope.updateError = function (response) {
        $scope.IsSuccess = response.IsSuccess;
        $scope.IsError = response.IsError;
        $scope.InValid = response.InValid;
        $scope.Message = alertsService.FormatMessage(response.ReturnMessage);
    }
    $scope.getInvoiceByIdCompleted = function (response) {
        $scope.Id = response.Data.Id;
        $scope.Amount = response.Data.Amount;
        $scope.AutoCode = response.Data.AutoCode;
        $scope.CreatedDate = response.Data.CreatedDate;
        $scope.DayRemain = response.Data.DayRemain;
        $scope.Discount = response.Data.Discount;
        $scope.Price = response.Data.Price;
        $scope.Inactive = response.Data.Inactive;
        $scope.DiscountAmount = response.Data.DiscountAmount;
        $scope.Month = response.Data.Month;
        $scope.PackageId = response.Data.PackageId;
        $scope.PackageName = response.Data.PackageName;
        $scope.NewDateExpire = response.Data.NewDateExpire;
        $scope.PaymentMethodId = response.Data.PaymentMethodId;
        $scope.ShopId = response.Data.ShopId;
        $scope.StateId = response.Data.StateId;
        $scope.StateName = response.Data.StateName;
        $scope.Timestamp = response.Data.Timestamp;
        $scope.TotalAmount = response.Data.TotalAmount;
        $scope.TransactionCode = response.Data.TransactionCode;
    }
    $scope.initConfigShipping = function () {
        configService.getShippingAddress($scope.getShippingAddressCompleted, $scope.getError);
        configService.getProvinces($scope.getProvincesCompleted, $scope.getError);
        configService.getShipping($scope.getShippingCompleted, $scope.getError);
        configService.getTransport($scope.getTransportCompleted, $scope.getError);
        $scope.ShippingCriterions = [{ Id: 1, Name: "Dựa trên giá sản phẩm" }, { Id: 2, Name: "Dựa trên khối lượng sản phẩm" }];
        $scope.ShippingPaymentTypes = [{ Id: 1, Name: "Thanh toán cuối kỳ" }, { Id: 2, Name: "Thanh toán ngay" }];
        $scope.ShippingCriterionId = 1;
        $scope.ShippingPaymentType = 1;
        $scope.ShowMax = false;
        $scope.RangeFrom = 0;
        $scope.RangeTo = null;
        $scope.ShippingPrice = 0;
    }
    $scope.getShippingCompleted = function (response) {
        $scope.ShippingAreas = response.Records;
    }
    $scope.getShippingAddressCompleted = function (response) {
        $scope.Id = response.Data.Id;
        $scope.ShippingAddress = response.Data.ShippingAddress;
        $scope.ShippingDistrictId = response.Data.ShippingDistrictId;
        $scope.ShippingDistrictName = response.Data.ShippingDistrictName;
        $scope.ShippingProvinceId = response.Data.ShippingProvinceId;
        $scope.ShippingProvinceName = response.Data.ShippingProvinceName;
    }
    $scope.getProvincesCompleted = function (response) {
        $scope.Provinces = response.Records;
        $scope.ProvinceAreas = response.Records;
        var first = { Id: 0, Name: "Các tỉnh thành khác" };
        $scope.ProvinceAreas.unshift(first);
        if ($scope.ShippingProvinceId <= 0) {
            if (response.Records.length > 0) {
                $scope.ShippingProvinceId = response.Records[0].Id;
                $scope.getDistricts();
            }
        }
        else {
            $scope.getDistricts();
        }
        if (response.Records.length > 0)
            $scope.ProvinceId = response.Records[0].Id;
    }
    $scope.getDistricts = function () {
        var obj = new Object();
        obj.provinceId = $scope.ShippingProvinceId;
        configService.getDistricts(obj, $scope.getDistrictsCompleted, $scope.getError);
    }
    $scope.changeProvince = function () {
        var obj = new Object();
        obj.provinceId = $scope.ShippingProvinceId;
        configService.getDistricts(obj, $scope.changeProvinceCompleted, $scope.getError);
    }
    $scope.getDistrictsCompleted = function (response) {
        $scope.Districts = response.Records;
        if ($scope.ShippingDistrictId <= 0 && response.Records.length > 0)
            $scope.ShippingDistrictId = response.Records[0].Id;
    }
    $scope.changeProvinceCompleted = function (response) {
        $scope.Districts = response.Records;
        if (response.Records.length > 0)
            $scope.ShippingDistrictId = response.Records[0].Id;
    }
    $scope.updateShippingAddress = function () {
        var obj = new Object();
        obj.Id = $scope.Id;
        obj.ShippingAddress = $scope.ShippingAddress;
        obj.ShippingDistrictId = $scope.ShippingDistrictId;
        obj.ShippingProvinceId = $scope.ShippingProvinceId;
        configService.updateShippingAddress(obj, $scope.updateShippingAddressCompleted, $scope.updateError);
    }
    $scope.updateShippingAddressCompleted = function (response, status) {
        configService.getShippingAddress($scope.getShippingAddressCompleted, $scope.getError);
        $('#modalShippingAddress').modal('toggle');
    }

    $scope.createShippingArea = function () {
        var obj = new Object();
        obj.ProvinceId = $scope.ProvinceId;
        configService.createShippingArea(obj, $scope.createShippingAreaCompleted, $scope.updateError);
    }
    $scope.createShippingAreaCompleted = function (response, status) {
        $('#modalShippingArea').modal('toggle');
        configService.getShipping($scope.getShippingCompleted, $scope.getError);
    }
    $scope.deleteShippingArea = function () {
        var obj = new Object();
        obj.id = $scope.CurrentShippingAreaId;
        configService.deleteShippingArea(obj, $scope.deleteShippingAreaCompleted, $scope.updateError);
    }
    $scope.deleteShippingAreaCompleted = function (response, status) {
        $('#modalShippingDelete').modal('toggle');
        configService.getShipping($scope.getShippingCompleted, $scope.getError);
    }
    $scope.confirmShippingArea = function (item) {
        $scope.CurrentShippingAreaId = item.Id;
        $scope.CurrentShippingAreaName = item.ProvinceName;
        if ($scope.RangeTo <= 0)
            $scope.ShowMax = false;
    }
    $scope.toggleShippingDistrictRate = function (it) {
        it.IsShow = !it.IsShow;
        if (it.RangeTo <= 0)
            it.ShowMax = false;
    }
    $scope.showRangeTo = function (it) {
        it.ShowMax = true;
    }
    $scope.showAddRangeTo = function () {
        $scope.ShowMax = true;
    }
    $scope.createShippingRate = function () {
        var obj = {
            Id: $scope.Id,
            Name: $scope.ShippingRateName,
            ShippingAreaId: $scope.CurrentShippingAreaId,
            ShippingCriterionId: $scope.ShippingCriterionId,
            RangeFrom: $scope.RangeFrom,
            RangeTo: $scope.RangeTo,
            ShippingPrice: $scope.ShippingPrice,
        };
        configService.createShippingRate(obj, $scope.createShippingRateCompleted, $scope.updateError);
    }
    $scope.createShippingRateCompleted = function (response, status) {
        $('#modalShippingRate').modal('toggle');
        configService.getShipping($scope.getShippingCompleted, $scope.getError);
    }
    $scope.updateShippingRate = function (obj) {
        configService.updateShippingRate(obj, $scope.updateShippingRateCompleted, $scope.updateError);
    }
    $scope.updateShippingRateCompleted = function (response, status) {
    }
    $scope.confirmShippingRate = function (item, it) {
        $scope.CurrentShippingAreaId = item.Id;
        $scope.CurrentShippingAreaName = item.ProvinceName;
        $scope.CurrentShippingRateId = it.Id;
        $scope.CurrentShippingRateName = it.Name;
    }
    $scope.deleteShippingRate = function () {
        var obj = new Object();
        obj.id = $scope.CurrentShippingRateId;
        configService.deleteShippingRate(obj, $scope.deleteShippingRateCompleted, $scope.updateError);
    }
    $scope.deleteShippingRateCompleted = function (response, status) {
        $('#modalShippingRateDelete').modal('toggle');
        configService.getShipping($scope.getShippingCompleted, $scope.getError);
    }
    $scope.updateConfigTransport = function (obj) {
        configService.updateConfigTransport(obj, $scope.updateConfigTransportCompleted, $scope.updateConfigTransportError);
    }
    $scope.updateConfigTransportCompleted = function (response, status) {
        configService.getTransport($scope.getTransportCompleted, $scope.getError);
    }
    $scope.updateConfigTransportError = function (response, status) {
        $scope.IsSuccess = response.IsSuccess;
        $scope.IsError = response.IsError;
        $scope.InValid = response.InValid;
        $scope.Message = alertsService.FormatMessage(response.ReturnMessage);
        alert(response.ReturnMessage);
    }
    $scope.getTransportCompleted = function (response) {
        $scope.Transports = response.Records;
    }
    $scope.toggleConfigTransport = function (item) {
        item.IsShow = !item.IsShow;
    }
    $scope.deleteConfigTransport = function () {
        var obj = new Object();
        obj.id = $scope.CurrentTransportId;
        configService.deleteConfigTransport(obj, $scope.deleteConfigTransportCompleted, $scope.updateError);
    }
    $scope.deleteConfigTransportCompleted = function (response, status) {
        $('#modalTransport').modal('toggle');
        configService.getTransport($scope.getTransportCompleted, $scope.getError);
    }
    $scope.confirmConfigTransport = function (item) {
        $scope.CurrentTransportId = item.Id;
        $scope.CurrentTransportName = item.TransportName;
    }

    $scope.initConfigCheckout = function () {
        $scope.getPaymentTypeOther();
        $scope.getPaymentMethodOther();
        $scope.getPaymentTypeOnePay();
        $scope.getPaymentMethodOnePay();
        $scope.getPaymentTypePayPall();
        $scope.getPaymentMethodPayPall();
        $scope.Other = [];
        $scope.OnePay = [];
        $scope.PayPall = [];
    }
    $scope.getPaymentTypeOther = function () {
        configService.getPaymentTypeOther($scope.getPaymentTypeOtherCompleted, $scope.getError);
    }
    $scope.getPaymentTypeOnePay = function () {
        configService.getPaymentTypeOnePay($scope.getPaymentTypeOnePayCompleted, $scope.getError);
    }
    $scope.getPaymentTypePayPall = function () {
        configService.getPaymentTypePayPall($scope.getPaymentTypePayPallCompleted, $scope.getError);
    }
    $scope.getPaymentTypeOtherCompleted = function (response, status) {
        $scope.PaymentTypeOtherId = 0;
        $scope.PaymentTypeOthers = response.Records;
        var first = { Id: 0, Name: "Chọn phương thức thanh toán" };
        $scope.PaymentTypeOthers.unshift(first);
    }
    $scope.getPaymentTypeOnePayCompleted = function (response, status) {
        $scope.PaymentTypeOnePayId = 0;
        $scope.PaymentTypeOnePays = response.Records;
        var first = { Id: 0, Name: "Chọn phương thức thanh toán" };
        $scope.PaymentTypeOnePays.unshift(first);
    }
    $scope.getPaymentTypePayPallCompleted = function (response, status) {
        $scope.PaymentTypePayPallId = 0;
        $scope.PaymentTypePayPalls = response.Records;
        var first = { Id: 0, Name: "Chọn phương thức thanh toán" };
        $scope.PaymentTypePayPalls.unshift(first);
    }
    $scope.getPaymentMethodOther = function () {
        configService.getPaymentMethodOther($scope.getPaymentMethodOtherCompleted, $scope.getError);
    }
    $scope.getPaymentMethodOnePay = function () {
        configService.getPaymentMethodOnePay($scope.getPaymentMethodOnePayCompleted, $scope.getError);
    }
    $scope.getPaymentMethodPayPall = function () {
        configService.getPaymentMethodPayPall($scope.getPaymentMethodPayPallCompleted, $scope.getError);
    }

    $scope.getPaymentMethodOtherCompleted = function (response, status) {
        $scope.PaymentMethodOthers = response.Records;
    }
    $scope.getPaymentMethodOnePayCompleted = function (response, status) {
        $scope.PaymentMethodOnePays = response.Records;
    }
    $scope.getPaymentMethodPayPallCompleted = function (response, status) {
        $scope.PaymentMethodPayPalls = response.Records;
    }

    $scope.changePaymentTypeOther = function (value) {
        var result = $scope.PaymentTypeOthers.filter(function (o) { return o.Id == value; });
        $scope.Other.Name = result[0].Name;
    }
    $scope.changePaymentTypeOnePay = function (value) {
        var result = $scope.PaymentTypeOnePays.filter(function (o) { return o.Id == value; });
        $scope.OnePay.Name = result[0].Name;
    }
    $scope.changePaymentTypePayPall = function (value) {
        var result = $scope.PaymentTypePayPalls.filter(function (o) { return o.Id == value; });
        $scope.PayPall.Name = result[0].Name;
    }

    $scope.createPaymentMethodOther = function () {
        var obj = {
            PaymentTypeId: $scope.PaymentTypeOtherId,
            Name: $scope.Other.Name,
            Summary: $scope.Other.Summary,
        };
        configService.createPaymentMethod(obj, $scope.createPaymentMethodOtherCompleted, $scope.updateError);
    }
    $scope.createPaymentMethodOnePay = function () {
        var obj = {
            PaymentTypeId: $scope.PaymentTypeOnePayId,
            Name: $scope.OnePay.Name,
            MerchantId: $scope.OnePay.MerchantId,
            AccessCode: $scope.OnePay.AccessCode,
            SecureHash: $scope.OnePay.SecureHash,
            IsSandbox: $scope.OnePay.IsSandbox,
            AssignedUserEmail: $scope.OnePay.AssignedUserEmail,
        };
        configService.createPaymentMethod(obj, $scope.createPaymentMethodOnePayCompleted, $scope.updateError);
    }
    $scope.createPaymentMethodPayPall = function () {
        var obj = {
            PaymentTypeId: $scope.PaymentTypePayPallId,
            Name: $scope.PayPall.Name,
            MerchantId: $scope.PayPall.MerchantId,
            AccessCode: $scope.PayPall.AccessCode,
            SecureHash: $scope.PayPall.SecureHash,
            VerifyCode: $scope.PayPall.VerifyCode,
            ExchangeRateVNDToUSD: $scope.PayPall.ExchangeRateVNDToUSD,
            IsSandbox: $scope.PayPall.IsSandbox,
            AssignedUserEmail: $scope.PayPall.AssignedUserEmail,
        };
        configService.createPaymentMethod(obj, $scope.createPaymentMethodPayPallCompleted, $scope.updateError);
    }

    $scope.createPaymentMethodOtherCompleted = function (response, status) {
        $scope.getPaymentTypeOther();
        $scope.getPaymentMethodOther();
    }
    $scope.createPaymentMethodOnePayCompleted = function (response, status) {
        $scope.getPaymentTypeOnePay();
        $scope.getPaymentMethodOnePay();
    }
    $scope.createPaymentMethodPayPallCompleted = function (response, status) {
        $scope.getPaymentTypePayPall();
        $scope.getPaymentMethodPayPall();
    }

    $scope.updatePaymentMethodOther = function (item) {
        var obj = {
            Id: item.Id,
            PaymentTypeId: item.PaymentTypeId,
            Name: item.Name,
            Summary: item.Summary,
        };
        configService.updatePaymentMethod(obj, $scope.updatePaymentMethodOtherCompleted, $scope.updateError);
    }
    $scope.updatePaymentMethodOnePay = function (item) {
        var obj = {
            Id: item.Id,
            PaymentTypeId: item.PaymentTypeId,
            Name: item.Name,
            MerchantId: item.MerchantId,
            AccessCode: item.AccessCode,
            SecureHash: item.SecureHash,
            IsSandbox: item.IsSandbox,
            AssignedUserEmail: item.AssignedUserEmail,
        };
        configService.updatePaymentMethod(obj, $scope.updatePaymentMethodOnePayCompleted, $scope.updateError);
    }
    $scope.updatePaymentMethodPayPall = function (item) {
        var obj = {
            Id: item.Id,
            PaymentTypeId: item.PaymentTypeId,
            Name: item.Name,
            MerchantId: item.MerchantId,
            AccessCode: item.AccessCode,
            SecureHash: item.SecureHash,
            VerifyCode: item.VerifyCode,
            ExchangeRateVNDToUSD: item.ExchangeRateVNDToUSD,
            IsSandbox: item.IsSandbox,
            AssignedUserEmail: item.AssignedUserEmail,
        };
        configService.updatePaymentMethod(obj, $scope.updatePaymentMethodOnePayCompleted, $scope.updateError);
    }

    $scope.updatePaymentMethodOtherCompleted = function (response, status) {
        $scope.getPaymentTypeOther();
        $scope.getPaymentMethodOther();
    }
    $scope.updatePaymentMethodOnePayCompleted = function (response, status) {
        $scope.getPaymentTypeOnePay();
        $scope.getPaymentMethodOnePay();
    }
    $scope.updatePaymentMethodPayPallCompleted = function (response, status) {
        $scope.getPaymentTypePayPall();
        $scope.getPaymentMethodPayPall();
    }

    $scope.confirmDeletePaymentMethod = function (item) {
        $scope.CurrentPaymentMethodId = item.Id;
        $scope.CurrentPaymentMethodName = item.Name;
    }
    $scope.deletePaymentMethodOther = function () {
        var obj = {
            Id: $scope.CurrentPaymentMethodId,
        };
        configService.deletePaymentMethod(obj, $scope.deletePaymentMethodOtherCompleted, $scope.updateError);
    }
    $scope.deletePaymentMethodOnePay = function () {
        var obj = {
            Id: $scope.CurrentPaymentMethodId,
        };
        configService.deletePaymentMethod(obj, $scope.deletePaymentMethodOnePayCompleted, $scope.updateError);
    }
    $scope.deletePaymentMethodPayPall = function () {
        var obj = {
            Id: $scope.CurrentPaymentMethodId,
        };
        configService.deletePaymentMethod(obj, $scope.deletePaymentMethodPayPallCompleted, $scope.updateError);
    }

    $scope.deletePaymentMethodOtherCompleted = function (response, status) {
        $('#modalPaymentMethodOtherDelete').modal('toggle');
        $scope.getPaymentTypeOther();
        $scope.getPaymentMethodOther();
    }
    $scope.deletePaymentMethodOnePayCompleted = function (response, status) {
        $('#modalPaymentMethodOnePayDelete').modal('toggle');
        $scope.getPaymentTypeOnePay();
        $scope.getPaymentMethodOnePay();
    }
    $scope.deletePaymentMethodPayPallCompleted = function (response, status) {
        $('#modalPaymentMethodPayPallDelete').modal('toggle');
        $scope.getPaymentTypePayPall();
        $scope.getPaymentMethodPayPall();
    }

    $scope.togglePaymentMethod = function (item) {
        item.IsShow = !item.IsShow;
    }

    $scope.initConfigNotification = function () {
        configService.getNotifications($scope.getNotificationsCompleted, $scope.getError);
    }
    $scope.initConfigNotificationUpdate = function () {
        var notificationId = ($routeParams.id || "");
        var obj = {
            Id: notificationId
        };
        configService.getNotification(obj, $scope.getNotificationCompleted, $scope.getError);
    }
    $scope.getNotificationsCompleted = function (response) {
        $scope.Notifications = response.Records;
    }
    $scope.getNotificationCompleted = function (response) {
        $scope.notification = {
            Id: response.Data.Id,
            NotificationId: response.Data.NotificationId,
            TypeId: response.Data.TypeId,
            Name: response.Data.Name,
            Code: response.Data.Code,
            Title: response.Data.Title,
            Summary: response.Data.Summary,
            Content: response.Data.Content,
            Url: response.Data.Url,
            LogoUrl: response.Data.LogoUrl,
            LogoWidth: response.Data.LogoWidth,
            Color: response.Data.Color,
            Inactive: response.Data.Inactive,
        };
    }
    $scope.updateNotification = function () {
        configService.updateNotification($scope.notification, $scope.updateNotificationCompleted, $scope.updateError);
    }
    $scope.updateNotificationCompleted = function (response, status) {
        $scope.IsSuccess = response.IsSuccess;
        $scope.IsError = response.IsError;
        $scope.InValid = response.InValid;
    }
});
