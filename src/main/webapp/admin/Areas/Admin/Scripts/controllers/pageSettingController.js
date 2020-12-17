app.controller('pageSettingController', function ($scope, $rootScope, $route, $routeParams, $location, pageSettingService, alertsService) {
    $scope.initController = function () {

        var pageSettingID = ($routeParams.id || "");
        $rootScope.applicationModule = "PageSettings";
        $rootScope.alerts = [];

        $scope.initObject();
        $scope.getLayouts();
        pageSettingService.getPages($scope.getPagesCompleted, $scope.getError);
        pageSettingService.getModules($scope.getModulesCompleted, $scope.getError);
        pageSettingService.getViews($scope.getViewsCompleted, $scope.getError);
        pageSettingService.getPermission($scope.getPermissionCompleted, $scope.getError);

        //CKEDITOR.disableAutoInline = true;
        //CKEDITOR.inline('modalHtmlLabel');
        //CKEDITOR.inline('bodyModal');
    }
    //$('#modalHtml').on('shown.bs.modal', function (e) {
    //    $(this).find("*[contenteditable='false']").each(function () {
    //        var name;
    //        for (name in CKEDITOR.instances) {
    //            var instance = CKEDITOR.instances[name];
    //            if (this && this == instance.element.$) {
    //                instance.destroy(true);
    //            }
    //        }
    //        $(this).attr('contenteditable', true);
    //        CKEDITOR.inline(this);
    //    })
    //});

    $.fn.modal.Constructor.prototype.enforceFocus = function () {
        modal_this = this
        $(document).on('focusin.modal', function (e) {
            if (modal_this.$element[0] !== e.target && !modal_this.$element.has(e.target).length
                // add whatever conditions you need here:
            &&
            !$(e.target.parentNode).hasClass('cke_dialog_ui_input_select') && !$(e.target.parentNode).hasClass('cke_dialog_ui_input_text')) {
                modal_this.$element.focus()
            }
        })
    };
    $scope.editorOptions = {
        lineNumbers: true,
        matchBrackets: true,
        mode: 'text/html',
        autoCloseTags: true,
        scrollbarStyle: "simple",
        extraKeys: { "Ctrl-Space": "autocomplete" },
        height: 150,   //set editable area's height
        codemirror: { // codemirror options
            theme: 'monokai'
        }
        //onGutterClick: foldFunc,
        //extraKeys: { "Ctrl-Q": function (cm) { foldFunc(cm, cm.getCursor().line); } }
    };

    $scope.dragControlListeners = {
        accept: function (sourceItemHandleScope, destSortableScope) {
            return true;
        },
        itemMoved: function (event) {
            //var item1 = event.source;
            //var item2 = event.dest;
            //console.log(item1.itemScope.modelValue);
            //console.log(item2.sortableScope.modelValue);
            //console.log(item2.sortableScope.$parent.item);
            var obj = event.dest.sortableScope.$parent.item;
            pageSettingService.updatePosition(obj, $scope.updatePositionCompleted, $scope.updatePositionError);
        },
        orderChanged: function (event) {
            var obj = event.dest.sortableScope.$parent.item;
            pageSettingService.updatePosition(obj, $scope.updatePositionCompleted, $scope.updatePositionError);
        },
        containment: '',
        clone: false,
    };
    $scope.dragControlListeners1 = {
        accept: function (sourceItemHandleScope, destSortableScope) {
            return sourceItemHandleScope.itemScope.sortableScope.$id != destSortableScope.$id;
        },
        itemMoved: function (event) {
            var itemNew = { ModuleId: event.source.itemScope.modelValue.Id, ModuleName: event.source.itemScope.modelValue.Name };
            event.dest.sortableScope.modelValue[event.dest.index] = itemNew;

            var obj = event.dest.sortableScope.$parent.item;
            pageSettingService.insertPosition(obj, $scope.insertPositionCompleted, $scope.insertPositionError);
        },
        dragStart: function (event) {
        },
        orderChanged: function (event) {
        },
        containment: '',
        clone: true,
    };
    $scope.insertPositionCompleted = function (response, status) {
        $scope.showModule(response.Data);
        $scope.getLayouts();
    }
    $scope.insertPositionError = function (response) {
        console.log(response.Message);
        var $item = $(".todo-list").find("[data-id='']");
        $item.fadeOut(function () {
            $item.remove();
        });
    }
    $scope.updatePositionCompleted = function (response, status) {
    }
    $scope.updatePositionError = function (response) {
        alert(response.Message);
    }

    $scope.showModule = function (item) {
        if (item.ModuleIsHtml) {
            $scope.showModuleHtml(item.Id);
        }
        if (item.ModuleIsYoutube) {
            $scope.showModuleYoutube(item.Id);
        }
        if (item.ModuleIsComment) {
            $scope.showModuleComment(item.Id);
        }
        if (item.ModuleIsLikeBox) {
            $scope.showModuleLikeBox(item.Id);
        }
        if (item.ModuleIsColumn) {
            $scope.showModuleColumn(item.Id);
        }
    }
    $scope.showSetting = function (item) {
        if (item.IsHtml) {
            $scope.showModuleHtml(item.Id);
        }
        if (item.IsYoutube) {
            $scope.showModuleYoutube(item.Id);
        }
        if (item.IsComment) {
            $scope.showModuleComment(item.Id);
        }
        if (item.IsLikeBox) {
            $scope.showModuleLikeBox(item.Id);
        }
        if (item.IsColumn) {
            $scope.showModuleColumn(item.Id);
        }
    }
    $scope.showModuleHtml = function (id) {
        var obj = { id: id };
        pageSettingService.getModuleHtml(obj, $scope.getModuleHtmlCompleted, $scope.getError);
        $('#modalHtml').modal('show');
    }
    $scope.getModuleHtmlCompleted = function (response, status) {
        var obj = {
            Id: response.Data.Id,
            Name: response.Data.Name,
            Content: response.Data.Content,
            ShowHeader: response.Data.ShowHeader,
        };
        $scope.html = obj;
    }
    $scope.updateModuleHtml = function () {
        pageSettingService.updateModuleHtml($scope.html, $scope.updateModuleHtmlCompleted, $scope.updateModuleError);

    }
    $scope.updateModuleHtmlCompleted = function (response, status) {
        $('#modalHtml').modal('toggle');
        $scope.getLayouts();
    }

    $scope.getYoutubeId = function () {
        var videolink = $scope.youtube.Url;
        var regExp = /^.*((youtu.be\/)|(v\/)|(\/u\/\w\/)|(embed\/)|(watch\?))\??v?=?([^#\&\?]*).*/;
        var match = videolink.match(regExp);

        if (match && match[7].length == 11) {
            $scope.youtube.Code = match[7];
            return;
        }
        regExp = "vimeo\\.com/(?:.*#|.*/videos/)?([0-9]+)";
        match = videolink.match(regExp);
        if (match) {
            var videoid = videolink.split('/')[videolink.split('/').length - 1];
            $scope.youtube.Code = videoid;
        }

        else {
            alert("Unknown url");
        }
    }
    $scope.showModuleYoutube = function (id) {
        var obj = { id: id };
        pageSettingService.getModuleYoutube(obj, $scope.getModuleYoutubeCompleted, $scope.getError);
        $('#modalYoutube').modal('show');
    }
    $scope.getModuleYoutubeCompleted = function (response, status) {
        var obj = {
            Id: response.Data.Id,
            Autoplay: response.Data.Autoplay,
            Height: response.Data.Height,
            Image: response.Data.Image,
            Name: response.Data.Name,
            Code: response.Data.Code,
            Summary: response.Data.Summary,
            Url: response.Data.Url,
            Width: response.Data.Width,
        };
        $scope.youtube = obj;
    }
    $scope.updateModuleYoutube = function () {
        pageSettingService.updateModuleYoutube($scope.youtube, $scope.updateModuleYoutubeCompleted, $scope.updateModuleError);

    }
    $scope.updateModuleYoutubeCompleted = function (response, status) {
        $('#modalYoutube').modal('toggle');
    }

    $scope.showModuleComment = function (id) {
        var obj = { id: id };
        pageSettingService.getModuleComment(obj, $scope.getModuleCommentCompleted, $scope.getError);
        $scope.ColorSchemes = [{ Code: "light", Name: "Màu sáng" }, { Code: "dark", Name: "Màu tối" }]
        $('#modalComment').modal('show');
    }
    $scope.getModuleCommentCompleted = function (response, status) {
        var obj = {
            Id: response.Data.Id,
            ColorScheme: response.Data.ColorScheme,
            NumberOfPost: response.Data.NumberOfPost,
            Url: response.Data.Url,
            Width: response.Data.Width,
        };
        $scope.comment = obj;
    }
    $scope.updateModuleComment = function () {
        pageSettingService.updateModuleComment($scope.comment, $scope.updateModuleCommentCompleted, $scope.updateModuleError);

    }
    $scope.updateModuleCommentCompleted = function (response, status) {
        $('#modalComment').modal('toggle');
    }

    $scope.showModuleLikeBox = function (id) {
        var obj = { id: id };
        pageSettingService.getModuleLikeBox(obj, $scope.getModuleLikeBoxCompleted, $scope.getError);
        $scope.ColorSchemes = [{ Code: "light", Name: "Màu sáng" }, { Code: "dark", Name: "Màu tối" }]
        $('#modalLikeBox').modal('show');
    }
    $scope.getModuleLikeBoxCompleted = function (response, status) {
        var obj = {
            Id: response.Data.Id,
            ColorScheme: response.Data.ColorScheme,
            Height: response.Data.Height,
            ShowBorder: response.Data.ShowBorder,
            ShowFriendFace: response.Data.ShowFriendFace,
            ShowPost: response.Data.ShowPost,
            Url: response.Data.Url,
            ShowHeader: response.Data.ShowHeader,
            Width: response.Data.Width,
        };
        $scope.likeBox = obj;
    }
    $scope.updateModuleLikeBox = function () {
        pageSettingService.updateModuleLikeBox($scope.likeBox, $scope.updateModuleLikeBoxCompleted, $scope.updateModuleError);

    }
    $scope.updateModuleLikeBoxCompleted = function (response, status) {
        $('#modalLikeBox').modal('toggle');
    }

    $scope.showModuleColumn = function (id) {
        var obj = { id: id };
        pageSettingService.getModule(obj, $scope.getModuleColumnCompleted, $scope.getError);
        $('#modalModuleColumn').modal('show');
    }
    $scope.getModuleColumnCompleted = function (response, status) {
        var obj = {
            Id: response.Data.Id,
            Inactive: response.Data.Inactive,
            Index: response.Data.Index,
            ModuleAction: response.Data.Action,
            ModuleController: response.Data.Controller,
            ModuleId: response.Data.ModuleId,
            ModuleName: response.Data.Name,
            ModuleIsCommon: response.Data.IsCommon,
            ModuleIsFixed: response.Data.IsFixed,
            ModuleIsHtml: response.Data.IsHtml,
            ModuleIsYoutube: response.Data.IsYoutube,
            ModuleIsComment: response.Data.IsComment,
            ModuleIsLikeBox: response.Data.IsLikeBox,
            ModuleIsColumn: response.Data.IsColumn,
            ModuleIsEdit: response.Data.IsEdit,
            Column: response.Data.Column,
            ContentHtml: response.Data.ContentHtml,
            ShopPageId: response.Data.ShopPageId,
        };
        $scope.module = {
            ContentHtml: "",
            ModuleIsHtml: false,
        };
        $scope.module = obj;
    }
    $scope.updateModuleColumn = function () {
        pageSettingService.updateModuleColumn($scope.module, $scope.updateModuleColumnCompleted, $scope.updateModuleError);

    }
    $scope.updateModuleColumnCompleted = function (response, status) {
        $('#modalModuleColumn').modal('toggle');
    }

    $scope.showModuleContent = function (id) {
        var obj = { id: id };
        pageSettingService.getModule(obj, $scope.getModuleContentCompleted, $scope.getError);
        $('#modalModuleContent').modal('show');
    }
    $scope.getModuleContentCompleted = function (response, status) {
        var obj = {
            Id: response.Data.Id,
            Inactive: response.Data.Inactive,
            Index: response.Data.Index,
            ModuleAction: response.Data.Action,
            ModuleController: response.Data.Controller,
            ModuleId: response.Data.ModuleId,
            ModuleName: response.Data.Name,
            ModuleIsCommon: response.Data.IsCommon,
            ModuleIsFixed: response.Data.IsFixed,
            ModuleIsHtml: response.Data.IsHtml,
            ModuleIsYoutube: response.Data.IsYoutube,
            ModuleIsComment: response.Data.IsComment,
            ModuleIsLikeBox: response.Data.IsLikeBox,
            ModuleIsColumn: response.Data.IsColumn,
            ModuleIsEdit: response.Data.IsEdit,
            Column: response.Data.Column,
            ContentHtml: response.Data.ContentHtml,
            ShopPageId: response.Data.ShopPageId,
        };
        $scope.module = {
            ContentHtml: "",
            ModuleIsHtml: false,
        };
        $scope.module = obj;
    }
    $scope.resetModuleContent = function () {
        if ($scope.module.IsApplyAll && !confirm("Bạn có chắc áp dụng nội dung của module này cho tất cả các vị trí khác trong tất các trang "))
            return;
        $scope.module.ContentHtml = null;
        pageSettingService.updateModuleContent($scope.module, $scope.updateModuleContentCompleted, $scope.updateModuleError);

    }
    $scope.updateModuleContent = function () {
        if ($scope.module.IsApplyAll && !confirm("Bạn có chắc áp dụng nội dung của module này cho tất cả các vị trí khác trong tất các trang "))
            return;
        pageSettingService.updateModuleContent($scope.module, $scope.updateModuleContentCompleted, $scope.updateModuleError);

    }
    $scope.updateModuleContentCompleted = function (response, status) {
        $('#modalModuleContent').modal('toggle');
    }

    $scope.updateModuleError = function (response) {
        alert(response.Message);
    }

    $scope.getLayouts = function () {
        if ($scope.PageId != 7 && $scope.PageId != 18)
            $scope.GroupId = 0;
        var obj = { pageId: $scope.PageId, groupId: $scope.GroupId };
        pageSettingService.getLayouts(obj, $scope.getLayoutsCompleted, $scope.getError);
    }
    $scope.getDataGroups = function () {
        if ($scope.PageId == 7)
            pageSettingService.getProductGroups($scope.getDataGroupCompleted, $scope.getError);
        else if ($scope.PageId == 18)
            pageSettingService.getNewsGroups($scope.getDataGroupCompleted, $scope.getError);
    }
    $scope.options = {
        height: 300,
        toolbar: 'full',
        autoParagraph: false,
        enterMode: CKEDITOR.ENTER_DIV,
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
        $scope.ViewId = 0;
        $scope.PageId = 1;
        $scope.GroupId = 0;
        $scope.UrlReview = "/";
        $scope.ColumnProducts = [{ Id: 2, Name: "2" }, { Id: 3, Name: "3" }, { Id: 4, Name: "4" }, { Id: 6, Name: "6" }];
    }
    $scope.changeColumn = function (column) {
        $scope.module.Column = column;
    }
    $scope.createObject = function () {
        var PageSetting = {

        };
        return PageSetting;
    }
    $scope.resetValues = function (index) {

    }

    $scope.getLayoutsCompleted = function (response) {
        $scope.Layouts = response.Records;
        if ($scope.Layouts.length > 0)
            $scope.ViewId = $scope.Layouts[0].ViewId;
        else
            $scope.ViewId = 0;
    }
    $scope.getDataGroupCompleted = function (response) {
        $scope.Groups = response.Records;
    }
    $scope.getPagesCompleted = function (response) {
        $scope.Pages = response.Records;
    }
    $scope.getModulesCompleted = function (response) {
        $scope.Modules = response.Records;
    }
    $scope.getViewsCompleted = function (response) {
        $scope.Views = response.Records;
    }
    $scope.getError = function (response) {
        alert(response.Message);
    }
    $scope.clearValidationErrors = function () {
    }

    $scope.create = function () {
        var pageSetting = $scope.createObject();
        pageSettingService.create(pageSetting, $scope.createCompleted, $scope.createError);
    }
    $scope.createBack = function () {
        var pageSetting = $scope.createObject();
        pageSettingService.create(pageSetting, $scope.createCompleted, $scope.createError);
        $location.path("/pagesetting");
    }
    $scope.createCompleted = function (response, status) {
        $scope.IsSuccess = response.IsSuccess;
        $scope.IsError = response.IsError;
        $scope.InValid = response.InValid;
        $scope.resetValues(response.Index);
    }
    $scope.createError = function (response) {
        $scope.IsSuccess = response.IsSuccess;
        $scope.IsError = response.IsError;
        $scope.InValid = response.InValid;
        $scope.Message = alertsService.FormatMessage(response.ReturnMessage);
    }

    $scope.update = function () {
        var pageSetting = $scope.createObject();
        pageSettingService.update(pageSetting, $scope.updateCompleted, $scope.updateError);
    }
    $scope.updateBack = function () {
        var pageSetting = $scope.createObject();
        pageSettingService.update(pageSetting, $scope.updateCompleted, $scope.updateError);
        $location.path("/pagesetting");
    }
    $scope.updateCompleted = function (response, status) {
        $scope.IsSuccess = response.IsSuccess;
        $scope.IsError = response.IsError;
        $scope.InValid = response.InValid;
    }
    $scope.updateError = function (response) {
        $scope.IsSuccess = response.IsSuccess;
        $scope.IsError = response.IsError;
        $scope.InValid = response.InValid;
        $scope.Message = alertsService.FormatMessage(response.ReturnMessage);
    }

    $scope.deletePosition = function (id) {
        if (confirm("Bạn có muốn xóa vị trí này?")) {
            var obj = { id: id };
            pageSettingService.deletePosition(obj, $scope.deletePositionCompleted, $scope.deletesError);
        }
    }
    $scope.deletePositionCompleted = function (response, status) {
        var $item = $(".todo-list").find("[data-id='" + response.Data + "']");
        $item.fadeOut(function () {
            $item.remove();
        });
        $scope.getLayouts();
    }
    $scope.deletesError = function (response) {
        alert(response.Message);
    }

    $scope.updateLayout = function (viewId) {
        if (confirm("Bạn có muốn thiết lập lại bố cục mặc định của trang không?")) {
            $scope.ViewId = viewId;
            var obj = { PageId: $scope.PageId, ViewId: $scope.ViewId };
            var groupId = $scope.GroupId;
            if (groupId == 0)
                groupId = null;

            if ($scope.PageId == 7)
                obj.ProductGroupId = groupId;
            else if ($scope.PageId == 18)
                obj.NewsGroupId = groupId;
            pageSettingService.updateLayout(obj, $scope.updateLayoutCompleted, $scope.updateLayoutError);
        }
    }
    $scope.updateLayoutCompleted = function (response, status) {
        $('#modalView').modal('toggle');
        $scope.getLayouts();
    }
    $scope.resetLayoutError = function (response) {
        alert(response.Message);
    }

    $scope.resetLayout = function () {
        if (confirm("Bạn có muốn thiết lập lại bố cục mặc định của trang không?")) {
            var obj = { pageId: $scope.PageId, viewId: $scope.ViewId, groupId: $scope.GroupId };
            pageSettingService.resetLayout(obj, $scope.resetLayoutCompleted, $scope.resetLayoutError);
        }
    }
    $scope.resetLayoutCompleted = function (response, status) {
        $scope.getLayouts();
    }
    $scope.resetLayoutError = function (response) {
        alert(response.Message);
    }
    $scope.getUrlReview = function () {
        var obj = { pageId: $scope.PageId, groupId: $scope.GroupId };
        pageSettingService.getUrlReview(obj, $scope.getUrlReviewCompleted, $scope.getError);
    }
    $scope.getUrlReviewCompleted = function (response) {
        $scope.UrlReview = response.Data;
    }
    $scope.getPermissionCompleted = function (response) {
        $scope.shop = response.Data;
    }
});
