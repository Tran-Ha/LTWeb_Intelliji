var app = angular.module("appModule", ["ngRoute", "summernote", "ngSanitize", "bw.paging", "as.sortable", "ngMap", "blockUI", "ui.codemirror", "ngCkeditor"]);
app.directive('ckEditor', function () {
    return {
        require: '?ngModel',
        link: function (scope, elm, attr, ngModel) {
            var ck = CKEDITOR.replace(elm[0]);
            if (!ngModel) return;
            ck.on('instanceReady', function () {
                ck.setData(ngModel.$viewValue);
            });
            function updateModel() {
                scope.$apply(function () {
                    ngModel.$setViewValue(ck.getData());
                });
            }
            ck.on('change', updateModel);
            ck.on('key', updateModel);
            ck.on('dataReady', updateModel);

            ngModel.$render = function (value) {
                ck.setData(ngModel.$viewValue);
            };
        }
    };
});
app.constant('configGlobal',
    {
    });
app.config(['$httpProvider', '$routeProvider', '$locationProvider', 'blockUIConfig', function ($httpProvider, $routeProvider, $locationProvider, $blockUIConfig) {
    //debugger;
    //$locationProvider.html5Mode({
    //    enabled: true,
    //    requireBase: false
    //});

    $blockUIConfig.autoBlock = false;
    $blockUIConfig.autoInjectBodyBlock = false;
    $blockUIConfig.resetOnException = false;
    $blockUIConfig.delay = 0;
    $blockUIConfig.requestFilter = function (config) {

        var message;

        switch (config.method) {
            case 'GET':
                message = 'Loading ...';
                break;

            case 'POST':
                message = 'Posting ...';
                break;

            case 'DELETE':
                message = 'Deleting ...';
                break;

            case 'PUT':
                message = 'Putting ...';
                break;
        };

        return message;

    };
    $routeProvider.when('/home',
                        {
                            templateUrl: '/admin/home/dashboard',
                            controller: 'homeController'
                        });

    $routeProvider.when('/product',
                        {
                            templateUrl: '/admin/product/productlist',
                            controller: 'productController'
                        });
    $routeProvider.when('/product/create',
                        {
                            templateUrl: '/admin/product/productcreate',
                            controller: 'productController'
                        });
    $routeProvider.when('/product/edit/:id',
                        {
                            templateUrl: '/admin/product/productedit',
                            controller: 'productController'
                        });

    $routeProvider.when('/productgroup',
                        {
                            templateUrl: '/admin/productgroup/productgrouplist',
                            controller: 'productGroupController'
                        });
    $routeProvider.when('/productgroup/create',
                        {
                            templateUrl: '/admin/productgroup/productgroupcreate',
                            controller: 'productGroupController'
                        });
    $routeProvider.when('/productgroup/edit/:id',
                        {
                            templateUrl: '/admin/productgroup/productgroupedit',
                            controller: 'productGroupController'
                        });
    $routeProvider.when('/product/inventory',
                        {
                            templateUrl: '/admin/product/productinventory',
                            controller: 'productController'
                        });
    $routeProvider.when('/product/:productId/variant/create',
                       {
                           templateUrl: '/admin/product/productvariantcreate',
                           controller: 'productController'
                       });
    $routeProvider.when('/product/:productId/variant/:id',
                       {
                           templateUrl: '/admin/product/productvariant',
                           controller: 'productController'
                       });

    $routeProvider.when('/project',
                        {
                            templateUrl: '/admin/project/projectlist',
                            controller: 'projectController'
                        });
    $routeProvider.when('/project/create',
                        {
                            templateUrl: '/admin/project/projectcreate',
                            controller: 'projectController'
                        });
    $routeProvider.when('/project/edit/:id',
                        {
                            templateUrl: '/admin/project/projectedit',
                            controller: 'projectController'
                        });

    $routeProvider.when('/projectgroup',
                        {
                            templateUrl: '/admin/projectgroup/projectgrouplist',
                            controller: 'projectGroupController'
                        });
    $routeProvider.when('/projectgroup/create',
                        {
                            templateUrl: '/admin/projectgroup/projectgroupcreate',
                            controller: 'projectGroupController'
                        });
    $routeProvider.when('/projectgroup/edit/:id',
                        {
                            templateUrl: '/admin/projectgroup/projectgroupedit',
                            controller: 'projectGroupController'
                        });

    $routeProvider.when('/exchange',
                        {
                            templateUrl: '/admin/exchange/exchangelist',
                            controller: 'exchangeController'
                        });
    $routeProvider.when('/exchange/create',
                        {
                            templateUrl: '/admin/exchange/exchangecreate',
                            controller: 'exchangeController'
                        });
    $routeProvider.when('/exchange/edit/:id',
                        {
                            templateUrl: '/admin/exchange/exchangeedit',
                            controller: 'exchangeController'
                        });

    $routeProvider.when('/exchangegroup',
                        {
                            templateUrl: '/admin/exchangegroup/exchangegrouplist',
                            controller: 'exchangeGroupController'
                        });
    $routeProvider.when('/exchangegroup/create',
                        {
                            templateUrl: '/admin/exchangegroup/exchangegroupcreate',
                            controller: 'exchangeGroupController'
                        });
    $routeProvider.when('/exchangegroup/edit/:id',
                        {
                            templateUrl: '/admin/exchangegroup/exchangegroupedit',
                            controller: 'exchangeGroupController'
                        });

    $routeProvider.when('/exchangeprice',
                        {
                            templateUrl: '/admin/exchangeprice/exchangepricelist',
                            controller: 'exchangePriceController'
                        });
    $routeProvider.when('/exchangeprice/create',
                        {
                            templateUrl: '/admin/exchangeprice/exchangepricecreate',
                            controller: 'exchangePriceController'
                        });
    $routeProvider.when('/exchangeprice/edit/:id',
                        {
                            templateUrl: '/admin/exchangeprice/exchangepriceedit',
                            controller: 'exchangePriceController'
                        });

    $routeProvider.when('/news',
                        {
                            templateUrl: '/admin/news/newslist',
                            controller: 'newsController'
                        });
    $routeProvider.when('/news/create',
                        {
                            templateUrl: '/admin/news/newscreate',
                            controller: 'newsController'
                        });
    $routeProvider.when('/news/edit/:id',
                        {
                            templateUrl: '/admin/news/newsedit',
                            controller: 'newsController'
                        });

    $routeProvider.when('/newsgroup',
                        {
                            templateUrl: '/admin/newsgroup/newsgrouplist',
                            controller: 'newsGroupController'
                        });
    $routeProvider.when('/newsgroup/create',
                        {
                            templateUrl: '/admin/newsgroup/newsgroupcreate',
                            controller: 'newsGroupController'
                        });
    $routeProvider.when('/newsgroup/edit/:id',
                        {
                            templateUrl: '/admin/newsgroup/newsgroupedit',
                            controller: 'newsGroupController'
                        });

    $routeProvider.when('/service',
                       {
                           templateUrl: '/admin/service/servicelist',
                           controller: 'serviceController'
                       });
    $routeProvider.when('/service/create',
                        {
                            templateUrl: '/admin/service/servicecreate',
                            controller: 'serviceController'
                        });
    $routeProvider.when('/service/edit/:id',
                        {
                            templateUrl: '/admin/service/serviceedit',
                            controller: 'serviceController'
                        });

    $routeProvider.when('/servicegroup',
                        {
                            templateUrl: '/admin/servicegroup/servicegrouplist',
                            controller: 'serviceGroupController'
                        });
    $routeProvider.when('/servicegroup/create',
                        {
                            templateUrl: '/admin/servicegroup/servicegroupcreate',
                            controller: 'serviceGroupController'
                        });
    $routeProvider.when('/servicegroup/edit/:id',
                        {
                            templateUrl: '/admin/servicegroup/servicegroupedit',
                            controller: 'serviceGroupController'
                        });

    $routeProvider.when('/gallery',
                       {
                           templateUrl: '/admin/gallery/gallerylist',
                           controller: 'galleryController'
                       });
    $routeProvider.when('/gallery/create',
                        {
                            templateUrl: '/admin/gallery/gallerycreate',
                            controller: 'galleryController'
                        });
    $routeProvider.when('/gallery/edit/:id',
                        {
                            templateUrl: '/admin/gallery/galleryedit',
                            controller: 'galleryController'
                        });

    $routeProvider.when('/gallerygroup',
                        {
                            templateUrl: '/admin/gallerygroup/gallerygrouplist',
                            controller: 'galleryGroupController'
                        });
    $routeProvider.when('/gallerygroup/create',
                        {
                            templateUrl: '/admin/gallerygroup/gallerygroupcreate',
                            controller: 'galleryGroupController'
                        });
    $routeProvider.when('/gallerygroup/edit/:id',
                        {
                            templateUrl: '/admin/gallerygroup/gallerygroupedit',
                            controller: 'galleryGroupController'
                        });

    $routeProvider.when('/adv',
                        {
                            templateUrl: '/admin/adv/advlist',
                            controller: 'advController'
                        });
    $routeProvider.when('/adv/create',
                        {
                            templateUrl: '/admin/adv/advcreate',
                            controller: 'advController'
                        });
    $routeProvider.when('/adv/edit/:id',
                        {
                            templateUrl: '/admin/adv/advedit',
                            controller: 'advController'
                        });

    $routeProvider.when('/partner',
                        {
                            templateUrl: '/admin/partner/partnerlist',
                            controller: 'partnerController'
                        });
    $routeProvider.when('/partner/create',
                        {
                            templateUrl: '/admin/partner/partnercreate',
                            controller: 'partnerController'
                        });
    $routeProvider.when('/partner/edit/:id',
                        {
                            templateUrl: '/admin/partner/partneredit',
                            controller: 'partnerController'
                        });

    $routeProvider.when('/order',
                        {
                            templateUrl: '/admin/order/orderlist',
                            controller: 'orderController'
                        });
    $routeProvider.when('/order/create',
                        {
                            templateUrl: '/admin/order/ordercreate',
                            controller: 'orderController'
                        });
    $routeProvider.when('/order/details/:id',
                        {
                            templateUrl: '/admin/order/orderdetails',
                            controller: 'orderController'
                        });
    $routeProvider.when('/order/reorder/:id',
                        {
                            templateUrl: '/admin/order/reorder',
                            controller: 'orderController'
                        });
    $routeProvider.when('/order/draft',
                        {
                            templateUrl: '/admin/order/orderdraft',
                            controller: 'orderController'
                        });
    $routeProvider.when('/order/draft/details/:id',
                        {
                            templateUrl: '/admin/order/orderdraftdetails',
                            controller: 'orderController'
                        });
    $routeProvider.when('/order/shipping',
                        {
                            templateUrl: '/admin/order/ordershipping',
                            controller: 'orderController'
                        });
    $routeProvider.when('/order/shipping/details/:id',
                        {
                            templateUrl: '/admin/order/ordershippingdetails',
                            controller: 'orderController'
                        });
    $routeProvider.when('/paymentmethod',
                        {
                            templateUrl: '/admin/paymentmethod/paymentmethodlist',
                            controller: 'paymentMethodController'
                        });
    $routeProvider.when('/paymentmethod/create',
                        {
                            templateUrl: '/admin/paymentmethod/paymentmethodcreate',
                            controller: 'paymentMethodController'
                        });
    $routeProvider.when('/paymentmethod/edit/:id',
                        {
                            templateUrl: '/admin/paymentmethod/paymentmethodedit',
                            controller: 'paymentMethodController'
                        });

    $routeProvider.when('/storetemplate',
                        {
                            templateUrl: '/admin/storetemplate/storetemplatelist',
                            controller: 'storeTemplateController'
                        });
    $routeProvider.when('/theme',
                        {
                            templateUrl: '/admin/theme/themeindex',
                            controller: 'themeController'
                        });

    $routeProvider.when('/config',
                        {
                            templateUrl: '/admin/config/configindex',
                            controller: 'configController'
                        });
    $routeProvider.when('/config/general',
                        {
                            templateUrl: '/admin/config/configgeneral',
                            controller: 'configController'
                        });
    $routeProvider.when('/config/product',
                        {
                            templateUrl: '/admin/config/configproduct',
                            controller: 'configController'
                        });
    $routeProvider.when('/config/project',
                        {
                            templateUrl: '/admin/config/configproject',
                            controller: 'configController'
                        });
    $routeProvider.when('/config/service',
                        {
                            templateUrl: '/admin/config/configservice',
                            controller: 'configController'
                        });
    $routeProvider.when('/config/gallery',
                        {
                            templateUrl: '/admin/config/configgallery',
                            controller: 'configController'
                        });
    $routeProvider.when('/config/exchange',
                        {
                            templateUrl: '/admin/config/configexchange',
                            controller: 'configController'
                        });
    $routeProvider.when('/config/news',
                        {
                            templateUrl: '/admin/config/confignews',
                            controller: 'configController'
                        });
    $routeProvider.when('/config/order',
                        {
                            templateUrl: '/admin/config/configorder',
                            controller: 'configController'
                        });
    $routeProvider.when('/config/seo',
                        {
                            templateUrl: '/admin/config/configseo',
                            controller: 'configController'
                        });
    $routeProvider.when('/config/map',
                        {
                            templateUrl: '/admin/config/configmap',
                            controller: 'configController'
                        });
    $routeProvider.when('/config/domain',
                        {
                            templateUrl: '/admin/config/configdomain',
                            controller: 'configController'
                        });
    $routeProvider.when('/config/banner',
                        {
                            templateUrl: '/admin/config/configbanner',
                            controller: 'configController'
                        });
    $routeProvider.when('/config/background',
                        {
                            templateUrl: '/admin/config/configbackground',
                            controller: 'configController'
                        });
    $routeProvider.when('/config/account',
                        {
                            templateUrl: '/admin/config/configaccount',
                            controller: 'configController'
                        });
    $routeProvider.when('/config/account/change',
                        {
                            templateUrl: '/admin/config/configaccountchange',
                            controller: 'configController'
                        });
    $routeProvider.when('/config/account/checkout/atm/complete',
                       {
                           templateUrl: '/admin/config/configaccountcheckoutatmcomplete',
                           controller: 'configController'
                       });
    $routeProvider.when('/config/account/checkout/visa/complete',
                       {
                           templateUrl: '/admin/config/configaccountcheckoutvisacomplete',
                           controller: 'configController'
                       });
    $routeProvider.when('/config/account/checkout/:id',
                        {
                            templateUrl: '/admin/config/configaccountcheckout',
                            controller: 'configController'
                        });
    $routeProvider.when('/config/account/transfer/:id',
                        {
                            templateUrl: '/admin/config/configaccounttransfer',
                            controller: 'configController'
                        });
    $routeProvider.when('/config/account/invoice/:id',
                        {
                            templateUrl: '/admin/config/configaccountinvoice',
                            controller: 'configController'
                        });
    $routeProvider.when('/config/account/coupon',
                        {
                            templateUrl: '/admin/config/configaccountcoupon',
                            controller: 'configController'
                        });
    $routeProvider.when('/config/shipping',
                        {
                            templateUrl: '/admin/config/configshipping',
                            controller: 'configController'
                        });
    $routeProvider.when('/config/checkout',
                        {
                            templateUrl: '/admin/config/configcheckout',
                            controller: 'configController'
                        });
    $routeProvider.when('/config/notification',
                       {
                           templateUrl: '/admin/config/confignotification',
                           controller: 'configController'
                       });
    $routeProvider.when('/config/notification/edit/:id',
                        {
                            templateUrl: '/admin/config/confignotificationupdate',
                            controller: 'configController'
                        });

    $routeProvider.when('/member',
                        {
                            templateUrl: '/admin/member/memberlist',
                            controller: 'memberController'
                        });
    $routeProvider.when('/member/create',
                        {
                            templateUrl: '/admin/member/membercreate',
                            controller: 'memberController'
                        });
    $routeProvider.when('/member/edit/:id',
                        {
                            templateUrl: '/admin/member/memberedit',
                            controller: 'memberController'
                        });
    $routeProvider.when('/member/details/:id',
                        {
                            templateUrl: '/admin/member/memberdetails',
                            controller: 'memberController'
                        });
    $routeProvider.when('/userlogin',
                        {
                            templateUrl: '/admin/userlogin/userloginlist',
                            controller: 'userLoginController'
                        });
    $routeProvider.when('/userlogin/create',
                        {
                            templateUrl: '/admin/userlogin/userlogincreate',
                            controller: 'userLoginController'
                        });
    $routeProvider.when('/userlogin/edit/:id',
                        {
                            templateUrl: '/admin/userlogin/userloginedit',
                            controller: 'userLoginController'
                        });
    $routeProvider.when('/userlogin/changepassword',
                        {
                            templateUrl: '/admin/userlogin/userloginchangepassword',
                            controller: 'userLoginController'
                        });

    $routeProvider.when('/contact',
                        {
                            templateUrl: '/admin/contact/contactlist',
                            controller: 'contactController'
                        });
    $routeProvider.when('/contact/details/:id',
                        {
                            templateUrl: '/admin/contact/contactdetails',
                            controller: 'contactController'
                        });
    $routeProvider.when('/newsletter',
                        {
                            templateUrl: '/admin/newsletter/newsletterlist',
                            controller: 'newsLetterController'
                        });
    $routeProvider.when('/newsletter/details/:id',
                        {
                            templateUrl: '/admin/newsletter/newsletterdetails',
                            controller: 'newsLetterController'
                        });
    $routeProvider.when('/about',
                        {
                            templateUrl: '/admin/about/aboutlist',
                            controller: 'aboutController'
                        });
    $routeProvider.when('/about/create',
                        {
                            templateUrl: '/admin/about/aboutcreate',
                            controller: 'aboutController'
                        });
    $routeProvider.when('/about/edit/:id',
                        {
                            templateUrl: '/admin/about/aboutedit',
                            controller: 'aboutController'
                        });

    $routeProvider.when('/support',
                        {
                            templateUrl: '/admin/support/supportlist',
                            controller: 'supportController'
                        });
    $routeProvider.when('/support/create',
                        {
                            templateUrl: '/admin/support/supportcreate',
                            controller: 'supportController'
                        });
    $routeProvider.when('/support/edit/:id',
                        {
                            templateUrl: '/admin/support/supportedit',
                            controller: 'supportController'
                        });
    $routeProvider.when('/menu',
                        {
                            templateUrl: '/admin/menu/menulist',
                            controller: 'menuController'
                        });
    $routeProvider.when('/menu/create',
                        {
                            templateUrl: '/admin/menu/menucreate',
                            controller: 'menuController'
                        });
    $routeProvider.when('/menu/edit/:id',
                        {
                            templateUrl: '/admin/menu/menuedit',
                            controller: 'menuController'
                        });

    $routeProvider.when('/page',
                       {
                           templateUrl: '/admin/page/pagelist',
                           controller: 'pageController'
                       });
    $routeProvider.when('/page/create',
                        {
                            templateUrl: '/admin/page/pagecreate',
                            controller: 'pageController'
                        });
    $routeProvider.when('/page/edit/:id',
                        {
                            templateUrl: '/admin/page/pageedit',
                            controller: 'pageController'
                        });

    $routeProvider.when('/pagecontent',
                       {
                           templateUrl: '/admin/pagecontent/pagecontentlist',
                           controller: 'pageContentController'
                       });
    $routeProvider.when('/pagecontent/create',
                        {
                            templateUrl: '/admin/pagecontent/pagecontentcreate',
                            controller: 'pageContentController'
                        });
    $routeProvider.when('/pagecontent/edit/:id',
                        {
                            templateUrl: '/admin/pagecontent/pagecontentedit',
                            controller: 'pageContentController'
                        });

    $routeProvider.when('/slideshow',
                        {
                            templateUrl: '/admin/slideshow/slideshowlist',
                            controller: 'slideshowController'
                        });
    $routeProvider.when('/slideshow/create',
                        {
                            templateUrl: '/admin/slideshow/slideshowcreate',
                            controller: 'slideshowController'
                        });
    $routeProvider.when('/slideshow/edit/:id',
                        {
                            templateUrl: '/admin/slideshow/slideshowedit',
                            controller: 'slideshowController'
                        });
    $routeProvider.when('/pagesetting',
                        {
                            templateUrl: '/admin/pagesetting/pagesetting',
                            controller: 'pageSettingController'
                        });

    $routeProvider.when('/discount',
                        {
                            templateUrl: '/admin/discount/index',
                            controller: 'discountController'
                        });
    $routeProvider.when('/discount/create',
                        {
                            templateUrl: '/admin/discount/create',
                            controller: 'discountController'
                        });

    $routeProvider.otherwise(
                        {
                            redirectTo: '/home'
                        });

    //$locationProvider.html5Mode(true).hashPrefix('!')
}]);

