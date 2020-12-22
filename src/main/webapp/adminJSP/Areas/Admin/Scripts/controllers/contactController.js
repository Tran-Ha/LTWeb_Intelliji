app.controller('contactController', function ($scope, $rootScope, $route, $routeParams, $location, $filter, contactService, alertsService) {
    $scope.initializeController = function () {

        var contactID = ($routeParams.id || "");
        $rootScope.applicationModule = "Contacts";
        $rootScope.alerts = [];

        $scope.initObject();

        if (contactID > 0) {
            var obj = new Object();
            obj.Id = contactID;
            contactService.getContact(obj, $scope.getEditCompleted, $scope.getError);
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
    }
    $scope.createObject = function () {
        var Contact = {
            Id: $scope.Id,
            Address: $scope.Address,
            Content: $scope.Content,
            CreatedDate: $scope.CreatedDate,
            Email: $scope.Email,
            Name: $scope.Name,
            Phone: $scope.Phone,
            Title: $scope.Title,
        };
        return Contact;
    }
    $scope.resetValues = function (index) {
    }

    $scope.getEditCompleted = function (response) {
        $scope.Id = response.Data.Id;
        $scope.Address = response.Data.Address;
        $scope.Content = response.Data.Content;
        $scope.CreatedDate = $filter('date')(response.Data.CreatedDate, 'd/MM/yyyy HH:mm');
        $scope.Email = response.Data.Email;
        $scope.Name = response.Data.Name;
        $scope.Phone = response.Data.Phone;
        $scope.Title = response.Data.Title;
    }

    $scope.getError = function (response) {
        $scope.Message = response.Message;
    }
    $scope.clearValidationErrors = function () {
    }
    $scope.deletes = function (arr) {
        contactService.deletes(arr, $scope.deletesCompleted, $scope.deletesError);
    }
    $scope.deletesCompleted = function (response, status) {
        $route.reload();
    }
    $scope.deletesError = function (response) {
        alert(response.Message);
    }
});
