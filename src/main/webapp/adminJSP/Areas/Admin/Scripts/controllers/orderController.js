app.controller('orderController', function ($scope, $rootScope, $route, $routeParams, $location, orderService, alertsService) {
    $scope.initializeController = function () {

        var orderID = ($routeParams.id || "");
        $rootScope.applicationModule = "Orders";
        $rootScope.alerts = [];
        $scope.OrderId = orderID;

        $scope.initObject();
        orderService.getProvinces($scope.getProvincesCompleted, $scope.getError);
        orderService.getTransport($scope.getTransportCompleted, $scope.getError);
        if (orderID > 0) {
            var obj = new Object();
            obj.Id = orderID;
            orderService.getOrder(obj, $scope.getEditCompleted, $scope.getError);
        }
    }
    $scope.initOrderController = function () {

        var orderID = ($routeParams.id || "");
        $rootScope.applicationModule = "Orders";
        $rootScope.alerts = [];
        $scope.OrderId = orderID;

        $scope.OrderDetails = [];
        $scope.Products = [];
        $scope.IsPercentage = false;
        $scope.ShippingRateId = -1;
        $scope.ShippingAmount = 0;
        $scope.IsShowDropdowProduct = false;
        $scope.IsCreateProduct = false;
        $scope.IsShowDropdowCustomer = false;
        $scope.IsCreateCustomer = false;
        $scope.CurrentPageProduct = 1;
        $scope.CurrentPageCustomer = 1;
        $scope.PageSize = 12;
        $scope.order = {
            Amount: 0,
            DiscountAmount: 0,
            CouponAmount: 0,
            ShippingAmount: 0,
            TotalAmount: 0,
            CustomerId: null,
            IsDraft: true,
        };
        $scope.customProduct = {
            Price: 0,
            Quantity: 1,
            IsShipping: false,
            ProductName: ""
        };
        $scope.customer = {
            Name: "",
            Email: "",
            Phone: "",
            Address: "",
        }
        if (orderID > 0) {
            var obj = new Object();
            obj.Id = orderID;
            orderService.getOrder(obj, $scope.getOrderDraftCompleted, $scope.getError);
        }
        orderService.getPaymentMethods($scope.getPaymentMethodsCompleted, $scope.getError);
    }
    $scope.initReOrderController = function () {

        var orderID = ($routeParams.id || "");
        $rootScope.applicationModule = "Orders";
        $rootScope.alerts = [];
        $scope.OrderId = orderID;

        $scope.OrderDetails = [];
        $scope.Products = [];
        $scope.IsPercentage = false;
        $scope.ShippingRateId = -1;
        $scope.ShippingAmount = 0;
        $scope.IsShowDropdowProduct = false;
        $scope.IsCreateProduct = false;
        $scope.IsShowDropdowCustomer = false;
        $scope.IsCreateCustomer = false;
        $scope.CurrentPageProduct = 1;
        $scope.CurrentPageCustomer = 1;
        $scope.PageSize = 12;
        $scope.order = {
            Amount: 0,
            DiscountAmount: 0,
            CouponAmount: 0,
            ShippingAmount: 0,
            TotalAmount: 0,
            CustomerId: null,
            IsDraft: true,
        };
        $scope.customProduct = {
            Price: 0,
            Quantity: 1,
            IsShipping: false,
            ProductName: ""
        };
        $scope.customer = {
            Name: "",
            Email: "",
            Phone: "",
            Address: "",
        }
        if (orderID > 0) {
            var obj = new Object();
            obj.Id = orderID;
            orderService.getOrder(obj, $scope.getReOrderCompleted, $scope.getError);
        }
    }
    $scope.initShippingController = function () {

        var shippingCode = ($routeParams.id || "");
        $rootScope.applicationModule = "Orders";
        $rootScope.alerts = [];

        $scope.initObject();
        if (shippingCode != "") {
            var obj = new Object();
            obj.code = shippingCode;
            orderService.getShipping(obj, $scope.getShippingCompleted, $scope.getError);
        }
    }

    $scope.getProvincesCompleted = function (response) {
        $scope.Provinces = response.Records;
        if (response.Records.length > 0)
            $scope.ProvinceId = response.Records[0].Id;
    }
    $scope.getTransportCompleted = function (response) {
        var first = { Id: 0, Name: "Chọn nhà vận chuyển" };
        var list = response.Records;
        list.unshift(first);
        $scope.shipping = { TransportId: 0 };
        $scope.Transports = list;
    }
    $scope.getDistricts = function () {
        var obj = new Object();
        obj.provinceId = $scope.DeliveryProvinceId;
        orderService.getDistricts(obj, $scope.getDistrictsCompleted, $scope.getError);
    }
    $scope.getDistrictsCompleted = function (response) {
        $scope.Districts = response.Records;
    }
    $scope.getPaymentMethodsCompleted = function (response) {
        $scope.PaymentMethods = response.Records;
        if (response.Records.length > 0)
            $scope.order.PaymentMethodId = response.Records[0].Id;
    }
    $scope.initObject = function () {
        $scope.CODAmount = 0;
    }
    $scope.createObject = function () {
        var order = {

        };
        return order;
    }

    $scope.getEditCompleted = function (response) {
        $scope.Id = response.Data.Id;
        $scope.AutoCode = response.Data.AutoCode;
        $scope.ShippingCode = response.Data.ShippingCode;
        $scope.TrackingNumber = response.Data.TrackingNumber;
        $scope.CustomerId = response.Data.CustomerId;
        $scope.CustomerDistrictId = response.Data.CustomerDistrictId;
        $scope.CustomerDistrictName = response.Data.CustomerDistrictName;
        $scope.CustomerProvinceId = response.Data.CustomerProvinceId;
        $scope.CustomerProvinceName = response.Data.CustomerProvinceName;
        $scope.DeliveryProvinceId = response.Data.DeliveryProvinceId;
        $scope.DeliveryProvinceName = response.Data.DeliveryProvinceName;
        $scope.DeliveryDistrictId = response.Data.DeliveryDistrictId;
        $scope.DeliveryDistrictName = response.Data.DeliveryDistrictName;
        $scope.DeliveryEmail = response.Data.DeliveryEmail;
        $scope.DeliveryName = response.Data.DeliveryName;

        $scope.Inactive = response.Data.Inactive;
        $scope.CreatedDate = response.Data.CreatedDate;
        $scope.CustomerAddress = response.Data.CustomerAddress;
        $scope.CustomerEmail = response.Data.CustomerEmail;
        $scope.CustomerName = response.Data.CustomerName;

        $scope.CustomerPhone = response.Data.CustomerPhone;
        $scope.DeliveryPhone = response.Data.DeliveryPhone;
        $scope.DeliveryAddress = response.Data.DeliveryAddress;
        $scope.Description = response.Data.Description;

        $scope.TransportId = response.Data.TransportId;
        $scope.TransportName = response.Data.TransportName;
        $scope.PaymentStateId = response.Data.PaymentStateId;
        $scope.ShipmentStateId = response.Data.ShipmentStateId;
        $scope.TransportShipmentStateId = response.Data.TransportShipmentStateId;
        $scope.TransportShipmentStateName = response.Data.TransportShipmentStateName;
        $scope.TransportShipmentStateCss = response.Data.TransportShipmentStateCss;
        $scope.CODStateId = response.Data.CODStateId;
        $scope.TransportCODStateId = response.Data.TransportCODStateId;
        $scope.TransportCODStateName = response.Data.TransportCODStateName;
        $scope.TransportCODStateCss = response.Data.TransportCODStateCss;

        $scope.BillNo = response.Data.BillNo;
        $scope.Reason = response.Data.Reason;
        $scope.PaymentMethodId = response.Data.PaymentMethodId;
        $scope.PaymentMethodName = response.Data.PaymentMethodName;
        $scope.ShippingRateName = response.Data.ShippingRateName;

        $scope.TotalAmount = response.Data.TotalAmount;
        $scope.Amount = response.Data.Amount;
        $scope.DiscountAmount = response.Data.DiscountAmount;
        $scope.ShippingAmount = response.Data.ShippingAmount;
        $scope.CODAmount = response.Data.TotalAmount;

        $scope.IsAuto = response.Data.IsAuto;

        $scope.OrderDetails = response.Data.ModelSM_OrderDetail;

        $scope.getDistricts();
        //PrintBarcode($scope.AutoCode);
    }
    $scope.getReOrderCompleted = function (response) {
        var order = {
            Id: response.Data.Id,
            AutoCode: response.Data.AutoCode,
            ShippingCode: response.Data.ShippingCode,
            DraftCode: response.Data.DraftCode,
            TrackingNumber: response.Data.TrackingNumber,
            CustomerId: response.Data.CustomerId,
            CustomerDistrictId: response.Data.CustomerDistrictId,
            CustomerDistrictName: response.Data.CustomerDistrictName,
            CustomerProvinceId: response.Data.CustomerProvinceId,
            CustomerProvinceName: response.Data.CustomerProvinceName,
            DeliveryProvinceId: response.Data.DeliveryProvinceId,
            DeliveryProvinceName: response.Data.DeliveryProvinceName,
            DeliveryDistrictId: response.Data.DeliveryDistrictId,
            DeliveryDistrictName: response.Data.DeliveryDistrictName,
            DeliveryEmail: response.Data.DeliveryEmail,
            DeliveryName: response.Data.DeliveryName,

            Inactive: response.Data.Inactive,
            CreatedDate: response.Data.CreatedDate,
            ShippingDate: response.Data.ShippingDate,
            DraftDate: response.Data.DraftDate,
            CustomerAddress: response.Data.CustomerAddress,
            CustomerEmail: response.Data.CustomerEmail,
            CustomerName: response.Data.CustomerName,

            CustomerPhone: response.Data.CustomerPhone,
            DeliveryPhone: response.Data.DeliveryPhone,
            DeliveryAddress: response.Data.DeliveryAddress,
            Description: response.Data.Description,

            TransportId: response.Data.TransportId,
            TransportName: response.Data.TransportName,
            PaymentStateId: response.Data.PaymentStateId,
            ShipmentStateId: response.Data.ShipmentStateId,
            TransportShipmentStateId: response.Data.TransportShipmentStateId,
            TransportShipmentStateName: response.Data.TransportShipmentStateName,
            TransportShipmentStateCss: response.Data.TransportShipmentStateCss,
            CODStateId: response.Data.CODStateId,
            TransportCODStateId: response.Data.TransportCODStateId,
            TransportCODStateName: response.Data.TransportCODStateName,
            TransportCODStateCss: response.Data.TransportCODStateCss,

            BillNo: response.Data.BillNo,
            Reason: response.Data.Reason,
            PaymentMethodId: response.Data.PaymentMethodId,
            PaymentMethodName: response.Data.PaymentMethodName,
            ShippingRateName: response.Data.ShippingRateName,

            TotalAmount: response.Data.TotalAmount,
            Amount: response.Data.Amount,
            DiscountAmount: response.Data.DiscountAmount,
            ShippingAmount: response.Data.ShippingAmount,
            CODAmount: response.Data.TotalAmount,

            IsDraft: response.Data.IsDraft,
            IsAuto: response.Data.IsAuto,
            Source: response.Data.Source,
        }
        $scope.order = order;
        $scope.OrderDetails = response.Data.ModelSM_OrderDetail;

        $scope.ShippingAmount = response.Data.ShippingAmount;
        $scope.ShippingRateName = response.Data.ShippingRateName;

        if (order.CustomerId > 0) {
            var item = { customerId: order.CustomerId };
            orderService.getOrderOfCustomer(item, $scope.getOrderOfCustomerCompleted, $scope.getError);
        }
    }
    $scope.getOrderDraftCompleted = function (response) {
        var order = {
            Id: response.Data.Id,
            AutoCode: response.Data.AutoCode,
            ShippingCode: response.Data.ShippingCode,
            DraftCode: response.Data.DraftCode,
            TrackingNumber: response.Data.TrackingNumber,
            CustomerId: response.Data.CustomerId,
            CustomerDistrictId: response.Data.CustomerDistrictId,
            CustomerDistrictName: response.Data.CustomerDistrictName,
            CustomerProvinceId: response.Data.CustomerProvinceId,
            CustomerProvinceName: response.Data.CustomerProvinceName,
            DeliveryProvinceId: response.Data.DeliveryProvinceId,
            DeliveryProvinceName: response.Data.DeliveryProvinceName,
            DeliveryDistrictId: response.Data.DeliveryDistrictId,
            DeliveryDistrictName: response.Data.DeliveryDistrictName,
            DeliveryEmail: response.Data.DeliveryEmail,
            DeliveryName: response.Data.DeliveryName,

            Inactive: response.Data.Inactive,
            CreatedDate: response.Data.CreatedDate,
            ShippingDate: response.Data.ShippingDate,
            DraftDate: response.Data.DraftDate,
            CustomerAddress: response.Data.CustomerAddress,
            CustomerEmail: response.Data.CustomerEmail,
            CustomerName: response.Data.CustomerName,

            CustomerPhone: response.Data.CustomerPhone,
            DeliveryPhone: response.Data.DeliveryPhone,
            DeliveryAddress: response.Data.DeliveryAddress,
            Description: response.Data.Description,

            TransportId: response.Data.TransportId,
            TransportName: response.Data.TransportName,
            PaymentStateId: response.Data.PaymentStateId,
            ShipmentStateId: response.Data.ShipmentStateId,
            TransportShipmentStateId: response.Data.TransportShipmentStateId,
            TransportShipmentStateName: response.Data.TransportShipmentStateName,
            TransportShipmentStateCss: response.Data.TransportShipmentStateCss,
            CODStateId: response.Data.CODStateId,
            TransportCODStateId: response.Data.TransportCODStateId,
            TransportCODStateName: response.Data.TransportCODStateName,
            TransportCODStateCss: response.Data.TransportCODStateCss,

            BillNo: response.Data.BillNo,
            Reason: response.Data.Reason,
            PaymentMethodId: response.Data.PaymentMethodId,
            PaymentMethodName: response.Data.PaymentMethodName,
            ShippingRateName: response.Data.ShippingRateName,

            TotalAmount: response.Data.TotalAmount,
            Amount: response.Data.Amount,
            DiscountAmount: response.Data.DiscountAmount,
            ShippingAmount: response.Data.ShippingAmount,
            CODAmount: response.Data.TotalAmount,

            IsDraft: response.Data.IsDraft,
            IsAuto: response.Data.IsAuto,
        }
        $scope.order = order;
        $scope.OrderDetails = response.Data.ModelSM_OrderDetail;

        $scope.ShippingAmount = response.Data.ShippingAmount;
        $scope.ShippingRateName = response.Data.ShippingRateName;

        if (order.CustomerId > 0) {
            var item = { customerId: order.CustomerId };
            orderService.getOrderOfCustomer(item, $scope.getOrderOfCustomerCompleted, $scope.getError);
        }
    }
    $scope.getShippingCompleted = function (response) {
        $scope.Id = response.Data.Id;
        $scope.AutoCode = response.Data.AutoCode;
        $scope.ShippingCode = response.Data.ShippingCode;
        $scope.TrackingNumber = response.Data.TrackingNumber;
        $scope.CustomerId = response.Data.CustomerId;
        $scope.CustomerDistrictId = response.Data.CustomerDistrictId;
        $scope.CustomerDistrictName = response.Data.CustomerDistrictName;
        $scope.CustomerProvinceId = response.Data.CustomerProvinceId;
        $scope.CustomerProvinceName = response.Data.CustomerProvinceName;
        $scope.DeliveryProvinceId = response.Data.DeliveryProvinceId;
        $scope.DeliveryProvinceName = response.Data.DeliveryProvinceName;
        $scope.DeliveryDistrictId = response.Data.DeliveryDistrictId;
        $scope.DeliveryDistrictName = response.Data.DeliveryDistrictName;
        $scope.DeliveryEmail = response.Data.DeliveryEmail;
        $scope.DeliveryName = response.Data.DeliveryName;

        $scope.Inactive = response.Data.Inactive;
        $scope.CreatedDate = response.Data.CreatedDate;
        $scope.CustomerAddress = response.Data.CustomerAddress;
        $scope.CustomerEmail = response.Data.CustomerEmail;
        $scope.CustomerName = response.Data.CustomerName;

        $scope.CustomerPhone = response.Data.CustomerPhone;
        $scope.DeliveryPhone = response.Data.DeliveryPhone;
        $scope.DeliveryAddress = response.Data.DeliveryAddress;
        $scope.Description = response.Data.Description;

        $scope.TransportId = response.Data.TransportId;
        $scope.TransportName = response.Data.TransportName;
        $scope.PaymentStateId = response.Data.PaymentStateId;
        $scope.ShipmentStateId = response.Data.ShipmentStateId;
        $scope.TransportShipmentStateId = response.Data.TransportShipmentStateId;
        $scope.TransportShipmentStateName = response.Data.TransportShipmentStateName;
        $scope.TransportShipmentStateCss = response.Data.TransportShipmentStateCss;
        $scope.CODStateId = response.Data.CODStateId;
        $scope.TransportCODStateId = response.Data.TransportCODStateId;
        $scope.TransportCODStateName = response.Data.TransportCODStateName;
        $scope.TransportCODStateCss = response.Data.TransportCODStateCss;

        $scope.BillNo = response.Data.BillNo;
        $scope.Reason = response.Data.Reason;
        $scope.PaymentMethodId = response.Data.PaymentMethodId;

        $scope.PaymentMethodName = response.Data.PaymentMethodName;
        $scope.TotalAmount = response.Data.TotalAmount;
        $scope.Amount = response.Data.Amount;
        $scope.DiscountAmount = response.Data.DiscountAmount;
        $scope.ShippingAmount = response.Data.ShippingAmount;
        $scope.CODAmount = response.Data.TotalAmount;

        $scope.IsAuto = response.Data.IsAuto;

        $scope.OrderDetails = response.Data.ModelSM_OrderDetail;
    }

    $scope.getError = function (response) {
    }
    $scope.clearValidationErrors = function () {
    }

    $scope.createReOrder = function () {
        if ($scope.OrderDetails.length <= 0) {
            alert("Chưa có hàng để thanh toán.");
            return;
        }
        var order = $scope.order;
        order.Id = 0;
        order.ModelSM_OrderDetail = $scope.OrderDetails;
        orderService.createReOrder(order, $scope.createReOrderCompleted, $scope.createError);
    }
    $scope.createReOrderDelete = function () {
        if ($scope.OrderDetails.length <= 0) {
            alert("Chưa có hàng để thanh toán.");
            return;
        }
        var order = $scope.order;
        order.ModelSM_OrderDetail = $scope.OrderDetails;
        orderService.createReOrder(order, $scope.createReOrderCompleted, $scope.createError);
    }
    $scope.createOrderDraft = function () {
        if ($scope.OrderDetails.length <= 0) {
            alert("Chưa có hàng để thanh toán.");
            return;
        }
        var order = $scope.order;
        order.IsDraft = true;
        order.ModelSM_OrderDetail = $scope.OrderDetails;
        orderService.createOrderDraft(order, $scope.createOrderDraftCompleted, $scope.createError);
    }
    $scope.updateOrderDraft = function () {
        if ($scope.OrderDetails.length <= 0) {
            alert("Chưa có hàng để thanh toán.");
            return;
        }
        var order = $scope.order;
        order.IsDraft = true;
        order.ModelSM_OrderDetail = $scope.OrderDetails;
        orderService.updateOrderDraft(order, $scope.updateOrderDraftCompleted, $scope.createError);
    }
    $scope.makePaid = function () {
        $('#modalMakePaid').modal('hide');
        if ($scope.OrderDetails.length <= 0) {
            alert("Chưa có hàng để thanh toán.");
            return;
        }
        var order = $scope.order;
        order.IsDraft = false;
        order.PaymentStateId = 2;
        order.ModelSM_OrderDetail = $scope.OrderDetails;
        orderService.createOrderDraft(order, $scope.createOrderDraftCompleted, $scope.createError);
    }
    $scope.updateMakePaid = function () {
        $('#modalMakePaid').modal('hide');
        if ($scope.OrderDetails.length <= 0) {
            alert("Chưa có hàng để thanh toán.");
            return;
        }
        var order = $scope.order;
        order.IsDraft = false;
        order.PaymentStateId = 2;
        order.ModelSM_OrderDetail = $scope.OrderDetails;
        orderService.updateOrderDraft(order, $scope.updateOrderDraftCompleted, $scope.createError);
    }
    $scope.makePending = function () {
        $('#modalMakePending').modal('hide');
        if ($scope.OrderDetails.length <= 0) {
            alert("Chưa có hàng để thanh toán.");
            return;
        }
        var order = $scope.order;
        order.IsDraft = false;
        order.PaymentStateId = 1;
        order.ModelSM_OrderDetail = $scope.OrderDetails;
        orderService.createOrderDraft(order, $scope.createOrderDraftCompleted, $scope.createError);
    }
    $scope.updateMakePending = function () {
        $('#modalMakePending').modal('hide');
        if ($scope.OrderDetails.length <= 0) {
            alert("Chưa có hàng để thanh toán.");
            return;
        }
        var order = $scope.order;
        order.IsDraft = false;
        order.PaymentStateId = 1;
        order.ModelSM_OrderDetail = $scope.OrderDetails;
        orderService.updateOrderDraft(order, $scope.updateOrderDraftCompleted, $scope.createError);
    }

    $scope.createReOrderCompleted = function (response, status) {
        $scope.IsSuccess = response.IsSuccess;
        $scope.IsError = response.IsError;
        $scope.InValid = response.InValid;
        $location.path("/order/details/" + response.Id);
    }
    $scope.createOrderDraftCompleted = function (response, status) {
        $scope.IsSuccess = response.IsSuccess;
        $scope.IsError = response.IsError;
        $scope.InValid = response.InValid;
        $location.path("/order/draft/details/" + response.Id);
    }
    $scope.updateOrderDraftCompleted = function (response, status) {
        $scope.IsSuccess = response.IsSuccess;
        $scope.IsError = response.IsError;
        $scope.InValid = response.InValid;
        $route.reload();
    }

    $scope.createError = function (response) {
        $scope.IsSuccess = response.IsSuccess;
        $scope.IsError = response.IsError;
        $scope.InValid = response.InValid;
        $scope.Message = alertsService.FormatMessage(response.ReturnMessage);
    }

    $scope.updateCustomer = function () {
        var obj = {
            Id: $scope.Id,
            CustomerName: $scope.CustomerName,
            CustomerAddress: $scope.CustomerAddress,
            CustomerPhone: $scope.CustomerPhone,
            CustomerEmail: $scope.CustomerEmail
        }
        orderService.updateCustomer(obj, $scope.updateCustomerCompleted, $scope.updateError);
    }
    $scope.updateDelivery = function () {
        var obj = {
            Id: $scope.Id,
            DeliveryName: $scope.DeliveryName,
            DeliveryAddress: $scope.DeliveryAddress,
            DeliveryPhone: $scope.DeliveryPhone,
            DeliveryEmail: $scope.DeliveryEmail
        }
        orderService.updateDelivery(obj, $scope.updateDeliveryCompleted, $scope.updateError);
    }
    $scope.updateCustomerCompleted = function (response, status) {
        $scope.IsSuccess = response.IsSuccess;
        $scope.IsError = response.IsError;
        $scope.InValid = response.InValid;
        $('#modalCustomer').modal('toggle');
    }
    $scope.updateDeliveryCompleted = function (response, status) {
        $scope.IsSuccess = response.IsSuccess;
        $scope.IsError = response.IsError;
        $scope.InValid = response.InValid;
        $('#modalDelivery').modal('toggle');
    }
    $scope.updateError = function (response) {
        $scope.IsSuccess = response.IsSuccess;
        $scope.IsError = response.IsError;
        $scope.InValid = response.InValid;
        $scope.Message = alertsService.FormatMessage(response.ReturnMessage);
    }

    $scope.confirmOrder = function () {
        var obj = {
            Id: $scope.Id,
        }
        orderService.confirmOrder(obj, $scope.confirmOrderCompleted, $scope.updateError);
    }
    $scope.confirmOrderCompleted = function (response, status) {
        $scope.IsSuccess = response.IsSuccess;
        $scope.IsError = response.IsError;
        $scope.InValid = response.InValid;
        $('#modalConfirmOrder').modal('toggle');
        $route.reload();
    }

    $scope.paymentReceive = function () {
        var obj = {
            Id: $scope.Id,
        }
        orderService.paymentReceive(obj, $scope.paymentReceiveCompleted, $scope.updateError);
    }
    $scope.paymentReceiveCompleted = function (response, status) {
        $scope.IsSuccess = response.IsSuccess;
        $scope.IsError = response.IsError;
        $scope.InValid = response.InValid;
        $('#modalPayment').modal('toggle');
        setTimeout(function () {
            $route.reload();
        }, 500);
    }
    $scope.deleteOrderDraft = function () {
        if (confirm("Bạn có muốn xóa đơn hàng nháp này? Đơn hàng nháp đã xóa không thể phục hồi lại được ")) {
            var item = { id: $scope.order.Id }
            orderService.delete(item, $scope.deleteOrderDraftCompleted, $scope.deletesError);
        }
    }
    $scope.deleteOrderDraftCompleted = function (response, status) {
        $location.path("/order/draft");
    }
    $scope.deletes = function (arr) {
        orderService.deletes(arr, $scope.deletesCompleted, $scope.deletesError);
    }
    $scope.deletesCompleted = function (response, status) {
        $route.reload();
    }
    $scope.deletesError = function (response) {
        alert(response.Message);
    }

    $scope.createShippingOrder = function () {
        if ($scope.shipping.TransportId <= 0) {
            alert("Vui lòng chọn nhà vận chuyển.")
            return;
        }
        var obj = {
            Id: $scope.Id,
            DeliveryProvinceId: $scope.DeliveryProvinceId,
            DeliveryDistrictId: $scope.DeliveryDistrictId,
            CODAmount: $scope.CODAmount,
            TransportId: $scope.shipping.TransportId,
        }
        orderService.createShippingOrder(obj, $scope.createShippingOrderCompleted, $scope.updateError);
    }
    $scope.createShippingOrderCompleted = function (response, status) {
        $scope.IsSuccess = response.IsSuccess;
        $scope.IsError = response.IsError;
        $scope.InValid = response.InValid;
        $('#modalShipping').modal('toggle');
        setTimeout(function () {
            $route.reload();
        }, 500);
    }

    $scope.makePickingShipment = function () {
        var obj = {
            Id: $scope.Id,
        }
        orderService.makePickingShipment(obj, $scope.makePickingShipmentCompleted, $scope.updateError);
    }
    $scope.makePickingShipmentCompleted = function (response, status) {
        $scope.IsSuccess = response.IsSuccess;
        $scope.IsError = response.IsError;
        $scope.InValid = response.InValid;
        $('#confirmModalPicking').modal('toggle');
        setTimeout(function () {
            $route.reload();
        }, 500);
    }

    $scope.makeDeliveringShipment = function () {
        var obj = {
            Id: $scope.Id,
        }
        orderService.makeDeliveringShipment(obj, $scope.makeDeliveringShipmentCompleted, $scope.updateError);
    }
    $scope.makeDeliveringShipmentCompleted = function (response, status) {
        $scope.IsSuccess = response.IsSuccess;
        $scope.IsError = response.IsError;
        $scope.InValid = response.InValid;
        $('#confirmModalDelivering').modal('toggle');
        setTimeout(function () {
            $route.reload();
        }, 500);
    }

    $scope.makeDeliveredShipment = function () {
        var obj = {
            Id: $scope.Id,
        }
        orderService.makeDeliveredShipment(obj, $scope.makeDeliveredShipmentCompleted, $scope.updateError);
    }
    $scope.makeDeliveredShipmentCompleted = function (response, status) {
        $scope.IsSuccess = response.IsSuccess;
        $scope.IsError = response.IsError;
        $scope.InValid = response.InValid;
        $('#confirmModalDelivered').modal('toggle');
        setTimeout(function () {
            $route.reload();
        }, 500);
    }

    $scope.makeCancelShipment = function () {
        var obj = {
            Id: $scope.Id,
        }
        orderService.makeCancelShipment(obj, $scope.makeCancelShipmentCompleted, $scope.updateError);
    }
    $scope.makeCancelShipmentCompleted = function (response, status) {
        $scope.IsSuccess = response.IsSuccess;
        $scope.IsError = response.IsError;
        $scope.InValid = response.InValid;
        $('#confirmModalCancelShipment').modal('toggle');
        setTimeout(function () {
            $route.reload();
        }, 500);
    }

    $scope.makeCODPaid = function () {
        var obj = {
            Id: $scope.Id,
        }
        orderService.makeCODPaid(obj, $scope.makeCODPaidCompleted, $scope.updateError);
    }
    $scope.makeCODPaidCompleted = function (response, status) {
        $scope.IsSuccess = response.IsSuccess;
        $scope.IsError = response.IsError;
        $scope.InValid = response.InValid;
        $('#confirmModalCODPaid').modal('toggle');
        setTimeout(function () {
            $route.reload();
        }, 500);
    }

    $scope.makeCODReceipt = function () {
        var obj = {
            Id: $scope.Id,
        }
        orderService.makeCODReceipt(obj, $scope.makeCODReceiptCompleted, $scope.updateError);
    }
    $scope.makeCODReceiptCompleted = function (response, status) {
        $scope.IsSuccess = response.IsSuccess;
        $scope.IsError = response.IsError;
        $scope.InValid = response.InValid;
        $('#confirmModalCODReceipt').modal('toggle');
        setTimeout(function () {
            $route.reload();
        }, 500);
    }

    $scope.updateShippingFee = function () {
        var obj = {
            Id: $scope.Id,
            ShippingAmount: $scope.ShippingAmount,
        }
        orderService.updateShippingFee(obj, $scope.updateShippingFeeCompleted, $scope.updateError);
    }
    $scope.updateShippingFeeCompleted = function (response, status) {
        $scope.IsSuccess = response.IsSuccess;
        $scope.IsError = response.IsError;
        $scope.InValid = response.InValid;
        $('#modalShippingFee').modal('toggle');
        setTimeout(function () {
            $route.reload();
        }, 500);
    }

    $scope.updateShipmentTrackingNumber = function () {
        var obj = {
            Id: $scope.Id,
            TrackingNumber: $scope.TrackingNumber,
        }
        orderService.updateShipmentTrackingNumber(obj, $scope.updateShipmentTrackingNumberCompleted, $scope.updateError);
    }
    $scope.updateShipmentTrackingNumberCompleted = function (response, status) {
        $scope.IsSuccess = response.IsSuccess;
        $scope.IsError = response.IsError;
        $scope.InValid = response.InValid;
        $('#modalShipmentTrackingNumber').modal('toggle');
        setTimeout(function () {
            $route.reload();
        }, 500);
    }
    $scope.showDropdowProduct = function () {
        $scope.IsShowDropdowProduct = !$scope.IsShowDropdowProduct;
        if ($scope.IsCreateProduct == false)
            $scope.getProductVariants($scope.CurrentPageProduct);
    }
    $scope.getProductVariants = function (page) {
        $scope.IsShowDropdowProduct = true;
        $scope.CurrentPageProduct = page;

        var obj = {
            jtStartIndex: $scope.CurrentPageProduct - 1,
            jtPageSize: $scope.PageSize,
            keyword: $scope.keywordProduct,
        };
        orderService.getProductVariants(obj, $scope.getProductVariantsCompleted, $scope.getError);
    }
    $scope.getProductVariantsCompleted = function (response) {
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
    $scope.addCustomProduct = function () {
        $('#modalCustomProduct').modal('toggle');
        $scope.IsShowDropdowProduct = false;
        var result = $scope.OrderDetails.filter(function (o) { return o.ProductName == $scope.customProduct.ProductName });
        if (result.length <= 0) {
            var itemCart = {
                Price: $scope.customProduct.Price,
                ProductCode: $scope.customProduct.ProductName,
                ProductName: $scope.customProduct.ProductName,
                Quantity: $scope.customProduct.Quantity,
                IsVariant: false,
            };
            itemCart.Amount = itemCart.Quantity * itemCart.Price;
            $scope.OrderDetails.push(itemCart);
        }
        else {
            var itemCart = result[0];
            itemCart.Quantity = itemCart.Quantity + 1;
            itemCart.Amount = itemCart.Quantity * itemCart.Price;
        }

        var amount = 0;
        for (var i = 0; i < $scope.OrderDetails.length; i++) {
            var item = $scope.OrderDetails[i];
            amount += item.Quantity * item.Price;
        }
        $scope.order.Amount = amount;
        $scope.order.TotalAmount = $scope.order.Amount + $scope.order.ShippingAmount - $scope.order.DiscountAmount - $scope.order.CouponAmount;
    }
    $scope.addProductVariant = function (product, variant) {
        $scope.IsShowDropdowProduct = false;
        var result = $scope.OrderDetails.filter(function (o) { return o.ProductId == product.Id && o.VariantId == variant.Id; });
        if (result.length <= 0) {
            var itemCart = {
                Price: product.IsPromotion ? product.PriceDiscount : product.Price,
                ProductId: product.Id,
                ProductCode: product.Code,
                ProductName: product.Name,
                ProductImage: product.Image,
                Quantity: 1,
                IsVariant: product.IsVariant,
                ProductSerial: product.Serial,
                ProductWeight: product.Weight,
                SKU: product.SKU,
                IsTrackingInventory: product.IsTrackingInventory,
            };
            if (product.IsVariant) {
                itemCart.Price = product.IsPromotion ? variant.PriceDiscount : variant.Price;
                itemCart.VariantId = variant.Id;
                itemCart.SKU = variant.SKU;
                itemCart.IsTrackingInventory = variant.IsTrackingInventory;
                itemCart.VariantName = variant.Name;
                if (variant.Image != null)
                    itemCart.ProductImage = variant.Image;
            }
            itemCart.Amount = itemCart.Quantity * itemCart.Price;
            $scope.OrderDetails.push(itemCart);
        }
        else {
            var itemCart = result[0];
            itemCart.Quantity = itemCart.Quantity + 1;
            itemCart.Amount = itemCart.Quantity * itemCart.Price;
        }

        var amount = 0;
        for (var i = 0; i < $scope.OrderDetails.length; i++) {
            var item = $scope.OrderDetails[i];
            amount += item.Quantity * item.Price;
        }
        $scope.order.Amount = amount;
        $scope.order.TotalAmount = $scope.order.Amount + $scope.order.ShippingAmount - $scope.order.DiscountAmount - $scope.order.CouponAmount;
    }
    $scope.addProduct = function (product) {
        $scope.IsShowDropdowProduct = false;
        var result = $scope.OrderDetails.filter(function (o) { return o.ProductId == product.Id });
        if (result.length <= 0) {
            var itemCart = {
                Price: product.IsPromotion ? product.PriceDiscount : product.Price,
                ProductId: product.Id,
                ProductCode: product.Code,
                ProductName: product.Name,
                ProductImage: product.Image,
                Quantity: 1,
                IsVariant: product.IsVariant,
                ProductSerial: product.Serial,
                ProductWeight: product.Weight,
                SKU: product.SKU,
                IsTrackingInventory: product.IsTrackingInventory,
            };
            itemCart.Amount = itemCart.Quantity * itemCart.Price;
            $scope.OrderDetails.push(itemCart);
        }
        else {
            var itemCart = result[0];
            itemCart.Quantity = itemCart.Quantity + 1;
            itemCart.Amount = itemCart.Quantity * itemCart.Price;
        }

        var amount = 0;
        for (var i = 0; i < $scope.OrderDetails.length; i++) {
            var item = $scope.OrderDetails[i];
            amount += item.Quantity * item.Price;
        }
        $scope.order.Amount = amount;
        $scope.order.TotalAmount = $scope.order.Amount + $scope.order.ShippingAmount - $scope.order.DiscountAmount - $scope.order.CouponAmount;
    }
    $scope.updateItem = function (item) {
        item.Amount = item.Quantity * item.Price;

        var amount = 0;
        for (var i = 0; i < $scope.OrderDetails.length; i++) {
            var item = $scope.OrderDetails[i];
            amount += item.Quantity * item.Price;
        }
        $scope.order.Amount = amount;
        $scope.order.TotalAmount = $scope.order.Amount + $scope.order.ShippingAmount - $scope.order.DiscountAmount - $scope.order.CouponAmount;
    }
    $scope.removeItem = function (idx) {
        $scope.OrderDetails.splice(idx, 1);
        var amount = 0;
        for (var i = 0; i < $scope.OrderDetails.length; i++) {
            var item = $scope.OrderDetails[i];
            amount += item.Quantity * item.Price;
        }
        $scope.order.Amount = amount;
        $scope.order.TotalAmount = $scope.order.Amount + $scope.order.ShippingAmount - $scope.order.DiscountAmount - $scope.order.CouponAmount;
    }
    $scope.changeDiscountType = function () {
        $scope.IsPercentage = !$scope.IsPercentage;

        $scope.changeDiscount();
    };
    $scope.changeDiscount = function () {
        var amount = 0;
        var discount = 0;
        for (var i = 0; i < $scope.OrderDetails.length; i++) {
            var item = $scope.OrderDetails[i];
            amount += item.Quantity * item.Price;
        }
        if ($scope.IsPercentage)
            discount = amount * $scope.DiscountValue / 100;
        else
            discount = $scope.DiscountValue;
        $scope.order.DiscountAmount = discount;
        $scope.order.Amount = amount;
        $scope.order.TotalAmount = $scope.order.Amount + $scope.order.ShippingAmount - $scope.order.DiscountAmount - $scope.order.CouponAmount;
    };
    $scope.addDiscount = function () {
        $('#modalDiscount').modal('toggle');
    }
    $scope.updateShipping = function () {
        $('#modalShipping').modal('toggle');
        if ($scope.ShippingRateId == 0) {
            $scope.order.ShippingRateName = "Miễn phí vận chuyển";
            $scope.order.ShippingAmount = 0;
        }
        else if ($scope.ShippingRateId > 0) {
            var result = $scope.ShippingRates.filter(function (o) { return o.Id == $scope.ShippingRateId; });
            var obj = result[0];
            console.log(obj);
            $scope.order.ShippingRateId = $scope.ShippingRateId;
            $scope.order.ShippingRateName = obj.Name;
            $scope.order.ShippingAmount = obj.ShippingPrice;
        }
        else if ($scope.ShippingRateId == -1) {
            $scope.order.ShippingRateName = $scope.ShippingRateName;
            $scope.order.ShippingAmount = parseFloat($scope.ShippingAmount);
        }

        $scope.order.TotalAmount = $scope.order.Amount + $scope.order.ShippingAmount - $scope.order.DiscountAmount - $scope.order.CouponAmount;
    }
    $scope.openShipping = function () {
        $('#modalShipping').modal('toggle');
        var amount = 0;
        var weight = 0;
        for (var i = 0; i < $scope.OrderDetails.length; i++) {
            var item = $scope.OrderDetails[i];
            amount += item.Quantity * item.Price;
            weight += item.Quantity * item.ProductWeight;
        }
        var obj = new Object();
        if ($scope.order.IsOtherAddress) {
            obj.provinceId = $scope.order.DeliveryProvinceId;
            obj.districtId = $scope.order.DeliveryDistrictId;
            obj.TotalAmount = amount;
            obj.TotalWeight = weight;
        }
        else {
            obj.provinceId = $scope.order.CustomerProvinceId;
            obj.districtId = $scope.order.CustomerDistrictId;
            obj.TotalAmount = amount;
            obj.TotalWeight = weight;
        }
        orderService.getShippingRates(obj, $scope.getShippingRatesCompleted, $scope.getError);
    }
    $scope.getShippingRatesCompleted = function (response) {
        $scope.ShippingRates = response.Records;
    }
    $scope.changeShippingRate = function (shippingRateId) {
        $scope.ShippingRateId = shippingRateId;
    }
    $scope.showDropdowCustomer = function () {
        $scope.IsShowDropdowCustomer = !$scope.IsShowDropdowCustomer;
        if ($scope.IsCreateCustomer == false)
            $scope.getCustomers($scope.CurrentPageCustomer);
    }

    $scope.getCustomers = function (page) {
        $scope.IsShowDropdowCustomer = true;
        $scope.CurrentPageCustomer = page;
        var obj = {
            jtStartIndex: $scope.CurrentPageCustomer - 1,
            jtPageSize: $scope.PageSize,
            keyword: $scope.keywordCustomer,
        };
        orderService.getCustomers(obj, $scope.getCustomersCompleted, $scope.getError);
    }
    $scope.getCustomersCompleted = function (response) {
        $scope.IsCreateCustomer = true;

        var totalRecord = response.TotalRecordCount;
        var pageCount = parseInt(totalRecord / $scope.PageSize);
        var fromRecord = ($scope.CurrentPageCustomer - 1) * $scope.PageSize + 1;
        var toRecord = $scope.CurrentPageCustomer * $scope.PageSize;

        if (totalRecord % $scope.PageSize != 0) {
            pageCount++;
        }
        if ($scope.CurrentPageCustomer == pageCount)
            toRecord = totalRecord;

        $scope.TotalRecordCustomer = totalRecord;
        $scope.PageCountCustomer = pageCount;
        $scope.FromRecordCustomer = fromRecord;
        $scope.ToRecordCustomer = toRecord;

        $scope.Customers = response.Records;
    }
    $scope.popupCustomer = function () {
        orderService.getProvinces($scope.getProvinceLoadDistrictCompleted, $scope.getError);
        $('#modalAddCustomer').modal('toggle');
    }
    $scope.getProvinceLoadDistrictCompleted = function (response) {
        $scope.Provinces = response.Records;
        if (response.Records.length > 0) {
            var obj = new Object();
            obj.provinceId = response.Records[0].Id;
            $scope.customer.ProvinceId = response.Records[0].Id;
            orderService.getDistricts(obj, $scope.getDistrictsCompleted, $scope.getError);
        }
    }
    $scope.getDistrictByProvince = function (provinceId) {
        var obj = new Object();
        obj.provinceId = provinceId;
        orderService.getDistricts(obj, $scope.getDistrictsCompleted, $scope.getError);
    }
    $scope.createCustomer = function () {
        var customer = $scope.customer;
        orderService.createCustomer(customer, $scope.createCustomerCompleted, $scope.createError);
    }
    $scope.createCustomerCompleted = function (response, status) {
        var obj = response;
        $scope.IsSuccess = obj.IsSuccess;
        $scope.IsError = obj.IsError;
        $scope.InValid = obj.InValid;

        var provinces = $scope.Provinces.filter(function (o) { return o.Id == obj.ProvinceId });
        var districts = $scope.Districts.filter(function (o) { return o.Id == obj.DistrictId });

        obj.ProvinceName = provinces[0].Name;
        obj.DistrictName = districts[0].Name;

        $scope.addCustomer(obj);
        $('#modalAddCustomer').modal('toggle');
    }
    $scope.addCustomer = function (customer) {
        $scope.IsShowDropdowCustomer = false;
        $scope.order.CustomerId = customer.Id;
        $scope.order.CustomerName = customer.Name;
        $scope.order.CustomerPhone = customer.Phone;
        $scope.order.CustomerEmail = customer.Email;
        $scope.order.CustomerAddress = customer.Address;
        $scope.order.CustomerProvinceId = customer.ProvinceId;
        $scope.order.CustomerDistrictId = customer.DistrictId;
        $scope.order.CustomerDistrictName = customer.DistrictName;
        $scope.order.CustomerProvinceName = customer.ProvinceName;

        $scope.order.DeliveryName = customer.Name;
        $scope.order.DeliveryPhone = customer.Phone;
        $scope.order.DeliveryEmail = customer.Email;
        $scope.order.DeliveryAddress = customer.Address;
        $scope.order.DeliveryProvinceId = customer.ProvinceId;
        $scope.order.DeliveryDistrictId = customer.DistrictId;
        $scope.order.DeliveryDistrictName = customer.DistrictName;
        $scope.order.DeliveryProvinceName = customer.ProvinceName;

        var item = { customerId: customer.Id };
        orderService.getOrderOfCustomer(item, $scope.getOrderOfCustomerCompleted, $scope.getError);

        orderService.getProvinces($scope.getCustomerProvincesCompleted, $scope.getError);
        var obj = new Object();
        obj.provinceId = customer.ProvinceId;
        orderService.getDistricts(obj, $scope.getCommonDistrictsCompleted, $scope.getError);
    }
    $scope.getOrderOfCustomerCompleted = function (response) {
        $scope.CountOrder = response.Data;
    }
    $scope.getCustomerDistricts = function () {
        var obj = new Object();
        obj.provinceId = $scope.order.CustomerProvinceId;
        orderService.getDistricts(obj, $scope.getCustomerDistrictsCompleted, $scope.getError);
    }
    $scope.getDeliveryDistricts = function () {
        var obj = new Object();
        obj.provinceId = $scope.order.DeliveryProvinceId;
        orderService.getDistricts(obj, $scope.getDeliveryDistrictsCompleted, $scope.getError);
    }
    $scope.getCustomerProvincesCompleted = function (response) {
        $scope.Provinces = response.Records;
    }
    $scope.getCommonDistrictsCompleted = function (response) {
        $scope.CustomerDistricts = response.Records;
        $scope.DeliveryDistricts = response.Records;
    }
    $scope.getCustomerDistrictsCompleted = function (response) {
        $scope.CustomerDistricts = response.Records;
        if (response.Records.length > 0)
            $scope.order.CustomerDistrictId = response.Records[0].Id;
    }
    $scope.getDeliveryDistrictsCompleted = function (response) {
        $scope.DeliveryDistricts = response.Records;
        if (response.Records.length > 0)
            $scope.order.DeliveryDistrictId = response.Records[0].Id;
    }
    $scope.updateCustomer = function () {
        var provinces = $scope.Provinces.filter(function (o) { return o.Id == $scope.order.CustomerProvinceId });
        var districts = $scope.CustomerDistricts.filter(function (o) { return o.Id == $scope.order.CustomerDistrictId });
        if (provinces.length > 0)
            $scope.order.CustomerProvinceName = provinces[0].Name;
        else
            $scope.order.CustomerProvinceName = "";

        if (districts.length > 0)
            $scope.order.CustomerDistrictName = districts[0].Name;
        else
            $scope.order.CustomerDistrictName = "";
        $('#modalCustomer').modal('toggle');
    }
    $scope.updateDelivery = function () {
        var provinces = $scope.Provinces.filter(function (o) { return o.Id == $scope.order.DeliveryProvinceId });
        var districts = $scope.CustomerDistricts.filter(function (o) { return o.Id == $scope.order.DeliveryDistrictId });
        if (provinces.length > 0)
            $scope.order.DeliveryProvinceName = provinces[0].Name;
        else
            $scope.order.DeliveryProvinceName = "";

        if (districts.length > 0)
            $scope.order.DeliveryDistrictName = districts[0].Name;
        else
            $scope.order.DeliveryDistrictName = "";
        $('#modalDelivery').modal('toggle');
    }
    $scope.removeCustomer = function () {
        $scope.order.CustomerId = null;
        $scope.order.CustomerName = null;
        $scope.order.CustomerPhone = null;
        $scope.order.CustomerEmail = null;
        $scope.order.CustomerAddress = null;
        $scope.order.CustomerProvinceId = null;
        $scope.order.CustomerDistrictId = null;
        $scope.order.CustomerDistrictName = null;
        $scope.order.CustomerProvinceName = null;

        $scope.order.DeliveryName = null;
        $scope.order.DeliveryPhone = null;
        $scope.order.DeliveryEmail = null;
        $scope.order.DeliveryAddress = null;
        $scope.order.DeliveryProvinceId = null;
        $scope.order.DeliveryDistrictId = null;
        $scope.order.DeliveryDistrictName = null;
        $scope.order.DeliveryProvinceName = null;
    }
    $scope.printOrder = function () {
        var contents = document.getElementById("printer-preview-content").innerHTML;
        var frame1 = document.createElement('iframe');
        frame1.name = "frame1";
        //frame1.style.position = "absolute";
        frame1.style.top = "-1000000px";
        document.body.appendChild(frame1);
        var frameDoc = (frame1.contentWindow) ? frame1.contentWindow : (frame1.contentDocument.document) ? frame1.contentDocument.document : frame1.contentDocument;
        frameDoc.document.open();
        frameDoc.document.write('<html><head><title></title>');
        frameDoc.document.write('</head><body>');
        frameDoc.document.write(contents);
        frameDoc.document.write('</body></html>');
        frameDoc.document.close();
        setTimeout(function () {
            window.frames["frame1"].focus();
            window.frames["frame1"].print();
            document.body.removeChild(frame1);
        }, 500);
        return false;
        //var obj = {
        //    Id: $scope.Id,
        //}
        //orderService.printOrder(obj, $scope.printOrderCompleted, $scope.updateError);
    }
    $scope.printOrderCompleted = function (response, status) {
        $scope.IsSuccess = response.IsSuccess;
        $scope.IsError = response.IsError;
        $scope.InValid = response.InValid;
        console.log(response.Data);
        w = window.open();
        w.document.write(response.Data);
        w.print();
        w.close();
    }
});