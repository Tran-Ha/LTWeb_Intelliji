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
        <div id="main" role="main" block-ui="myBlockUI" ng-controller="memberController"
            ng-init="initializeController()" class="ng-scope block-ui block-ui-anim-fade" aria-busy="false">
            <!-- RIBBON -->
            <div id="ribbon">

                <!-- breadcrumb -->
                <ol class="breadcrumb">
                    <li>Home</li>
                    <li>Thành viên</li>
                    <li>Thêm mới thành viên</li>
                </ol>
                <!-- end breadcrumb -->
                <!-- You can also add more buttons to the
                ribbon for further usability
                Example below:-->
                <span class="ribbon-button-alignment pull-right">
                    <button type="button" class="btn btn-primary btn-sm" data-title="save" ng-click="create()"><i
                            class="fa fa-save"></i> Lưu</button>
                    <button type="button" class="btn btn-primary btn-sm" data-title="save" ng-click="createBack()"><i
                            class="fa fa-plus"></i> Lưu &amp; Quay lại</button>
                    <a href="member.jsp" class="btn btn-default btn-sm">Trở về</a>
                </span>
            </div>
            <!-- END RIBBON -->
            <!-- MAIN CONTENT -->
            <div id="content">
                <div class="row">
                    <div class="col-sm-12">
                        <div class="well form-horizontal">
                            <h2>Thông tin tài khoản</h2>

                            <div class="form-group">
                                <label class="col-md-3 control-label">Tên tài khoản</label>
                                <div class="col-md-8">
                                    <input type="text" class="form-control ng-pristine ng-untouched ng-valid"
                                        ng-model="UserName">
                                </div>
                            </div>

                            <div class="form-group">
                                <label class="col-md-3 control-label">Emai đăng nhập</label>
                                <div class="col-md-8">
                                    <input type="text" class="form-control ng-pristine ng-untouched ng-valid"
                                        ng-model="Email">
                                </div>
                            </div>

                            <div class="form-group">
                                <label class="col-md-3 control-label">Mật khẩu</label>
                                <div class="col-md-8">
                                    <input type="password" class="form-control ng-pristine ng-untouched ng-valid"
                                        ng-model="Password">
                                </div>
                            </div>

                            <div class="form-group">
                                <label class="col-md-3 control-label">Nhắc lại mật khẩu</label>
                                <div class="col-md-8">
                                    <input type="password" class="form-control ng-pristine ng-untouched ng-valid"
                                        ng-model="RePassword">
                                </div>
                            </div>

                            <h2>Thông tin cá nhân</h2>
                            <hr>
                            <div class="form-group">
                                <label class="col-md-3 control-label">Họ tên</label>
                                <div class="col-md-8">
                                    <input type="text" class="form-control ng-pristine ng-untouched ng-valid"
                                        ng-model="Name">
                                </div>
                            </div>

                            <div class="form-group">
                                <label class="col-md-3 control-label">Ngày sinh</label>
                                <div class="col-md-8">
                                    <input type="date" class="form-control ng-pristine ng-untouched ng-valid"
                                        ng-model="DateOfBirth">
                                </div>
                            </div>

                            <div class="form-group">
                                <label class="col-md-3 control-label">Giới tính</label>
                                <div class="col-md-8">
                                    <input type="radio" id="nam" name="gender" value="nam">
                                    <label for="nam">Nam</label><br>

                                    <input type="radio" id="nu" name="gender" value="nu">
                                    <label for="nu">Nữ</label><br>

                                    <input type="radio" id="chuaRo" name="gender" value="chuaRo" checked="checked">
                                    <label for="chuaRo">Chưa rõ</label><br>
                                </div>
                            </div>

                            <div class="form-group">
                                <label class="col-md-3 control-label">Avatar</label>
                                <div class="col-md-8">
                                    <img class="img-upload" src="Areas/Admin/Images/icon-upload.png"
                                        ng-init="Image='Areas/Admin/Images/icon-upload.png'" onclick="UploadImage()">
                                </div>
                            </div>

                            <div class="form-group">
                                <label class="col-md-3 control-label">Tỉnh/Thành phố</label>
                                <div class="col-md-8">
                                    <select class="form-control ng-pristine ng-untouched ng-valid" ng-model="ProvinceId"
                                        ng-options="item.Id as item.Name for item in Provinces"
                                        ng-change="getDistricts(ProvinceId)">
                                        <option value="?" selected="selected"></option>
                                        <option value="number:1" label="Hồ Chí Minh">Hồ Chí Minh</option>
                                        <option value="number:2" label="Hà Nội">Hà Nội</option>
                                        <option value="number:3" label="Đà Nẵng">Đà Nẵng</option>
                                        <option value="number:4" label="Cần Thơ">Cần Thơ</option>
                                        <option value="number:5" label=" Thừa Thiên - Huế"> Thừa Thiên - Huế</option>
                                        <option value="number:6" label="An Giang">An Giang</option>
                                        <option value="number:7" label="Bà Rịa-Vũng Tàu">Bà Rịa-Vũng Tàu</option>
                                        <option value="number:8" label="Bạc Liêu">Bạc Liêu</option>
                                        <option value="number:9" label="Bắc Kạn">Bắc Kạn</option>
                                        <option value="number:10" label="Bắc Giang">Bắc Giang</option>
                                        <option value="number:11" label="Bắc Ninh">Bắc Ninh</option>
                                        <option value="number:12" label="Bến Tre">Bến Tre</option>
                                        <option value="number:13" label="Bình Dương">Bình Dương</option>
                                        <option value="number:14" label="Bình Định">Bình Định</option>
                                        <option value="number:15" label="Bình Phước">Bình Phước</option>
                                        <option value="number:16" label="Bình Thuận">Bình Thuận</option>
                                        <option value="number:17" label="Cà Mau">Cà Mau</option>
                                        <option value="number:18" label="Cao Bằng">Cao Bằng</option>
                                        <option value="number:19" label="Đắk Lắk">Đắk Lắk</option>
                                        <option value="number:20" label="Đắk Nông">Đắk Nông</option>
                                        <option value="number:21" label="Điện Biên">Điện Biên</option>
                                        <option value="number:22" label="Đồng Nai">Đồng Nai</option>
                                        <option value="number:23" label="Đồng Tháp">Đồng Tháp</option>
                                        <option value="number:24" label="Gia Lai">Gia Lai</option>
                                        <option value="number:25" label="Hà Giang">Hà Giang</option>
                                        <option value="number:26" label="Hà Nam">Hà Nam</option>
                                        <option value="number:27" label="Hà Tây">Hà Tây</option>
                                        <option value="number:28" label="Hà Tĩnh">Hà Tĩnh</option>
                                        <option value="number:29" label="Hải Dương">Hải Dương</option>
                                        <option value="number:30" label="Hải Phòng">Hải Phòng</option>
                                        <option value="number:31" label="Hòa Bình">Hòa Bình</option>
                                        <option value="number:32" label="Hậu Giang">Hậu Giang</option>
                                        <option value="number:33" label="Hưng Yên">Hưng Yên</option>
                                        <option value="number:34" label="Khánh Hòa">Khánh Hòa</option>
                                        <option value="number:35" label="Kiên Giang">Kiên Giang</option>
                                        <option value="number:36" label="Kon Tum">Kon Tum</option>
                                        <option value="number:37" label="Lai Châu">Lai Châu</option>
                                        <option value="number:38" label="Lào Cai">Lào Cai</option>
                                        <option value="number:39" label="Lạng Sơn">Lạng Sơn</option>
                                        <option value="number:40" label="Lâm Đồng">Lâm Đồng</option>
                                        <option value="number:41" label="Long An">Long An</option>
                                        <option value="number:42" label="Nam Định">Nam Định</option>
                                        <option value="number:43" label="Nghệ An">Nghệ An</option>
                                        <option value="number:44" label="Ninh Bình">Ninh Bình</option>
                                        <option value="number:45" label="Ninh Thuận">Ninh Thuận</option>
                                        <option value="number:46" label="Phú Thọ">Phú Thọ</option>
                                        <option value="number:47" label="Phú Yên">Phú Yên</option>
                                        <option value="number:48" label="Quảng Bình">Quảng Bình</option>
                                        <option value="number:49" label="Quảng Nam">Quảng Nam</option>
                                        <option value="number:50" label="Quảng Ngãi">Quảng Ngãi</option>
                                        <option value="number:51" label="Quảng Ninh">Quảng Ninh</option>
                                        <option value="number:52" label="Quảng Trị">Quảng Trị</option>
                                        <option value="number:53" label="Sóc Trăng">Sóc Trăng</option>
                                        <option value="number:54" label="Sơn La">Sơn La</option>
                                        <option value="number:55" label="Tây Ninh">Tây Ninh</option>
                                        <option value="number:56" label="Thái Bình">Thái Bình</option>
                                        <option value="number:57" label="Thái Nguyên">Thái Nguyên</option>
                                        <option value="number:58" label="Thanh Hóa">Thanh Hóa</option>
                                        <option value="number:59" label="Thừa Thiên - Huế">Thừa Thiên - Huế</option>
                                        <option value="number:60" label="Tiền Giang">Tiền Giang</option>
                                        <option value="number:61" label="Trà Vinh">Trà Vinh</option>
                                        <option value="number:62" label="Tuyên Quang">Tuyên Quang</option>
                                        <option value="number:63" label="Vĩnh Long">Vĩnh Long</option>
                                        <option value="number:64" label="Vĩnh Phúc">Vĩnh Phúc</option>
                                        <option value="number:65" label="Yên Bái">Yên Bái</option>
                                    </select>
                                </div>
                            </div>

                            <div class="form-group">
                                <label class="col-md-3 control-label">Địa chỉ chi tiết</label>
                                <div class="col-md-8">
                                    <input type="text" class="form-control ng-pristine ng-untouched ng-valid"
                                        ng-model="Address">
                                </div>
                            </div>

                            <div class="form-group">
                                <label class="col-md-3 control-label">Điện thoại</label>
                                <div class="col-md-8">
                                    <input type="text" class="form-control ng-pristine ng-untouched ng-valid"
                                        ng-model="Phone">
                                </div>
                            </div>

                            <div class="form-group">
                                <label for="createAt" class="col-md-3 control-label">Ngày tạo</label>
                                <div id="createAt" class="col-md-8">
                                    <p style="margin: 7px 0px 0px 0px;">20/10/2020</p>
                                </div>
                            </div>

                            <div class="form-group">
                                <label class="col-md-3 control-label">Ngưng dùng</label>
                                <div class="col-md-8">
                                    <input type="checkbox" name="checkbox" ng-model="Inactive"
                                        class="ng-pristine ng-untouched ng-valid">
                                </div>
                            </div>

                            <div class="form-actions">
                                <div class="row">
                                    <div class="col-md-12">
                                        <button type="button" class="btn btn-primary" data-title="save"
                                            ng-click="create()"><i class="fa fa-save"></i> Lưu</button>
                                        <button type="button" class="btn btn-primary" data-title="save"
                                            ng-click="createBack()"><i class="fa fa-plus"></i> Lưu &amp; Quay
                                            lại</button>
                                        <a href="member.jsp" class="btn btn-default">Trở về</a>
                                    </div>
                                </div>
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