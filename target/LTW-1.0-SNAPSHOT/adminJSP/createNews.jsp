<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html class="smart-style-1">

<head>
<title>createNews.admin.Zoe</title>
<!-- start add link css -->
<%@ include file="head.jsp"%>
<!-- end add link css -->
</head>

<body
	class="fixed-header fixed-navigation smart-style-1 desktop-detected ng-scope">
	<!-- 	start header -->
	<%@ include file="header.jsp"%>
	<!-- 	end header -->
	<!-- 	start left navigation -->
	<%@ include file="navigation.jsp"%>
	<!-- 	end left navigation -->
	<!-- start	main panel -->
	<div data-ng-view="" class="ng-scope">
		<div id="main" role="main" block-ui="myBlockUI"
			ng-controller="newsController" ng-init="initializeController()"
			class="ng-scope block-ui block-ui-anim-fade" aria-busy="false">
			<!-- RIBBON -->
			<div id="ribbon">

				<!-- breadcrumb -->
				<ol class="breadcrumb">
					<li>Home</li>
					<li>Tin tức</li>
					<li>Thêm mới tin tức</li>
				</ol>
				<!-- end breadcrumb -->
				<!-- You can also add more buttons to the
                ribbon for further usability
                Example below:
        -->
				<span class="ribbon-button-alignment pull-right">
					<button type="button" class="btn btn-primary btn-sm"
						data-title="save" ng-click="create()">
						<i class="fa fa-save"></i> Lưu
					</button>
					<button type="button" class="btn btn-primary btn-sm"
						data-title="save" ng-click="createBack()">
						<i class="fa fa-plus"></i> Lưu &amp; Quay lại
					</button> <a href="news.jsp" class="btn btn-default btn-sm">Trở về</a>
				</span>
			</div>
			<!-- END RIBBON -->
			<!-- MAIN CONTENT -->
			<div id="content">
				<div class="row">
					<article class="col-md-12">
						<!-- ngIf: IsError -->
						<!-- ngIf: IsSuccess -->
						<!-- ngIf: InValid -->
					</article>
				</div>
				<!-- widget grid -->
				<section class="" id="widget-grid">
					<!-- row -->
					<div class="row">
						<!-- NEW WIDGET START -->
						<article class="col-sm-12 col-md-12 col-lg-12">
							<!-- Widget ID (each widget will need unique ID)-->
							<div data-widget-editbutton="false"
								data-widget-colorbutton="false" id="wid-id-0"
								class="jarviswidget jarviswidget-sortable" role="widget">
								<header role="heading">
									<span class="widget-icon"> <i class="fa fa-edit"></i>
									</span>
									<h2>Thông tin tin tức</h2>
									<span class="jarviswidget-loader"><i
										class="fa fa-refresh fa-spin"></i></span>
								</header>
								<!-- widget div-->
								<div role="content">
									<!-- widget edit box -->
									<div class="jarviswidget-editbox">
										<!-- This area used as dropdown edit box -->
									</div>
									<!-- end widget edit box -->
									<!-- widget content -->
									<div class="widget-body no-padding">
										<!-- Error states for elements -->
										<form
											class="smart-form ng-valid ng-valid-max ng-valid-min ng-valid-parse ng-pristine">
											<fieldset>
												<div class="section col-xs-12 ">
													<div class="col-md-3 ">
														<h4>Thông tin tin tức</h4>
														<p>Nhập tên tin tức</p>
													</div>
													<div class="col-md-9 col-xs-12">
														<section>
															<label class="label">Tên tin tức</label> <label
																class="input"> <input type="text"
																ng-model="Name" placeholder=""
																class="ng-pristine ng-untouched ng-valid">
															</label>
														</section>
													</div>
												</div>
											</fieldset>

											<fieldset>
												<div class="section col-xs-12">
													<div class="col-md-3 col-xs-12">
														<h4>Hình ảnh</h4>
														<p>Upload và chỉnh sửa hình ảnh của tin tức.</p>
														<div class="form-group" style="position: relative;">
															<a class="btn btn-primary" href="javascript:void(0);"
																onclick="UploadImage()">Chọn hình</a> <a
																href="javascript:void(0)" data-target="#modalImgURL"
																data-toggle="modal" class="margin-top-10">Thêm bằng
																URL</a>
														</div>
													</div>
													<div class="col-md-9 col-xs-12">
														<img class="img-upload"
															src="Areas/Admin/Images/icon-upload.png"
															ng-init="Image='Areas/Admin/Images/icon-upload.png'"
															onclick="UploadImage()">
													</div>
												</div>
											</fieldset>

											<fieldset>
												<div class="section col-xs-12 ">
													<div class="col-md-3 ">
														<h4>Thể loại</h4>
														<p>Phân loại tin tức theo loại để quản lý</p>
													</div>
													<div class="col-md-9 col-xs-12">
														<div class="row">
															<section class="col col-xs-12">
																<label class="label">Thể loại</label> <label
																	class="input"> <input type="text"
																	ng-model="product.SKU"
																	class="ng-pristine ng-untouched ng-valid">
																</label>
															</section>
														</div>
													</div>
												</div>
											</fieldset>

											<fieldset>
												<div class="section col-xs-12 ">
													<div class="col-md-3 ">
														<h4>Mô tả ngắn</h4>
														<p>Bạn có thể nhập mô tả ngắn về tin tức</p>
													</div>
													<div class="col-md-9 col-xs-12">
														<section>
															<label class="label">Mô tả</label>
															<textarea style="height: 200px; width: 100%;"></textarea>
														</section>
													</div>
												</div>
											</fieldset>

											<fieldset>
												<div class="section col-xs-12 ">
													<div class="col-md-3 ">
														<h4>Nội dung</h4>
														<p>Bạn có thể nhập thông tin hình ảnh nội dung chi
															tiết về tin tức</p>
													</div>
													<div class="col-md-9 col-xs-12 wrapper-content p-t15 ">
														<section>
															<label class="label">Nội dung</label>
															<textarea style="height: 200px; width: 100%;"></textarea>
														</section>
													</div>
												</div>
											</fieldset>

											<fieldset>
												<div class="section col-xs-12 ">
													<div class="col-md-3 ">
														<h4>Tùy chọn</h4>
														<p>Thiết lập các trạng thái của tin tức</p>
													</div>
													<div class="col-md-9 col-xs-12 wrapper-content p-t15 ">
														<section>
															<label class="label">Tùy chọn tin tức</label>
															<div class="inline-group">
																<label class="checkbox"> <input type="checkbox"
																	name="checkbox-inline" ng-model="IsNew"
																	class="ng-pristine ng-untouched ng-valid"> <i></i>Mới
																</label> <label class="checkbox"> <input type="checkbox"
																	name="checkbox-inline" ng-model="IsHot"
																	class="ng-pristine ng-untouched ng-valid"> <i></i>Hot
																</label>
															</div>
														</section>
													</div>
												</div>
											</fieldset>

											<fieldset>
												<div class="section col-xs-12 ">
													<div class="col-md-3 ">
														<h4>Người viết</h4>
														<p>Cho biết tác giả của bài viết</p>
													</div>
													<div class="col-md-9 col-xs-12 wrapper-content p-t15 ">
														<section>
															<label class="label">Người viết</label> <label
																class="select"> <select ng-model="CreatedById"
																ng-options="item.Id as item.Name for item in Accounts"
																class="ng-pristine ng-untouched ng-valid">
																	<option value="?" selected="selected"></option>
																	<option value="number:48642" label="Zoe">Zoe</option>
															</select> <i></i>
															</label>
														</section>
													</div>
												</div>
											</fieldset>

											<fieldset>
												<div class="section col-xs-12 ">
													<div class="col-md-3 ">
														<h4>Trạng thái</h4>
														<p>Bạn có thể ngưng dùng tin tức khỏi hệ thống</p>
													</div>
													<div class="col-md-9 col-xs-12 wrapper-content p-t15 ">
														<section>
															<label class="label">Ngưng dùng</label>
															<div class="row">
																<div class="col col-4">
																	<label class="checkbox"><input type="checkbox"
																		name="checkbox" ng-model="Inactive"
																		class="ng-pristine ng-untouched ng-valid"><i></i>Ngưng
																		dùng</label>
																</div>
															</div>
														</section>
													</div>
												</div>
											</fieldset>

											<fieldset>
												<div class="section col-xs-12 ">
													<div class="col-md-3 ">
														<h4>Ngày tạo</h4>
														<p>Cho biết ngày tạo sản phẩm, bạn không thể thay đổi
															trường này</p>
													</div>
													<div class="col-md-9 col-xs-12">
														<section>
															<label class="label">Ngày tạo</label>
															<div class="row">
																<div class="col col-4">
																	<label class="text">20/10/2020</label>
																</div>
															</div>
														</section>
													</div>
												</div>
											</fieldset>

											<footer>
												<a href="news.jsp" class="btn btn-default">Trở về</a>
												<button class="btn btn-primary" type="button"
													ng-click="createBack()">Lưu &amp; Quay lại</button>
												<button class="btn btn-default" type="button"
													ng-click="create()">Lưu</button>
											</footer>
										</form>
										<!--/ Error states for elements -->
									</div>
									<!-- end widget content -->
								</div>
								<!-- end widget div -->
							</div>
							<!-- end widget -->
						</article>
						<!-- WIDGET END -->
					</div>
					<!-- end row -->
				</section>
				<!-- end widget grid -->
			</div>
			<!-- END MAIN CONTENT -->
			<!-- Modal -->
			<div class="modal fade" id="modalImgURL" tabindex="-1" role="dialog"
				aria-labelledby="modalImgURLLabel" aria-hidden="true">
				<div class="modal-dialog">
					<div class="modal-content">
						<div class="modal-header">
							<button type="button" class="close" data-dismiss="modal"
								aria-hidden="true">×</button>
							<h4 class="modal-title" id="modalImgURLLabel">Thêm mới hình
								ảnh từ đường dẫn</h4>
						</div>
						<div class="modal-body">

							<div class="form-group">
								<label class=""> Điền đường dẫn hình ảnh</label> <input
									type="text" placeholder="http://acb.com"
									class="form-control ng-pristine ng-untouched ng-valid"
									ng-model="ImgURL">
							</div>
						</div>
						<div class="modal-footer">
							<button type="button" class="btn btn-default"
								data-dismiss="modal">Hủy</button>
							<button type="button" class="btn btn-primary"
								ng-click="addImageFromURL()">Lưu</button>
						</div>
					</div>
					<!-- /.modal-content -->
				</div>
				<!-- /.modal-dialog -->
			</div>
			<!-- /.modal -->
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