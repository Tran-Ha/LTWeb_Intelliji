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
                    <li>#100000003</li>
                </ol>
                <!-- end breadcrumb -->
            </div>
            <!-- END RIBBON -->
            <!-- MAIN CONTENT -->
            <div id="content">
                <!-- widget grid -->
                <section id="widget-grid" class="">
                    <!-- row -->
                    <div class="row">
                        <!-- NEW WIDGET START -->
                        <article class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
                            <!-- Widget ID (each widget will need unique ID)-->
                            <div class="jarviswidget well jarviswidget-color-darken" id="wid-id-0"
                                data-widget-sortable="false" data-widget-deletebutton="false"
                                data-widget-editbutton="false" data-widget-colorbutton="false">
                                <header>
                                    <span class="widget-icon"> <i class="fa fa-barcode"></i> </span>
                                    <h2>Item #44761 </h2>
                                </header>
                                <!-- widget div-->
                                <div>
                                    <!-- widget edit box -->
                                    <div class="jarviswidget-editbox">
                                        <!-- This area used as dropdown edit box -->
                                    </div>
                                    <!-- end widget edit box -->
                                    <!-- widget content -->
                                    <div class="widget-body no-padding">
                                        <div class="padding-10">
                                            <!-- <br> -->
                                            <div class="pull-left">
                                                <!-- <img src="Uploads/shop292/images/hoa-sen-logo-design 3.gif" alt=""
                                                    width="150" height="32"> -->
                                                <br>
                                                <h4 class="semi-bold">
                                                    Thông tin khách hàng
                                                </h4>
                                                <address class="ng-binding">
                                                    <strong class="ng-binding">Lê Tề Thiên</strong>
                                                    <br>khu phố 6, Linh Trung, Thủ Đức, tp Hồ Chí Minh<br>
                                                    letanphat.toanb.k42@gmail.com
                                                    <br>
                                                    <abbr title="Phone">Phone: 0123456789</abbr>
                                                    <br>
                                                    <a class="text-underline" target="_blank"
                                                        href="https://www.google.com/maps/place/ Quận 2 Hồ Chí Minh Vietnam">Xem
                                                        bản đồ</a>
                                                </address>
                                            </div>
                                            <div class="pull-right">
                                                <h1 class="font-400">Đơn hàng</h1>
                                            </div>
                                            <div class="clearfix"></div>
                                            <br>
                                            <div class="row">
                                                <div class="col-sm-8">
                                                    <h4 class="semi-bold">Thông tin giao hàng </h4>
                                                    <address class="ng-binding">
                                                        <strong class="ng-binding">Lê Tề Thiên</strong>
                                                        <br>khu phố 6, Linh Trung, Thủ Đức, tp Hồ Chí Minh<br>
                                                        letanphat.toanb.k42@gmail.com
                                                        <br>
                                                        <abbr title="Phone">Phone: 0123456789</abbr>
                                                        <br>
                                                        <a class="text-underline" target="_blank"
                                                            href="https://www.google.com/maps/place/ Quận 2 Hồ Chí Minh Vietnam">Xem
                                                            bản đồ</a>
                                                    </address>
                                                </div>
                                                <div class="col-sm-4">
                                                    <div>
                                                        <div>
                                                            <strong>Mã đơn hàng :</strong>
                                                            <span class="pull-right ng-binding"> #100000003 </span>
                                                        </div>
                                                    </div>
                                                    <div>
                                                        <div>
                                                            <strong>Hình thức giao hàng :</strong>
                                                            <span class="pull-right ng-binding"> Giao hàng nhanh </span>
                                                        </div>
                                                    </div>
                                                    <div>
                                                        <div>
                                                            <strong>Hình thức thanh toán :</strong>
                                                            <span class="pull-right ng-binding"> Thanh toán khi nhận
                                                                hàng </span>
                                                        </div>
                                                    </div>
                                                    <div>
                                                        <div>
                                                            <strong>Ngày tạo :</strong>
                                                            <span class="pull-right ng-binding"> <i
                                                                    class="fa fa-calendar"></i> 28/11/2020 19:58 </span>
                                                        </div>
                                                    </div>
                                                    <br>
                                                    <div
                                                        class="well well-sm  bg-color-darken txt-color-white no-border">
                                                        <div class="fa-lg">
                                                            Thanh toán :
                                                            <span class="pull-right ng-binding"> 758,200đ </span>
                                                        </div>

                                                    </div>
                                                    <br>
                                                    <br>
                                                </div>
                                            </div>
                                            <table class="table table-hover" style="margin-bottom: 0px">
                                                <thead>
                                                    <tr>
                                                        <th>Sản phẩm</th>
                                                        <th>Hình ảnh</th>
                                                        <th class="text-center">Số lượng</th>
                                                        <th>Đơn giá</th>
                                                        <th>Thành tiền</th>
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                    <!-- ngRepeat: item in OrderDetails -->
                                                    <tr ng-repeat="item in OrderDetails" class="ng-scope">
                                                        <td>
                                                            <a href="/san-pham/ao-kieu-nu-co-yem.html" target="_blank"
                                                                class="ng-binding">So boring!</a>
                                                            <!-- ngIf: item.IsVariant==true -->
                                                            <p class="note">SKU : br 1207<span
                                                                    class="ng-binding"></span></p>
                                                        </td>
                                                        <td><img ng-src="/Uploads/shop910/images/products/ao-yem-1_master.jpg"
                                                                class="img-responsive" style="height:40px;"
                                                                src="productImages/product1.jpg">
                                                        </td>
                                                        <td class="text-center"><strong class="ng-binding">1</strong>
                                                        </td>
                                                        <td class="ng-binding">199,000đ</td>
                                                        <td class="text-right ng-binding">199,000đ</td>
                                                    </tr><!-- end ngRepeat: item in OrderDetails -->
                                                    <tr ng-repeat="item in OrderDetails" class="ng-scope">
                                                        <td>
                                                            <a href="/san-pham/ao-so-mi-nu-vnxk.html" target="_blank"
                                                                class="ng-binding">Live without love</a>
                                                            <!-- ngIf: item.IsVariant==true -->
                                                            <p class="note">SKU : nl 0012<span
                                                                    class="ng-binding"></span></p>
                                                        </td>
                                                        <td><img ng-src="/Uploads/shop910/images/products/ao-somi-2_master.jpg"
                                                                class="img-responsive" style="height:40px;"
                                                                src="productImages/product1.jpg">
                                                        </td>
                                                        <td class="text-center"><strong class="ng-binding">1</strong>
                                                        </td>
                                                        <td class="ng-binding">280,000đ</td>
                                                        <td class="text-right ng-binding">280,000đ</td>
                                                    </tr><!-- end ngRepeat: item in OrderDetails -->
                                                    <tr ng-repeat="item in OrderDetails" class="ng-scope">
                                                        <td>
                                                            <a href="/san-pham/bikini-bi-ao-lung.html" target="_blank"
                                                                class="ng-binding">Let happyness come with me</a>
                                                            <!-- ngIf: item.IsVariant==true -->
                                                            <p class="note">SKU : hp 1302<span
                                                                    class="ng-binding"></span></p>
                                                        </td>
                                                        <td><img ng-src="/Uploads/shop910/images/products/1200_6_451_master.jpg"
                                                                class="img-responsive" style="height:40px;"
                                                                src="productImages/product1.jpg">
                                                        </td>
                                                        <td class="text-center"><strong class="ng-binding">1</strong>
                                                        </td>
                                                        <td class="ng-binding">450,000đ</td>
                                                        <td class="text-right ng-binding">450,000đ</td>
                                                    </tr><!-- end ngRepeat: item in OrderDetails -->
                                                </tbody>
                                                <tbody class="order-totals-summary">
                                                    <tr>
                                                        <td></td>
                                                        <td></td>
                                                        <td></td>
                                                        <td class="text-right">
                                                            Tổng giá trị sản phẩm:
                                                        </td>
                                                        <td class="text-right">
                                                            <span class="ng-binding">929,000 ₫</span>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td class="text-right" colspan="4">
                                                            Mã khuyến mãi<strong class="ng-binding">()</strong>:
                                                        </td>
                                                        <td class="text-right">
                                                            <span class="ng-binding">185800 ₫</span>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td class="text-right" colspan="4">
                                                            Phí vận chuyển
                                                            <strong class="ng-binding">()</strong>
                                                        </td>
                                                        <td class="text-right p-sm-r">
                                                            <span class="ng-binding">15,000</span>
                                                            <span>₫</span>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td class="text-right" colspan="4">
                                                            Số tiền phải thanh toán:
                                                        </td>
                                                        <td class="text-right">
                                                            <span class="ng-binding">758,200</span>
                                                            <span>₫</span>
                                                        </td>
                                                    </tr>
                                                </tbody>
                                            </table>
                                            <div class="invoice-footer">
                                                <div class="row">
                                                    <hr>
                                                    <div class="col-sm-5 pull-right">
                                                        <div class="invoice-sum-total pull-right">
                                                            <h3 style="margin: 0px 10px 10px 10px"><strong>Thanh toán:
                                                                    <span class="text-success ng-binding">758,200
                                                                        ₫</span></strong></h3>
                                                        </div>
                                                    </div>
                                                    <!-- <div class="row">
                                                    <div class="col-sm-12">
                                                        <p class="note ng-binding"></p>
                                                    </div>
                                                </div> -->
                                                </div>
                                            </div>
                                        </div>
                                        <!-- end widget content -->
                                    </div>
                                    <!-- end widget div -->
                                </div>
                                <!-- end widget -->
                            </div>
                        </article>
                        <!-- WIDGET END -->
                    </div>
                    <!-- end row -->
                </section>
                <!-- end widget grid -->
            </div>
            <!-- widget grid -->
            <!-- end widget grid -->
        </div>
        <!-- END MAIN CONTENT -->
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