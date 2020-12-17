app.controller('discountController', function ($scope, $rootScope, $route, $routeParams, $location, discountService, alertsService) {
    $scope.initializeController = function () {
        $scope.initObject();
    }
    $scope.initDiscoutListController = function () {
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

        $scope.getDiscounts();
    }

    $scope.DoCtrlPagingAct = function (text, page, pageSize, total) {
        var obj = {
            jtStartIndex: (page - 1),
            jtPageSize: $scope.pageSize,
        };
        discountService.getDiscounts(obj, $scope.getDiscountsCompleted, $scope.getError);
    };
    $scope.getDiscounts = function () {
        var itemSearch = {
            jtStartIndex: 0,
            jtPageSize: $scope.pageSize,
        };
        discountService.getDiscounts(itemSearch, $scope.getDiscountsCompleted, $scope.getError);
    }
    $scope.getDiscountsCompleted = function (response) {
        $scope.Discounts = response.Records;
        $scope.total = response.TotalRecordCount;
    }

    $scope.resetValues = function (index) {
        $scope.discount = {
            PromotionSelected: 0,
            IsPromotion: false,
            NoLimit: true,
            DiscountTypeId: 1,
            DiscountApplyId: 1,
            StartDate: new Date(),
            EndDate: new Date(),
            IsNeverExpired: true,
            LimitTimes: 1,
            DiscountAmount: 0,
            DiscountPercent: 0,
            DiscountShipping: 0,
            OrderOver: 0,
            ProductQuantity: 1,
            ApplyProductId: 0,
            ApplyProductGroupId: 0,
            ApplyProvinceId: 0,
        }
    }
    $scope.initObject = function () {
        $scope.PromotionSelected = [{ Id: 0, Name: "Mã khuyến mãi (Coupon)" }, { Id: 1, Name: "Chương trình khuyến mãi" }];
        $scope.CouponDiscountTypes = [{ Id: 1, Name: "VND" }, { Id: 2, Name: "% Giảm" }, { Id: 3, Name: "Miễn phí vận chuyển" }];
        $scope.PromotionDiscountTypes = [{ Id: 1, Name: "VND" }, { Id: 2, Name: "% Giảm" }];
        $scope.CouponApplyTypes = [{ Id: 1, Name: "Tất cả đơn hàng" }, { Id: 2, Name: "Trị giá đơn hàng từ" }, { Id: 3, Name: "Nhóm sản phẩm" }, { Id: 4, Name: "Sản phẩm" }];
        $scope.PromotionApplyTypes = [{ Id: 3, Name: "Nhóm sản phẩm" }, { Id: 4, Name: "Sản phẩm" }];
        $scope.DiscountOns = [{ Code: "PerOrder", Name: "Một lần trên một đơn hàng" }, { Code: "PerEveryItem", Name: "Cho từng mặt hàng trong giỏ hàng" }];
        $scope.discount = {
            PromotionSelected: 0,
            IsPromotion: false,
            NoLimit: true,
            DiscountTypeId: 1,
            DiscountApplyId: 1,
            StartDate: new Date(),
            EndDate: new Date(),
            IsNeverExpired: true,
            LimitTimes: 1,
            DiscountAmount: 0,
            DiscountPercent: 0,
            DiscountShipping: 0,
            OrderOver: 0,
            ProductQuantity: 1,
            ApplyProductId: 0,
            ApplyProductGroupId: 0,
            ApplyProvinceId: 0,
            DiscountOn: "PerOrder"
        };
        $scope.productSelected = {
            Id: 0,
            Name: "Chọn sản phẩm",
        };
        $scope.IsShowDropdowProduct = false;
        $scope.IsCreateProduct = false;
        $scope.CurrentPageProduct = 1;
        $scope.PageSize = 6;
    }
    $scope.changePromotion = function () {
        $scope.discount.IsPromotion = $scope.discount.PromotionSelected;
        if ($scope.discount.IsPromotion == true) {
            $scope.discount.DiscountApplyId = 3;
            discountService.getProductGroups($scope.getProductGroupsCompleted, $scope.createError);
        }
    }
    $scope.changeApplyType = function () {
        if ($scope.discount.DiscountApplyId == 3)
            discountService.getProductGroups($scope.getProductGroupsCompleted, $scope.createError);
    }
    $scope.getProductGroupsCompleted = function (response) {
        $scope.ProductGroups = response.Records;
    }
    $scope.changeDiscountType = function () {
        if ($scope.discount.DiscountTypeId == 3) {
            $scope.discount.DiscountApplyId = 1;
            $scope.discount.ApplyProductGroupId = 0;
            $scope.discount.ApplyProductId = 0;

            discountService.getProvinces($scope.getProvincesCompleted, $scope.createError);
        }
        else
        {
            $scope.discount.ApplyProvinceId = 0;
        }
    }
    $scope.getProvincesCompleted = function (response) {
        $scope.Provinces = response.Records;
    }

    $scope.getError = function (response) {
    }
    $scope.clearValidationErrors = function () {
    }
    $scope.selectedProduct = function (item) {
        $scope.discount.ApplyProductId = item.Id;
        $scope.productSelected = item;
    }
    $scope.generateCode = function () {
        discountService.generateCode($scope.generateCodeCompleted, $scope.createError);
    }
    $scope.generateCodeCompleted = function (response) {
        $scope.discount.Code = response;
    }

    $scope.showDropdowProduct = function () {
        $scope.IsShowDropdowProduct = !$scope.IsShowDropdowProduct;
        if ($scope.IsCreateProduct == false)
            $scope.getProducts($scope.CurrentPageProduct);
    }
    $scope.getProducts = function (page) {
        $scope.IsShowDropdowProduct = true;
        $scope.CurrentPageProduct = page;

        var obj = {
            jtStartIndex: $scope.CurrentPageProduct - 1,
            jtPageSize: $scope.PageSize,
            keyword: $scope.keywordProduct,
        };
        discountService.getProducts(obj, $scope.getProductsCompleted, $scope.getError);
    }
    $scope.getProductsCompleted = function (response) {
        $scope.IsCreateProduct = true;

        var totalRecord = response.TotalRecordCount;
        var pageCount = parseInt(totalRecord / $scope.PageSize);
        var fromRecord = ($scope.CurrentPageProduct - 1) * $scope.PageSize + 1;
        var toRecord = $scope.CurrentPageProduct * $scope.PageSize;

        if (totalRecord % $scope.PageSize != 0) {
            pageCount++;
        }
        if ($scope.CurrentPageProduct == pageCount)
            toRecord = totalRecord;

        $scope.TotalRecordProduct = totalRecord;
        $scope.PageCountProduct = pageCount;
        $scope.FromRecordProduct = fromRecord;
        $scope.ToRecordProduct = toRecord;

        $scope.Products = response.Records;
    }
    $scope.closeDropDown = function () {
        $scope.isopen = false;
    };
    $scope.create = function () {
        var discount = $scope.discount;
        discountService.create(discount, $scope.createCompleted, $scope.createError);
    }
    $scope.createBack = function () {
        var discount = $scope.discount;
        discountService.create(discount, $scope.createBackCompleted, $scope.createError);
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
        $location.path("/discount");
    }
    $scope.createError = function (response) {
        $scope.IsSuccess = response.IsSuccess;
        $scope.IsError = response.IsError;
        $scope.InValid = response.InValid;
        $scope.Message = alertsService.FormatMessage(response.ReturnMessage);
    }
    
    $scope.confrimDeleteDiscount = function (id) {
        $scope.CurrentDiscountId = id;
        $('#modalDelete').modal('toggle');
    }
    $scope.deleteDiscount = function () {
        var discount = { Id: $scope.CurrentDiscountId };
        discountService.delete(discount, $scope.deleteDiscountCompleted, $scope.deletesError);
    }
    $scope.deleteDiscountCompleted = function (response, status) {
        $('#modalDelete').modal('toggle');
        $scope.getDiscounts();
    }

    $scope.deletes = function (arr) {
        discountService.deletes(arr, $scope.deletesCompleted, $scope.deletesError);
    }
    $scope.deletesCompleted = function (response, status) {
        $route.reload();
    }
    $scope.deletesError = function (response) {
        alert(response.Message);
    }

    $scope.disableDiscount = function (id) {
        var discount = { Id: id };
        discountService.disableDiscount(discount, $scope.disableDiscountCompleted, $scope.updateError);
    }
    $scope.disableDiscountCompleted = function (response, status) {
        $scope.getDiscounts();
    }
    $scope.enableDiscount = function (id) {
        var discount = { Id: id };
        discountService.enableDiscount(discount, $scope.enableDiscountCompleted, $scope.updateError);
    }
    $scope.enableDiscountCompleted = function (response, status) {
        $scope.getDiscounts();
    }
    $scope.updateError = function (response) {
        alert(response.Message);
    }
});