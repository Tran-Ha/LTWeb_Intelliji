<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html class="smart-style-1">

<head>
    <title>homeJSP.admin.Zoe</title>
    <!-- start add link css -->
    <%@ include file="head.jsp"%>
    <!-- end add link css -->
</head>

<body class="fixed-header fixed-navigation smart-style-1 desktop-detected ng-scope">
    <!-- 	start header -->
    <%@ include file="header.jsp"%>
    <!-- 	end header -->
    <!-- 	start left navigation -->
    <%@ include file="navigation.jsp"%>
    <!-- 	end left navigation -->
    <!-- start	main panel -->
    <div data-ng-view="" class="ng-scope">
        <div id="main" role="main" class="ng-scope">
            <!-- RIBBON -->
            <div id="ribbon">
                <!-- breadcrumb -->
                <ol class="breadcrumb">
                    <li>Home</li>
                    <li>Đơn hàng</li>
                    <li>Lê Tề Thiên</li>
                </ol>
                <!-- end breadcrumb -->
            </div>
            <!-- END RIBBON -->
            <!-- MAIN CONTENT -->
            <div id="content">
                <div class="row" style="display: none;">
                    <article class="col-md-12">
                        <div ng-show="IsError" class="alert alert-danger fade in ng-hide">
                            <button data-dismiss="alert" class="close"></button>
                            <i class="fa-fw fa fa-times"></i>
                            <strong>Error!</strong>
                            <span ng-bind-html="Message" class="ng-binding"></span>
                        </div>
                        <div ng-show="IsSuccess" class="alert alert-success fade in ng-hide">
                            <button data-dismiss="alert" class="close"></button>
                            <i class="fa-fw fa fa-check"></i>
                            <strong>Success!</strong> Cập nhật thành công.
                        </div>
                    </article>
                </div>

                <div class="row">
                    <div class="col-sm-9" id="sub_content">
                        <div class="well">
                            <table class="table">
                                <thead>
                                    <tr>
                                        <th class="hasSort border-none-b">Ngày đặt</th>
                                        <th class="hasSort border-none-b">Mã đơn hàng</th>
                                        <th class="hasSort border-none-b">Hình thức giao hàng</th>
                                        <th class="hasSort border-none-b text-center">Hình thức thanh toán</th>
                                        <th class="hasSort border-none-b text-center">Tổng tiền</th>
                                        <th class="hasSort border-none-b text-center">Trạng thái</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <!-- ngRepeat: item in Orders -->
                                    <tr ng-repeat="item in Orders" class="ng-scope">
                                        <td class="ng-binding">11/28/2020 7:58PM</td>
                                        <td>
                                            <a class="hover-underline text-underline pre-line ng-binding"
                                                target="_blank" href="/admin#/order/details/31014">#100000002</a>
                                        </td>
                                        <td>
                                            <span>Giao hàng tiết kiệm</span>
                                        </td>
                                        <td><span>Thanh toán khi nhận hàng</span></td>
                                        <td class="text-right ng-binding">929,000</td>
                                        <td class="text-center ng-binding">
                                            Chờ xác nhận
                                        </td>
                                    </tr><!-- end ngRepeat: item in Orders -->
                                    <tr ng-repeat="item in Orders" class="ng-scope">
                                        <td class="ng-binding">11/27/2020 11:02AM</td>
                                        <td>
                                            <a class="hover-underline text-underline pre-line ng-binding"
                                                target="_blank" href="/admin#/order/details/31006">#100000001</a>
                                        </td>
                                        <td>
                                            <span>Giao hàng nhanh</span>
                                        </td>
                                        <td><span>Thanh toán khi nhận hàng</span></td>
                                        <td class="text-right ng-binding">119,000</td>
                                        <td class="text-center ng-binding">
                                            Đã hủy
                                        </td>
                                    </tr><!-- end ngRepeat: item in Orders -->
                                </tbody>
                            </table>
                            <div class="footer-toolbar row">
                                <div class="col-xs-12 col-sm-6">
                                    <div class="dataTables_info ng-binding">Tổng 2 Items </div>
                                </div>
                                <div class="col-xs-12 col-sm-6">
                                    <paging class="small ng-isolate-scope" page="currentPage" page-size="pageSize"
                                        total="total" adjacent="2" dots="..." scroll-top="false" hide-if-empty="false"
                                        ul-class="pagination" active-class="active" disabled-class="disabled"
                                        show-prev-next="true"
                                        paging-action="DoCtrlPagingAct('Paging Clicked', page, pageSize, total)">
                                        <ul ng-hide="Hide" ng-class="ulClass" class="pagination">
                                            <!-- ngRepeat: Item in List -->
                                            <li title="First Page" ng-class="Item.liClass" ng-click="Item.action()"
                                                ng-repeat="Item in List" class="ng-scope disabled"> <span
                                                    ng-bind="Item.value" class="ng-binding">&lt;&lt;</span> </li>
                                            <!-- end ngRepeat: Item in List -->
                                            <li title="Previous Page" ng-class="Item.liClass" ng-click="Item.action()"
                                                ng-repeat="Item in List" class="ng-scope disabled"> <span
                                                    ng-bind="Item.value" class="ng-binding">&lt;</span> </li>
                                            <!-- end ngRepeat: Item in List -->
                                            <li title="Page 1" ng-class="Item.liClass" ng-click="Item.action()"
                                                ng-repeat="Item in List" class="ng-scope active"> <span
                                                    ng-bind="Item.value" class="ng-binding">1</span> </li>
                                            <!-- end ngRepeat: Item in List -->
                                            <li title="Next Page" ng-class="Item.liClass" ng-click="Item.action()"
                                                ng-repeat="Item in List" class="ng-scope disabled"> <span
                                                    ng-bind="Item.value" class="ng-binding">&gt;</span> </li>
                                            <!-- end ngRepeat: Item in List -->
                                            <li title="Last Page" ng-class="Item.liClass" ng-click="Item.action()"
                                                ng-repeat="Item in List" class="ng-scope disabled"> <span
                                                    ng-bind="Item.value" class="ng-binding">&gt;&gt;</span> </li>
                                            <!-- end ngRepeat: Item in List -->
                                        </ul>
                                    </paging>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-3">
                        <div class="panel panel-default">
                            <div class="panel-body">
                                <h4>Thông tin khách hàng</h4>
                                <ul class="margin-top-10">
                                    <li>
                                        <img alt="User Picture" class="img-thumbnail width-60-px radius-cycle"
                                            src="https://secure.gravatar.com/avatar/3f009d72559f51e7e454b16e5d0687a1.jpg?s=40&amp;d=https%3A%2F%2Fs.gravatar.com%2Favatar%2F18f9f20ec1a7be8020924ce0048b6ef2%3Fs%3D40"
                                            width="40">
                                    </li>
                                    <li class="color-blue margin-top-20 margin-bottom-20">
                                        <a class="hover-underline fa-1-5 text-capitalize ng-binding"
                                            href="/admin#/order/details/49852">Lê Tề Thiên</a>
                                        <div class="pull-right color_darkblue"> <i class="fa fa-order"></i> <span
                                                class="ng-binding">2</span> đơn hàng</div>
                                    </li>
                                    <li class="color-blue ng-binding">
                                        0123456789
                                    </li>
                                    <li class="color-blue clearfix overflow-ellipsis">
                                        <a href="mailto:letanphat.toanb.k42@gmail.com" class="block-display">
                                            <span class="ng-binding">letethien@gmail.com</span>
                                        </a>
                                    </li>
                                    <li><span class="ng-binding">khu phố 6, Linh Trung, Thủ Đức</span>
                                        <p class="ng-binding">tp Hồ Chí Minh</p>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- END MAIN CONTENT -->
        </div>
    </div>
    <!-- end main panel -->
    <!-- start footer -->
    <%@ include file="footer.jsp"%>
    <!-- end footer -->
    <!-- start add script -->
    <%@ include file="scripts.jsp"%>
    <!-- end add script -->
</body>

</html>