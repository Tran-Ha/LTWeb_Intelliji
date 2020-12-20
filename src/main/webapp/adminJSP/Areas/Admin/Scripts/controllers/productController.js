app.controller('productController', function ($scope, $rootScope, $route, $routeParams, $location, $route, productService, alertsService) {
    $scope.initProductListController = function () {

    }
    $scope.exportProducts = function () {
        var obj = {
            Id: 0
        };
        productService.exportProducts(obj, $scope.exportProductsCompleted, $scope.getError);
    }
    $scope.exportProductsCompleted = function (response) {
    }
    $scope.initializeController = function () {
        var productId = ($routeParams.id || "");
        $rootScope.applicationModule = "Products";
        $rootScope.alerts = [];
        $scope.ProductId = productId;
        $scope.initObject();

        if (productId > 0) {
            var obj = {
                Id: productId
            };
            productService.getProduct(obj, $scope.getEditCompleted, $scope.getError);
        }
        else {
            productService.getIndex($scope.getIndexCompleted, $scope.getError);
        }

        productService.getProductGroups($scope.getProductGroupsCompleted, $scope.getError);
    }
    $scope.initInventoryController = function () {
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

        $scope.search = {
            ProductGroupId: 0,
            ProductTagId: 0,
            Keyword: "",
        };

        $scope.getProductInventorys();
        productService.getProductGroups($scope.getProductGroupsCompleted, $scope.getError);
        productService.getProductTags($scope.getProductTagsCompleted, $scope.getError);
    }
    $scope.initVariantController = function () {
        var variantId = ($routeParams.id || "");
        var productId = ($routeParams.productId || "");
        $scope.ProductId = productId;
        $scope.VariantId = variantId;
        $scope.variant = {
            Price: 0,
            PriceDiscount: 0,
            Quantity: 0,
            Weight: 0,
            SKU: "",
            Index: 0,
        };
        var item = {
            Id: productId,
        };
        productService.getProduct(item, $scope.getProductCompleted, $scope.getError);

        if (variantId > 0) {
            var obj = {
                Id: variantId,
            };
            productService.getProductVariant(obj, $scope.getProductVariantCompleted, $scope.getError);
        }

        $scope.TrackingPolicys = [{ Id: 0, Name: "Không quản lý tồn kho" }, { Id: 1, Name: "Có quản lý tồn kho" }];
    }
    $scope.addImage = function (image) {
        $scope.variant.Image = image;
    }
    $scope.dragStartTab = function (e, ui) {
        ui.item.data('start', ui.item.index());
    }
    $scope.dragEndTab = function (e, ui) {
        var start = ui.item.data('start'),
            end = ui.item.index();

        $scope.ProductTabs.splice(end, 0,
            $scope.ProductTabs.splice(start, 1)[0]);

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

        $scope.ProductImages.splice(end, 0,
            $scope.ProductImages.splice(start, 1)[0]);

        $scope.$apply();
    }
    var sortableImage = $('.sortable-image').sortable({
        start: $scope.dragStartImage,
        update: $scope.dragEndImage
    });

    $scope.resetValues = function (index) {
        $scope.product = {
            Id: 0,
            ProductGroupId: 0,
            Name: "",
            Code: "",
            Serial: "",
            Barcode: "",
            SKU: "",
            Index: index + 1,
            Image: "",
            Price: 0,
            PriceDiscount: 0,
            IsTrackingInventory: 0,
            Quantity: 0,
            Weight: 0,
            IsShipping: true,
            AllowPurchaseWhenSoldOut: false,
            IsVariant: false,
            Summary: "",
            IsBest: false,
            IsHot: false,
            IsNew: false,
            IsPromotion: false,
            MetaKeyword: "",
            MetaTitle: "",
            MetaDescription: "",
            Inactive: false,
        };

        $scope.ProductImages = [];
        $scope.ProductTags = [];
        $scope.ProductOptions = [{ Name: "Size", OptionTypeId: 1, Tag: "", ProductOptionValues: [] }];
        $scope.ProductVariants = [];
    }
    $scope.initObject = function () {
        $scope.product = {
            Id: 0,
            ProductGroupId: 0,
            Name: "",
            Code: "",
            Serial: "",
            Barcode: "",
            SKU: "",
            Index: 0,
            Image: "",
            Price: 0,
            PriceDiscount: 0,
            IsTrackingInventory: 0,
            Quantity: 0,
            Weight: 0,
            IsShipping: true,
            AllowPurchaseWhenSoldOut: false,
            IsVariant: false,
            Summary: "",
            IsBest: false,
            IsHot: false,
            IsNew: false,
            IsPromotion: false,
            MetaKeyword: "",
            MetaTitle: "",
            MetaDescription: "",
            Inactive: false,
        };
        $scope.ProductImages = [];
        $scope.ProductTabs = [];
        $scope.ProductTags = [];
        $scope.ProductOptions = [{ Name: "Size", OptionTypeId: 1, Tag: "", ProductOptionValues: [] }];
        $scope.ProductVariants = [];
        $scope.ProductOtherGroups = [];

        $scope.TrackingPolicys = [{ Id: 0, Name: "Không quản lý tồn kho" }, { Id: 1, Name: "Có quản lý tồn kho" }];
        $scope.OptionTypes = [{ Id: 1, Name: "Dropdown" }, { Id: 2, Name: "Màu sắc" }, { Id: 3, Name: "Radio" }];
        $scope.OptionTemplates = [{ Name: "Size" }, { Name: "Màu sắc" }, { Name: "Vật liệu" }];
        $scope.IsSet = false;
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
    $scope.createObject = function () {
        var product = $scope.product;
        product.ModelShared_ProductImage = $scope.ProductImages;
        product.ModelShared_ProductTab = $scope.ProductTabs;
        product.ModelShared_ProductTag = $scope.ProductTags;
        product.ModelShared_ProductOption = $scope.ProductOptions;
        product.ModelShared_ProductVariant = $scope.ProductVariants;
        product.ModelShared_ProductOtherGroup = $scope.ProductOtherGroups;
        return product;
    }
    $scope.changeVariantImage = function (item) {
        $scope.CurrentVariant = item;
        $scope.CurrentVariantImage = item.Image;
    }
    $scope.updateVariantImage = function () {
        var obj = {
            Image: $scope.CurrentVariantImage,
            Id: $scope.CurrentVariant.Id,
        };
        productService.updateVariantImage(obj, $scope.updateVariantImageCompleted, $scope.createError);
    }
    $scope.deleteVariantImage = function () {
        $scope.CurrentVariantImage = null;
        var obj = {
            Image: $scope.CurrentVariantImage,
            Id: $scope.CurrentVariant.Id,
        };
        productService.updateVariantImage(obj, $scope.updateVariantImageCompleted, $scope.createError);
    }
    $scope.setVariantImage = function (item) {
        $scope.CurrentVariantImage = item.Image;
    }
    $scope.saveProductImage = function (url) {
        $scope.CurrentVariantImage = url;
        var obj = {
            Image: url,
            ProductId: $scope.ProductId,
        };
        productService.saveProductImage(obj, $scope.saveProductImageCompleted, $scope.createError);
    }
    $scope.updateVariantImageCompleted = function (response, status) {
        $scope.CurrentVariant.Image = $scope.CurrentVariantImage;
        $('#modalUpdateVariantImage').modal('toggle');
    }
    $scope.saveProductImageCompleted = function (response, status) {
        var obj = {
            Image: $scope.CurrentVariantImage
        };
        $scope.ProductImages.push(obj);
    }

    $scope.addProductImage = function (item) {
        $scope.ProductImages.push(item);
    }
    $scope.addImageFromURL = function () {
        var obj = {
            Image: $scope.ImgURL,
        };
        $scope.ProductImages.push(obj);
        $('#modalImgURL').modal('toggle');
    }
    $scope.addProductTab = function (item) {
        $scope.ProductTabs.push(item);
    }
    $scope.addProductTag = function () {
        if ($scope.product.Tag != "") {
            var obj = { Tag: $scope.product.Tag };
            $scope.ProductTags.push(obj);
            $scope.product.Tag = "";
        }
    }
    $scope.addProductOtherGroup = function (productGroup) {
        var result = $scope.ProductOtherGroups.filter(function (o) { return o.ProductGroupId == productGroup.Id });
        if (result.length <= 0) {
            productGroup.IsSelected = true;
            var obj = { ProductGroupId: productGroup.Id, ProductGroupName: productGroup.Name };
            $scope.ProductOtherGroups.push(obj);
        }
    }
    $scope.addProductOption = function () {
        for (var i = 0; i < $scope.OptionTemplates.length; i++) {
            var item = $scope.OptionTemplates[i];
            var result = $scope.ProductOptions.filter(function (o) { return o.Name == item.Name; });
            if (result.length <= 0) {
                var obj = { Name: item.Name, OptionTypeId: 1, Index: $scope.ProductOptions.length, Tag: "", ProductOptionValues: [] }
                $scope.ProductOptions.push(obj);
                return;
            }
        }
    }
    $scope.addProductOptionEdit = function () {
        for (var i = 0; i < $scope.OptionTemplates.length; i++) {
            var item = $scope.OptionTemplates[i];
            var result = $scope.ProductOptionEdits.filter(function (o) { return o.Name == item.Name; });
            if (result.length <= 0) {
                var obj = { Name: item.Name, OptionTypeId: 1, IsNew: true, Index: $scope.ProductOptionEdits.length, Tag: "", ProductOptionValues: [{ Name: "" }] }
                $scope.ProductOptionEdits.push(obj);
                return;
            }
        }
    }
    $scope.addProductOptionValue = function (item) {
        if (item.Tag != "") {
            var obj = { Name: item.Tag };
            item.ProductOptionValues.push(obj);
            item.Tag = "";
            $scope.genAutoVariant();
        }
    }
    $scope.genAutoVariant = function () {
        var sku = $scope.product.SKU;
        if (sku == null || sku == "")
            sku = "SKU";
        var barcode = $scope.product.Barcode;
        if (barcode == null)
            barcode = "";

        $scope.ProductVariants = [];
        var option1 = $scope.ProductOptions[0];
        var option2 = $scope.ProductOptions[1];
        var option3 = $scope.ProductOptions[2];
        if (option1 != null) {
            var list1 = option1.ProductOptionValues;
            for (var i = 0; i < list1.length; i++) {
                var item1 = list1[i];
                if (option2 != null && option2.ProductOptionValues.length > 0) {
                    var list2 = option2.ProductOptionValues;
                    for (var j = 0; j < list2.length; j++) {
                        var item2 = list2[j];
                        if (option3 != null && option3.ProductOptionValues.length > 0) {
                            var list3 = option3.ProductOptionValues;
                            for (var k = 0; k < list3.length; k++) {
                                var item3 = list3[k];
                                var obj = { Name: item1.Name + '/' + item2.Name + '/' + item3.Name, Option1: item1.Name, Option2: item2.Name, Option3: item3.Name, Price: $scope.product.Price, SKU: sku + "-" + $scope.ProductVariants.length, Barcode: barcode };
                                $scope.ProductVariants.push(obj);
                            }
                        }
                        else {
                            var obj = { Name: item1.Name + '/' + item2.Name, Option1: item1.Name, Option2: item2.Name, Price: $scope.product.Price, SKU: sku + "-" + $scope.ProductVariants.length, Barcode: barcode };
                            $scope.ProductVariants.push(obj);
                        }
                    }
                }
                else {
                    var obj = { Name: item1.Name, Option1: item1.Name, Price: $scope.product.Price, SKU: sku + "-" + $scope.ProductVariants.length, Barcode: barcode, Index: $scope.ProductVariants.length };
                    $scope.ProductVariants.push(obj);
                }
            }
        }
    }

    $scope.deleteProductImage = function (idx) {
        $scope.ProductImages.splice(idx, 1);
    };
    $scope.deleteProductTab = function (idx) {
        $scope.ProductTabs.splice(idx, 1);
    };
    $scope.removeProductTag = function (idx) {
        $scope.ProductTags.splice(idx, 1);
    };
    $scope.removeProductOtherGroup = function (idx) {
        var item = $scope.ProductOtherGroups[idx];
        var result = $scope.ProductGroupsOfOther.filter(function (o) { return o.Id == item.ProductGroupId });
        var itemUpdate = result[0];
        itemUpdate.IsSelected = false;
        $scope.ProductOtherGroups.splice(idx, 1);
    };
    $scope.removeProductOption = function (idx) {
        $scope.ProductOptions.splice(idx, 1);
        $scope.genAutoVariant();
    };
    $scope.removeProductOptionEdit = function (idx) {
        $scope.ProductOptionEdits.splice(idx, 1);
    };
    $scope.removeProductOptionValue = function (item, idx) {
        item.ProductOptionValues.splice(idx, 1);
        $scope.genAutoVariant();
    };
    $scope.confirmDeleteOptionValue = function (option, value, idx) {
        var result = [];
        if (idx == 0) {
            result = $scope.ProductVariants.filter(function (o) { return o.Option1 == value.Name; });
        }
        else if (idx == 1) {
            result = $scope.ProductVariants.filter(function (o) { return o.Option2 == value.Name; });
        }
        else if (idx == 2) {
            result = $scope.ProductVariants.filter(function (o) { return o.Option3 == value.Name; });
        }

        $scope.ProductVariantDeletes = result;
        $scope.CurrentOption = option;
        $scope.CurrentOptionValue = value;
        $('#modalDeleteOption').modal('toggle');
    }
    $scope.deleteProductOptionValues = function () {
        var obj = $scope.CurrentOptionValue;
        obj.ProductVariants = $scope.ProductVariantDeletes;
        productService.deleteProductOptionValues(obj, $scope.deleteProductOptionValuesCompleted, $scope.updateError);
    }
    $scope.deleteProductOptionValuesCompleted = function (response, status) {
        $('#modalEditOption').modal('toggle');
        $('#modalDeleteOption').modal('toggle');
        $scope.getProductVariants();
        $scope.getProductOptions();
    }

    $scope.getEditCompleted = function (response) {
        $scope.product = {
            Id: response.Data.Id,
            ProductGroupId: response.Data.ProductGroupId,
            Name: response.Data.Name,
            DuplicateName: "Copy của " + response.Data.Name,
            Code: response.Data.Code,
            Serial: response.Data.Serial,
            Barcode: response.Data.Barcode,
            SKU: response.Data.SKU,
            Index: response.Data.Index,
            Image: response.Data.Image,
            Price: response.Data.Price,
            PriceDiscount: response.Data.PriceDiscount,

            IsTrackingInventory: response.Data.IsTrackingInventory ? 1 : 0,
            Quantity: response.Data.Quantity,
            Weight: response.Data.Weight,
            IsShipping: response.Data.IsShipping,
            AllowPurchaseWhenSoldOut: response.Data.AllowPurchaseWhenSoldOut,
            IsVariant: response.Data.IsVariant,

            Summary: response.Data.Summary,
            IsBest: response.Data.IsBest,
            IsHot: response.Data.IsHot,
            IsNew: response.Data.IsNew,
            IsPromotion: response.Data.IsPromotion,

            MetaKeyword: response.Data.MetaKeyword,
            MetaTitle: response.Data.MetaTitle,
            MetaDescription: response.Data.MetaDescription,
            Inactive: response.Data.Inactive,
        };
        $scope.ProductImages = response.Data.ModelShared_ProductImage;
        $scope.ProductTabs = response.Data.ModelShared_ProductTab;
        $scope.ProductTags = response.Data.ModelShared_ProductTag;
        $scope.ProductOptions = response.Data.ModelShared_ProductOption.slice();
        $scope.ProductOptionEdits = response.Data.ModelShared_ProductOption.slice();
        $scope.ProductVariants = response.Data.ModelShared_ProductVariant;
        $scope.ProductOtherGroups = response.Data.ModelShared_ProductOtherGroup;
        
        setTimeout(function () {
            InitProductTabs();
        }, 0);
    }

    $scope.getProductCompleted = function (response) {
        $scope.product = {
            Id: response.Data.Id,
            ProductGroupId: response.Data.ProductGroupId,
            Name: response.Data.Name,
            DuplicateName: "Copy của " + response.Data.Name,
            Code: response.Data.Code,
            Serial: response.Data.Serial,
            Barcode: response.Data.Barcode,
            SKU: response.Data.SKU,
            Index: response.Data.Index,
            Image: response.Data.Image,
            Price: response.Data.Price,
            PriceDiscount: response.Data.PriceDiscount,

            IsTrackingInventory: response.Data.IsTrackingInventory ? 1 : 0,
            Quantity: response.Data.Quantity,
            Weight: response.Data.Weight,
            IsShipping: response.Data.IsShipping,
            AllowPurchaseWhenSoldOut: response.Data.AllowPurchaseWhenSoldOut,
            IsVariant: response.Data.IsVariant,

            Summary: response.Data.Summary,
            IsBest: response.Data.IsBest,
            IsHot: response.Data.IsHot,
            IsNew: response.Data.IsNew,
            IsPromotion: response.Data.IsPromotion,

            MetaKeyword: response.Data.MetaKeyword,
            MetaTitle: response.Data.MetaTitle,
            MetaDescription: response.Data.MetaDescription,
            Inactive: response.Data.Inactive,
        };

        $scope.ProductImages = response.Data.ModelShared_ProductImage;
        $scope.ProductTabs = response.Data.ModelShared_ProductTab;
        $scope.ProductTags = response.Data.ModelShared_ProductTag;
        $scope.ProductOptions = response.Data.ModelShared_ProductOption;
        $scope.ProductVariants = response.Data.ModelShared_ProductVariant;
        $scope.ProductOtherGroups = response.Data.ModelShared_ProductOtherGroup;
    }

    $scope.getProductVariantCompleted = function (response) {
        $scope.variant = {
            Id: response.Data.Id,
            Name: response.Data.Name,
            Code: response.Data.Code,
            Image: response.Data.Image,
            Inactive: response.Data.Inactive,
            Index: response.Data.Index,
            IsShipping: response.Data.IsShipping,
            IsTrackingInventory: response.Data.IsTrackingInventory ? 1 : 0,
            AllowPurchaseWhenSoldOut: response.Data.AllowPurchaseWhenSoldOut,
            Option1: response.Data.Option1,
            Option2: response.Data.Option2,
            Option3: response.Data.Option3,
            Option4: response.Data.Option4,
            Option5: response.Data.Option5,
            OptionValue1: response.Data.OptionValue1,
            OptionValue2: response.Data.OptionValue2,
            OptionValue3: response.Data.OptionValue3,
            OptionValue4: response.Data.OptionValue4,
            OptionValue5: response.Data.OptionValue5,
            Price: response.Data.Price,
            PriceDiscount: response.Data.PriceDiscount,
            ProductId: response.Data.ProductId,
            ProductName: response.Data.ProductName,
            ProductImage: response.Data.ProductImage,
            Quantity: response.Data.Quantity,
            SKU: response.Data.SKU,
            Barcode: response.Data.Barcode,
            Weight: response.Data.Weight,
            Timestamp: response.Data.Timestamp,
        }
    }
    $scope.getProductGroupsCompleted = function (response) {
        $scope.ProductGroups = response.Records.slice();
        $scope.ProductGroupsOfOther = response.Records.slice();

        var obj = { Id: 0, NameLevel: "Chọn nhóm sản phẩm" };
        $scope.ProductGroups.unshift(obj);
    }
    $scope.getProductTagsCompleted = function (response) {
        $scope.ProductTags = response.Records;
        var obj = { Id: 0, Tag: "----------Tất cả----------" };
        $scope.ProductTags.unshift(obj);
    }

    $scope.getIndexCompleted = function (response) {
        $scope.product.Index = response + 1;
    }

    $scope.getError = function (response) {
    }
    $scope.clearValidationErrors = function () {
    }

    $scope.create = function () {
        var product = $scope.createObject();
        productService.create(product, $scope.createCompleted, $scope.createError);
    }
    $scope.createBack = function () {
        var product = $scope.createObject();
        productService.create(product, $scope.createBackCompleted, $scope.createError);
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
        $location.path("/product");
    }
    $scope.createError = function (response) {
        $scope.IsSuccess = response.IsSuccess;
        $scope.IsError = response.IsError;
        $scope.InValid = response.InValid;
        $scope.Message = alertsService.FormatMessage(response.ReturnMessage);
    }

    $scope.update = function () {
        var product = $scope.createObject();
        productService.update(product, $scope.updateCompleted, $scope.updateError);
    }
    $scope.updateBack = function () {
        var product = $scope.createObject();
        productService.update(product, $scope.updateBackCompleted, $scope.updateError);
    }
    $scope.duplicate = function () {
        var product = {
            Name: $scope.product.DuplicateName,
            Id: $scope.ProductId,
        };
        $('#modalDuplicate').modal('toggle');
        setTimeout(function () {
            productService.duplicate(product, $scope.duplicateCompleted, $scope.updateError);
        }, 300);
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
        $location.path("/product");
    }
    $scope.duplicateCompleted = function (response, status) {
        $scope.IsSuccess = response.IsSuccess;
        $scope.IsError = response.IsError;
        $scope.InValid = response.InValid;
        $location.path("/product/edit/" + response.Id);
    }

    $scope.updateError = function (response) {
        $scope.IsSuccess = response.IsSuccess;
        $scope.IsError = response.IsError;
        $scope.InValid = response.InValid;
        $scope.Message = alertsService.FormatMessage(response.ReturnMessage);
    }

    $scope.deletes = function (arr) {
        productService.deletes(arr, $scope.deletesCompleted, $scope.deletesError);
    }
    $scope.deletesCompleted = function (response, status) {
        $route.reload();
    }
    $scope.deletesError = function (response) {
        alert(response.Message);
    }
    //Các phiên bản sản phẩm
    $scope.toggleAutoGenerate = function (it) {
        $scope.IsShowOption = !$scope.IsShowOption;
    }
    $scope.getProductVariants = function () {
        var obj = { productId: $scope.ProductId };
        productService.getProductVariants(obj, $scope.getProductVariantsCompleted, $scope.getError);
    }
    $scope.getProductOptions = function () {
        var obj = { productId: $scope.ProductId };
        productService.getProductOptions(obj, $scope.getProductOptionsCompleted, $scope.getError);
    }
    $scope.getProductVariantsCompleted = function (response) {
        $scope.ProductVariants = response.Records;
    }
    $scope.getProductOptionsCompleted = function (response) {
        $scope.ProductOptions = response.Records.slice();
        $scope.ProductOptionEdits = response.Records.slice();
    }

    $scope.deleteProductVariant = function () {
        var obj = new Object();
        obj.id = $scope.CurrentVariantId;
        productService.deleteProductVariant(obj, $scope.deleteProductVariantCompleted, $scope.updateError);
    }
    $scope.deleteProductVariantCompleted = function (response, status) {
        $('#modalDeleteVariant').modal('toggle');
        $scope.getProductVariants();
        $scope.getProductOptions();
    }
    $scope.confirmDeleteVariant = function (item) {
        $scope.CurrentVariantId = item.Id;
        $scope.CurrentVariantName = item.Name;
    }
    $scope.checkAllVariant = function () {
        $scope.CheckedAll = true;
        $scope.ProductVariants.forEach(function (item, index) {
            item.IsChecked = true;
        });
    }
    $scope.uncheckAllVariant = function () {
        $scope.CheckedAll = false;
        $scope.ProductVariants.forEach(function (item, index) {
            item.IsChecked = false;
        });
    }
    $scope.toggleCheckAllVariant = function () {
        $scope.CheckedAll = !$scope.CheckedAll;
        $scope.ProductVariants.forEach(function (item, index) {
            item.IsChecked = $scope.CheckedAll;
        });
    }
    $scope.checkSubVariant = function (idx, value) {
        $scope.CheckedAll = true;
        console.log(idx + "---" + value);
        $scope.ProductVariants.forEach(function (item, index) {
            if (idx == 0) {
                if (item.Option1 == value)
                    item.IsChecked = true;
                else
                    item.IsChecked = false;
            }
            else if (idx == 1) {
                if (item.Option2 == value)
                    item.IsChecked = true;
                else
                    item.IsChecked = false;
            }
            else if (idx == 2) {
                if (item.Option3 == value)
                    item.IsChecked = true;
                else
                    item.IsChecked = false;
            }

        });
    }
    $scope.updateVariantPrices = function () {
        var list = new Array();
        $scope.ProductVariants.forEach(function (item, index) {
            if (item.IsChecked) {
                var obj = {
                    Id: item.Id,
                    Price: $scope.NewPrice
                };
                list.push(obj);
            }
        });
        productService.updateVariantPrices(list, $scope.updateVariantPricesCompleted, $scope.createError);
    }
    $scope.updateVariantPricesCompleted = function (response, status) {
        $('#modalChangeVariantPrice').modal('toggle');
        $scope.getProductVariants();
        $scope.getProductOptions();
    }

    $scope.updateVariantPriceDiscounts = function () {
        var list = new Array();
        $scope.ProductVariants.forEach(function (item, index) {
            if (item.IsChecked) {
                var obj = {
                    Id: item.Id,
                    PriceDiscount: $scope.NewPriceDiscount
                };
                list.push(obj);
            }
        });
        productService.updateVariantPriceDiscounts(list, $scope.updateVariantPriceDiscountsCompleted, $scope.createError);
    }
    $scope.updateVariantPriceDiscountsCompleted = function (response, status) {
        $('#modalChangeVariantPriceDiscount').modal('toggle');
        $scope.getProductVariants();
        $scope.getProductOptions();
    }
    $scope.updateVariantInventorys = function () {
        var list = new Array();
        $scope.ProductVariants.forEach(function (item, index) {
            if (item.IsChecked) {
                var obj = {
                    Id: item.Id,
                    Quantity: item.TempQuantity,
                };
                list.push(obj);
            }
        });
        productService.updateVariantInventorys(list, $scope.updateVariantInventorysCompleted, $scope.createError);
    }
    $scope.updateVariantInventorysCompleted = function (response, status) {
        $('#modalChangeVariantInventory').modal('toggle');
        $scope.getProductVariants();
        $scope.getProductOptions();
    }

    $scope.changeAddVariantQuantity = function () {
        if ($scope.IsSet) {
            $scope.ProductVariants.forEach(function (item, index) {
                if (item.IsChecked) {
                    item.TempQuantity = $scope.AddVariantQuantity;
                }
            });
        }
        else {
            $scope.ProductVariants.forEach(function (item, index) {
                if (item.IsChecked) {
                    item.TempQuantity = item.Quantity + $scope.AddVariantQuantity;
                }
            });
        }
    }
    $scope.addVariantQuantity = function () {
        $scope.IsSet = false;
        $scope.changeAddVariantQuantity();
    }
    $scope.setVariantQuantity = function () {
        $scope.IsSet = true;
        $scope.changeAddVariantQuantity();
    }

    $scope.updateVariantImages = function () {
        var list = new Array();
        $scope.ProductVariants.forEach(function (item, index) {
            if (item.IsChecked) {
                var obj = {
                    Id: item.Id,
                    Image: $scope.CurrentVariantImage,
                };
                list.push(obj);
            }
        });
        productService.updateVariantImages(list, $scope.updateVariantImagesCompleted, $scope.createError);
    }
    $scope.updateVariantImagesCompleted = function (response, status) {
        $('#modalUpdateVariantImages').modal('toggle');
        $scope.getProductVariants();
        $scope.getProductOptions();
    }

    $scope.deleteVariantImages = function () {
        var list = new Array();
        $scope.ProductVariants.forEach(function (item, index) {
            if (item.IsChecked) {
                var obj = {
                    Id: item.Id,
                    Image: null,
                };
                list.push(obj);
            }
        });
        productService.updateVariantImages(list, $scope.updateVariantImagesCompleted, $scope.createError);
    }

    $scope.deleteProductVariants = function () {
        var list = new Array();
        $scope.ProductVariants.forEach(function (item, index) {
            if (item.IsChecked) {
                list.push(item);
            }
        });
        var product = $scope.product;
        product.ModelShared_ProductVariant = list;
        productService.deleteProductVariants(product, $scope.deleteProductVariantsCompleted, $scope.createError);
    }
    $scope.deleteProductVariantsCompleted = function (response, status) {
        $('#modalDeleteVariants').modal('toggle');
        $scope.getProductVariants();
        $scope.getProductOptions();
    }

    $scope.updateVariantAllowPurchase = function (allowPurchaseWhenSoldOut) {
        var list = new Array();
        $scope.ProductVariants.forEach(function (item, index) {
            if (item.IsChecked) {
                var obj = {
                    Id: item.Id,
                    AllowPurchaseWhenSoldOut: allowPurchaseWhenSoldOut,
                };
                list.push(obj);
            }
        });
        productService.updateVariantAllowPurchase(list, $scope.updateVariantAllowPurchaseCompleted, $scope.createError);
    }
    $scope.updateVariantAllowPurchaseCompleted = function (response, status) {
        $scope.getProductVariants();
        $scope.getProductOptions();
    }
    $scope.updateProductOption = function () {
        var product = $scope.product;
        product.ModelShared_ProductOption = $scope.ProductOptionEdits;
        product.ModelShared_ProductVariant = $scope.ProductVariants;
        productService.updateProductOption(product, $scope.updateProductOptionCompleted, $scope.updateError);
    }
    $scope.updateProductOptionCompleted = function (response) {
        $('#modalEditOption').modal('toggle');
        $scope.getProductVariants();
        $scope.getProductOptions();
    }

    //Tồn kho
    $scope.createVariant = function (item) {
        item.ProductId = $scope.ProductId;
        productService.createProductVariant(item, $scope.createVariantCompleted, $scope.updateError);
    }
    $scope.createVariantCompleted = function (response) {
        $scope.IsSuccess = response.IsSuccess;
        $scope.IsError = response.IsError;
        $scope.InValid = response.InValid;
        $scope.variant = {
            Price: 0,
            PriceDiscount: 0,
            Quantity: 0,
            Weight: 0,
            SKU: "",
            Index: 0,
        };
        $scope.getProductVariants();
        $scope.getProductOptions();
    }
    $scope.updateProductVariant = function (item) {
        productService.updateProductVariant(item, $scope.updateProductVariantCompleted, $scope.updateError);
    }
    $scope.updateVariant = function (item) {
        productService.updateProductVariant(item, $scope.updateVariantCompleted, $scope.updateError);
    }
    $scope.updateProductVariantCompleted = function (response) {
        $scope.getProductVariants();
        $scope.getProductOptions();
    }
    $scope.updateVariantCompleted = function (response) {
        $scope.getProductVariants();
        $scope.getProductOptions();
    }
    $scope.DoCtrlPagingAct = function (text, page, pageSize, total) {
        var obj = {
            productGroupId: $scope.ProductGroupId,
            productTag: $scope.ProductTagId,
            keyword: $scope.Keyword,
            jtStartIndex: (page - 1),
            jtPageSize: $scope.pageSize,
        };
        productService.getProductInventorys(obj, $scope.getProductInventorysCompleted, $scope.getError);
    };
    $scope.getProductInventorys = function () {
        var itemSearch = {
            productGroupId: $scope.search.ProductGroupId,
            productTag: $scope.search.ProductTagId,
            keyword: $scope.search.Keyword,
            jtStartIndex: 0,
            jtPageSize: $scope.pageSize,
        };
        productService.getProductInventorys(itemSearch, $scope.getProductInventorysCompleted, $scope.getError);
    }
    $scope.getProductInventorysCompleted = function (response) {
        $scope.ProductInventorys = response.Records;
        $scope.total = response.TotalRecordCount;
    }

    $scope.updateProductQuantity = function (item) {
        productService.updateProductQuantity(item, $scope.updateProductQuantityCompleted, $scope.updateError);
    }
    $scope.updateProductQuantityCompleted = function (response) {
        var item = $scope.ProductInventorys[$scope.currentIndex];
        item.Quantity = item.TempQuantity;
        item.TempQuantity = 0;
        if (!item.IsSet)
            item.AddQuantity = 0;
    }
    $scope.changeAddQuantity = function (index, item) {
        $scope.currentIndex = index;
        if (item.IsSet) {
            item.TempQuantity = item.AddQuantity;
        }
        else {
            item.TempQuantity = item.Quantity + item.AddQuantity;
        }
    }
    $scope.addQuantity = function (index, item) {
        item.IsSet = false;
        $scope.changeAddQuantity(index, item);
    }
    $scope.setQuantity = function (index, item) {
        item.IsSet = true;
        $scope.changeAddQuantity(index, item);
    }
});