app.controller('memberController', function ($scope, $rootScope, $route, $routeParams, $location, memberService, alertsService) {
    $scope.initializeController = function () {

        var memberID = ($routeParams.id || "");
        $rootScope.applicationModule = "Members";
        $rootScope.alerts = [];

        $scope.initObject();
        memberService.getProvinces($scope.getProvincesCompleted, $scope.getError);
        if (memberID > 0) {
            var obj = new Object();
            obj.Id = memberID;
            memberService.getMember(obj, $scope.getEditCompleted, $scope.getError);
        }
        else {
            $scope.getDistricts(1);
        }
    }

    $scope.initObject = function () {
        $scope.Id = 0;
        $scope.Address = "";
        $scope.CreatedDate = new Date();
        $scope.DateOfBirth = new Date();
        $scope.DistrictId = 0;
        $scope.Email = "";
        $scope.Gender = false;
        $scope.Inactive = false;
        $scope.Name = "";
        $scope.Password = "";
        $scope.RePassword = "";
        $scope.Phone = "";
        $scope.ProvinceId = 0;
        $scope.Avatar = "/Areas/Admin/Images/icon-upload.png";
        $scope.Code = "";
        $scope.IsNewsLetter = false;
    }
    $scope.createObject = function () {
        var Member = {
            Id: $scope.Id,
            Address: $scope.Address,
            CreatedDate: $scope.CreatedDate,
            DateOfBirth: $scope.DateOfBirth,
            DistrictId: $scope.DistrictId,
            Email: $scope.Email,
            Gender: $scope.Gender,
            Inactive: $scope.Inactive,
            Name: $scope.Name,
            Password: $scope.Password,
            RePassword: $scope.Password,
            Phone: $scope.Phone,
            ProvinceId: $scope.ProvinceId,
            Avatar: $scope.Avatar,
            Code: $scope.Code,
            IsNewsLetter: $scope.IsNewsLetter,
        };
        return Member;
    }
    $scope.resetValues = function (index) {
        $scope.Id = 0;
        $scope.Address = "";
        $scope.CreatedDate = new Date();
        $scope.DateOfBirth = new Date();
        $scope.DistrictId = 0;
        $scope.Email = "";
        $scope.Gender = false;
        $scope.Inactive = false;
        $scope.Name = "";
        $scope.Password = "";
        $scope.RePassword = "";
        $scope.Phone = "";
        $scope.ProvinceId = 0;
        $scope.Avatar = "/Areas/Admin/Images/icon-upload.png";
        $scope.Code = "";
        $scope.IsNewsLetter = false;
    }

    $scope.addImage = function (image) {
        $scope.Avatar = image;
    }
    $scope.deleteImage = function () {
        $scope.Avatar = "/Areas/Admin/Images/icon-upload.png";
    };

    $scope.getEditCompleted = function (response) {
        $scope.Id = response.Data.Id;
        $scope.Address = response.Data.Address;
        $scope.CreatedDate = response.Data.CreatedDate;
        $scope.DateOfBirth = response.Data.DateOfBirth;
        $scope.DistrictId = response.Data.DistrictId;
        $scope.Email = response.Data.Email;
        $scope.Gender = response.Data.Gender;
        $scope.Inactive = response.Data.Inactive;
        $scope.Name = response.Data.Name;
        $scope.Password = response.Data.Password;
        $scope.RePassword = response.Data.RePassword;
        $scope.Phone = response.Data.Phone;
        $scope.ProvinceId = response.Data.ProvinceId;
        $scope.Avatar = response.Data.Avatar;
        $scope.Code = response.Data.Code;
        $scope.IsNewsLetter = response.Data.IsNewsLetter;
        $scope.getDistricts($scope.ProvinceId);
    }
    $scope.getProvincesCompleted = function (response) {
        $scope.Provinces = response.Records;
    }
    $scope.getDistricts = function (provinceId) {
        var obj = new Object();
        obj.provinceId = provinceId;
        memberService.getDistricts(obj, $scope.getDistrictsCompleted, $scope.getError);
    }
    $scope.getDistrictsCompleted = function (response) {
        $scope.Districts = response.Records;
    }

    $scope.getError = function (response) {
        $scope.Message = response.Message;
    }
    $scope.clearValidationErrors = function () {
    }

    $scope.create = function () {
        var member = $scope.createObject();
        memberService.create(member, $scope.createCompleted, $scope.createError);
    }
    $scope.createBack = function () {
        var member = $scope.createObject();
        memberService.create(member, $scope.createBackCompleted, $scope.createError);
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
        $location.path("/member");
    }
    $scope.createError = function (response) {
        $scope.IsSuccess = response.IsSuccess;
        $scope.IsError = response.IsError;
        $scope.InValid = response.InValid;
        $scope.Message = alertsService.FormatMessage(response.ReturnMessage);
    }

    $scope.update = function () {
        var member = $scope.createObject();
        memberService.update(member, $scope.updateCompleted, $scope.updateError);
    }
    $scope.updateBack = function () {
        var member = $scope.createObject();
        memberService.update(member, $scope.updateBackCompleted, $scope.updateError);
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
        $location.path("/member");
    }

    $scope.updateError = function (response) {
        $scope.IsSuccess = response.IsSuccess;
        $scope.IsError = response.IsError;
        $scope.InValid = response.InValid;
        $scope.Message = alertsService.FormatMessage(response.ReturnMessage);
    }

    $scope.deletes = function (arr) {
        memberService.deletes(arr, $scope.deletesCompleted, $scope.deletesError);
    }
    $scope.deletesCompleted = function (response, status) {
        $route.reload();
    }
    $scope.deletesError = function (response) {
        alert(response.Message);
    }
});
app.controller('customerController', function ($scope, $rootScope, $route, $routeParams, $location, customerService, alertsService) {
    $scope.initializeController = function () {

        var customerID = ($routeParams.id || "");
        $rootScope.applicationModule = "Customers";
        $rootScope.alerts = [];
        $scope.CustomerId = customerID;

        $scope.initPage();
        $scope.getOrderByCustomers();
        if (customerID > 0) {
            var obj = new Object();
            obj.Id = customerID;
            customerService.getMember(obj, $scope.getEditCompleted, $scope.getError);
        }
    }
    $scope.initPage = function () {
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
    }

    $scope.DoCtrlPagingAct = function (text, page, pageSize, total) {
        var obj = {
            customerId: $scope.CustomerId,
            jtStartIndex: (page - 1),
            jtPageSize: $scope.pageSize,
        };
        customerService.getOrderByCustomers(obj, $scope.getOrderByCustomersCompleted, $scope.getError);
    };
    $scope.getOrderByCustomers = function () {
        var itemSearch = {
            customerId: $scope.CustomerId,
            jtStartIndex: 0,
            jtPageSize: $scope.pageSize,
        };
        customerService.getOrderByCustomers(itemSearch, $scope.getOrderByCustomersCompleted, $scope.getError);
    }
    $scope.getOrderByCustomersCompleted = function (response) {
        $scope.Orders = response.Records;
        $scope.total = response.TotalRecordCount;
    }
    $scope.getEditCompleted = function (response) {
        var customer = {
            Id: response.Data.Id,
            Address: response.Data.Address,
            CreatedDate: response.Data.CreatedDate,
            DateOfBirth: response.Data.DateOfBirth,
            DistrictId: response.Data.DistrictId,
            DistrictName: response.Data.DistrictName,
            Email: response.Data.Email,
            Gender: response.Data.Gender,
            Inactive: response.Data.Inactive,
            Name: response.Data.Name,
            Password: response.Data.Password,
            RePassword: response.Data.RePassword,
            Phone: response.Data.Phone,
            ProvinceId: response.Data.ProvinceId,
            ProvinceName: response.Data.ProvinceName,
            Avatar: response.Data.Avatar,
            Code: response.Data.Code,
            IsNewsLetter: response.Data.IsNewsLetter,
        };
        $scope.customer = customer;
    }

    $scope.getError = function (response) {
        $scope.Message = response.Message;
    }

});