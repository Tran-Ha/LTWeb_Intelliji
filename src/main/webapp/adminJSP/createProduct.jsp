<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html class="smart-style-1">

<head>
<title>createProduct.admin.Zoe</title>
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
			ng-controller="productController" ng-init="initializeController()"
			class="ng-scope block-ui block-ui-anim-fade" aria-busy="false">
			<!-- RIBBON -->
			<div id="ribbon">
				<!-- breadCrumb -->
				<ol class="breadcrumb">
					<li>Home</li>
					<li>Sản phẩm</li>
					<li>Thêm mới sản phẩm</li>
				</ol>
				<!-- end breadCrumb -->
				<!-- option -->
				<span class="ribbon-button-alignment pull-right">
					<button type="button" class="btn btn-primary btn-sm"
						data-title="save" ng-click="create()">
						<i class="fa fa-save"></i> Lưu
					</button>
					<button type="button" class="btn btn-primary btn-sm"
						data-title="save" ng-click="createBack()">
						<i class="fa fa-plus"></i> Lưu &amp; Quay lại
					</button> <a href="product.jsp" class="btn btn-default btn-sm">Trở về</a>
				</span>
				<!-- end option -->
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
									<h2>Thông tin sản phẩm</h2>
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
														<h4>Thông tin sản phẩm</h4>
														<p>Nhập tên, giá sản phẩm</p>
													</div>
													<div class="col-md-9 col-xs-12">
														<section>
															<label class="label">Tên sản phẩm</label> <label
																class="input"> <input type="text"
																ng-model="product.Name"
																placeholder="ví dụ : The code book"
																class="ng-pristine ng-untouched ng-valid">
															</label>
														</section>
														<div class="row">
															<section class="col col-6">
																<label class="label">Giá</label> <label class="input">
																	<input type="text" ng-model="product.Price"
																	currency="product.Price"
																	class="ng-pristine ng-untouched ng-valid ng-valid-max ng-valid-min">
																</label>
															</section>
															<section class="col col-6">
																<label class="label">Chiết khấu %</label> <label
																	class="input"> <input type="text"
																	ng-model="product.PriceDiscount"
																	currency="product.PriceDiscount"
																	class="ng-pristine ng-untouched ng-valid ng-valid-max ng-valid-min">
																</label>
															</section>
														</div>
													</div>
												</div>
											</fieldset>

											<fieldset>
												<div class="section col-xs-12">
													<div class="col-md-3 col-xs-12">
														<h4>Hình ảnh</h4>
														<p>
															Upload và chỉnh sửa hình ảnh của sản phẩm. Bạn cũng có
															thể <a href="javascript:void(0)"
																data-target="#modalImgURL" data-toggle="modal"
																class="hover-underline hover-blue">thêm hình ảnh từ
																website khác</a>. Kéo để sắp xếp thứ tự hình ảnh.
														</p>
														<div class="form-group" style="position: relative;">
															<a class="btn btn-primary" href="javascript:void(0);"
																id="btnSelectImg">Chọn hình</a> <a
																href="javascript:void(0)" data-target="#modalImgURL"
																data-toggle="modal" class="margin-top-10">Thêm bằng
																URL</a>
														</div>
													</div>
													<div class="col-md-9 col-xs-12">
														<div class="product-images-view image-collector">
															<div class="image-collector-body">
																<div class="image-collector-container">
																	<!-- ngIf: ProductImages.length<=0 -->
																	<div class="image-collector-empty-outer ng-scope"
																		ng-if="ProductImages.length<=0">
																		<div class="image-collector-empty-inner">
																			<div class="image-collector-empty">
																				<span>Kéo và thả vào đây</span>
																				<div class="separator">
																					<span>hoặc</span>
																				</div>
																				<a href="javascript:UploadImage()"> <img
																					src="Areas/Admin/Images/icon-upload.png">
																				</a>
																			</div>
																		</div>
																	</div>
																	<!-- end ngIf: ProductImages.length<=0 -->
																	<div class="image-collector-gallery-outer">
																		<div class="image-collector-gallery-inner">
																			<ul
																				class="image-collector-gallery ui-sortable sortable-image">
																				<!-- ngRepeat: item in ProductImages -->
																			</ul>
																		</div>
																	</div>
																</div>
															</div>
														</div>
													</div>
												</div>
											</fieldset>

											<fieldset>
												<div class="section col-xs-12 ">
													<div class="col-md-3 ">
														<h4>Thể loại</h4>
														<p>Phân loại sách theo loại để quản lý</p>
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
														<h4>Tùy chọn</h4>
														<p>Thiết lập các trạng thái của sản phẩm</p>
													</div>
													<div class="col-md-9 col-xs-12">
														<section>
															<label class="label">Tùy chọn sản phẩm</label>
															<div class="inline-group">
																<label class="checkbox"> <input type="checkbox"
																	checked="checked" name="checkbox-inline"
																	ng-model="product.IsBest"
																	class="ng-pristine ng-untouched ng-valid"> <i></i>Bán
																	chạy
																</label> <label class="checkbox"> <input type="checkbox"
																	name="checkbox-inline" ng-model="product.IsNew"
																	class="ng-pristine ng-untouched ng-valid"> <i></i>Mới
																</label> <label class="checkbox"> <input type="checkbox"
																	name="checkbox-inline" ng-model="product.IsHot"
																	class="ng-pristine ng-untouched ng-valid"> <i></i>Hot
																</label> <label class="checkbox"> <input type="checkbox"
																	name="checkbox-inline" ng-model="product.IsPromotion"
																	class="ng-pristine ng-untouched ng-valid"> <i></i>Khuyến
																	mãi
																</label>
															</div>
															<p class="note">Chú ý: Khi chọn khuyến mãi thì giá
																của sản phẩm được tính theo giá khuyến mãi</p>
														</section>
													</div>
												</div>
											</fieldset>

											<fieldset>
												<div class="section col-xs-12 ">
													<div class="col-md-3 ">
														<h4>Mô tả</h4>
														<p>Bạn có thể nhập thông tin hình ảnh mô tả chi tiết
															sản phẩm</p>
													</div>
													<div class="col-md-9 col-xs-12">
														<section>
															<label class="label">Mô tả</label>
															<textarea style="height: 200px; width: 100%;"></textarea>
														</section>
													</div>
												</div>
											</fieldset>

											<fieldset ng-show="product.IsVariant==false">
												<div class="section col-xs-12 ">
													<div class="col-md-3 ">
														<h4>Tồn kho</h4>
														<p>Bạn có thể nhập số lượng để quản lý lượng tồn kho
															của sản phẩm</p>
													</div>
													<div class="col-md-9 col-xs-12">
														<div class="row">
															<section class="col col-xs-12">
																<label class="label">Mã sản phẩm / SKU</label> <label
																	class="input"> <input type="text"
																	ng-model="product.SKU"
																	class="ng-pristine ng-untouched ng-valid">
																</label>
															</section>
														</div>
														<div class="row">
															<section class="col col-xs-12 ng-hide"
																ng-show="product.IsTrackingInventory>0">
																<label class="label">Số lượng</label> <label
																	class="input"> <input type="number"
																	ng-model="product.Quantity"
																	class="ng-pristine ng-untouched ng-valid">
																</label>
															</section>
														</div>
														<section ng-show="product.IsTrackingInventory>0"
															class="ng-hide">
															<label class="checkbox"><input type="checkbox"
																name="checkbox"
																ng-model="product.AllowPurchaseWhenSoldOut"
																class="ng-pristine ng-untouched ng-valid"><i></i>Đồng
																ý cho khách hàng đặt hàng khi đã hết hàng</label>
														</section>
													</div>
												</div>
											</fieldset>

											<fieldset>
												<div class="section col-xs-12 ">
													<div class="col-md-3 ">
														<h4>Thông tin</h4>
														<p>Bạn có thể nhập thông tin chi tiết về sản phẩm</p>
													</div>
													<div class="col-md-9 col-xs-12">
														<section>
															<label class="label">Chi tiết sản phẩm</label>
															<textarea style="height: 200px; width: 100%;"></textarea>
														</section>
													</div>
												</div>
											</fieldset>

											<fieldset>
												<div class="section col-xs-12 ">
													<div class="col-md-3 ">
														<h4>Tác giả và công ty phát hành</h4>
														<p>Bạn có thể nhập tên tác giả và công ty phát hành để
															khách hàng tìm kiếm</p>
													</div>
													<div class="col-md-9 col-xs-12">
														<div class="row">
															<section class="col col-xs-12">
																<label class="label">Tác giả</label> <label
																	class="input"> <input type="text"
																	ng-model="product.SKU"
																	class="ng-pristine ng-untouched ng-valid">
																</label>
															</section>
														</div>
														<div class="row">
															<section class="col col-xs-12">
																<label class="label">Công ty phát hành</label> <label
																	class="input"> <input type="text"
																	ng-model="product.Quantity"
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
														<h4>Loại bìa</h4>
														<p>Bạn có thể chọn loại bìa cho sản phẩm</p>
													</div>
													<div class="col-md-9 col-xs-12">
														<section>
															<label class="label">Loại bìa</label>
															<div class="inline-group">
																<label class="radio"> <input type="radio"
																	name="radio-inline" ng-model="product.IsBest"
																	class="ng-pristine ng-untouched ng-valid"> <i></i>Bìa
																	cứng
																</label> <label class="radio"> <input type="radio"
																	name="radio-inline" checked="checked"
																	ng-model="product.IsNew"
																	class="ng-pristine ng-untouched ng-valid"> <i></i>Bìa
																	mềm
																</label>
															</div>
														</section>
													</div>
												</div>
											</fieldset>

											<fieldset>
												<div class="section col-xs-12 ">
													<div class="col-md-3 ">
														<h4>Trạng thái</h4>
														<p>Bạn có thể ngưng dùng sản phẩm khỏi hệ thống</p>
													</div>
													<div class="col-md-9 col-xs-12">
														<section>
															<label class="label">Ngưng dùng</label>
															<div class="row">
																<div class="col col-4">
																	<label class="checkbox"><input type="checkbox"
																		name="checkbox" ng-model="product.Inactive"
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
												<a href="product.jsp" class="btn btn-default">Trở về</a>
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