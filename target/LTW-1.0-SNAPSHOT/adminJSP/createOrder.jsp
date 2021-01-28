<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html class="smart-style-1">

<head>
	<title>createOrder.admin.Zoe</title>
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
		<div id="main" role="main" block-ui="myBlockUI" ng-controller="orderController" ng-init="initOrderController()"
			class="ng-scope block-ui block-ui-anim-fade" aria-busy="false">
			<!-- RIBBON -->
			<div id="ribbon">

				<!-- breadcrumb -->
				<ol class="breadcrumb">
					<li>Home</li>
					<li>Đơn hàng</li>
					<li>Thêm mới đơn hàng</li>
				</ol>
				<!-- end breadcrumb -->
				<!-- You can also add more buttons to the
                ribbon for further usability
                Example below:-->
				<span class="ribbon-button-alignment pull-right"> <a href="order.jsp"
						class="btn btn-default btn-sm">Trở về</a>
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
						<!-- start product detail -->
						<div class="col-md-8">
							<div class="well">
								<h4>
									<i class="fa fa-tag text-primary"></i> Chi tiết đơn hàng
								</h4>
								<div class="clearfix margin-top-10">
									<div class="table-wrap p-none margin-bottom-10 ng-hide"
										ng-show="OrderDetails.length>0">
										<table class="table table-responsive">
											<tbody style="display: none;">
												<!-- ngRepeat: item in OrderDetails -->
												<tr ng-repeat="item in OrderDetails" class="ng-scope">
													<td class="" style="width: 70px;">
														<div class="wrap-img">
															<img class="thumb-image"
																src="Uploads/shop292/images/hoa-sen-logo-design 3.gif"
																title="Let do it">
														</div>
													</td>
													<td><a target="_blank"
															class="text-underline hover-underline pre-line ng-binding"
															href="/admin#/product/edit/201119">Let do it</a>
														<p class="ng-binding"></p>
													</td>
													<td class="text-center" style="width: 160px;">
														<div class="input-group">
															<span class="input-group-addon">₫</span><input type="text"
																ng-model="item.Price" ng-change="updateItem(item)"
																class="form-control reorder-pri width-100-px ng-pristine ng-untouched ng-valid">
														</div>
													</td>
													<td class="text-center" style="width: 20px;">x</td>
													<td class="" style="width: 100px;"><input type="number"
															ng-model="item.Quantity" ng-change="updateItem(item)"
															min="1"
															class="form-control p-none-r ng-pristine ng-untouched ng-valid ng-valid-min">
													</td>
													<td class="text-center ng-binding" style="width: 120px;">500,000
														₫</td>
													<td class="text-right" style="width: 20px;"><a
															href="javascript:void(0)" ng-click="removeItem($index)"><i
																class="fa fa-times color-stateGray"></i></a></td>
												</tr>
												<!-- ngRepeat: item in OrderDetails -->
												<tr ng-repeat="item in OrderDetails" class="ng-scope">
													<td class="" style="width: 70px;">
														<div class="wrap-img">
															<img class="thumb-image"
																src="Uploads/shop292/images/hoa-sen-logo-design 3.gif"
																title="Until you">
														</div>
													</td>
													<td><a target="_blank"
															class="text-underline hover-underline pre-line ng-binding"
															href="/admin#/product/edit/201119">Until you</a>
														<p class="ng-binding"></p>
													</td>
													<td class="text-center" style="width: 160px;">
														<div class="input-group">
															<span class="input-group-addon">₫</span><input type="text"
																ng-model="item.Price" ng-change="updateItem(item)"
																class="form-control reorder-pri width-100-px ng-pristine ng-untouched ng-valid">
														</div>
													</td>
													<td class="text-center" style="width: 20px;">x</td>
													<td class="" style="width: 100px;"><input type="number"
															ng-model="item.Quantity" ng-change="updateItem(item)"
															min="1"
															class="form-control p-none-r ng-pristine ng-untouched ng-valid ng-valid-min">
													</td>
													<td class="text-center ng-binding" style="width: 120px;">500,000
														₫</td>
													<td class="text-right" style="width: 20px;"><a
															href="javascript:void(0)" ng-click="removeItem($index)"><i
																class="fa fa-times color-stateGray"></i></a></td>
												</tr>
											</tbody>
										</table>
									</div>
									<!-- start search product -->
									<div class="box-search-advance product">
										<div class="input-group">
											<input type="text"
												class="form-control textbox-advancesearch ng-pristine ng-untouched ng-valid"
												placeholder="Tìm hoặc tạo mới 1 sản phẩm"
												ng-click="showDropdowProduct()" ng-model="keywordProduct"
												onclick="searchProduct()" ng-change="getProductVariants(1)">
											<span class="input-group-btn">
												<button type="button" class="btn btn-default"
													ng-click="showDropdowProduct()" onclick="searchProduct()">
													<i class="fa fa-search"></i>
												</button>
											</span>
										</div>
										<!-- search product -->
										<div class="panel panel-default"
											ng-class="{'active':IsShowDropdowProduct==true}">
											<div class="panel-body">
												<!-- <div class="box-search-advance-head" data-target="#modalCustomProduct"
													data-toggle="modal">
													<img width="30" src="images/next-create-custom-line-item.svg"> <span
														class="ml10">Tạo mới 1 sản phẩm tùy ý</span>
												</div> -->

												<div class="list-search-data">
													<ul class="clearfix">
														<!-- ngRepeat: item in Products -->
														<li class="row ng-scope" ng-repeat="item in Products">
															<div class="cursor-pointer ng-scope"
																ng-if="item.ModelShared_ProductVariant.length<=0"
																ng-click="addProduct(item)">
																<div class="wrap-img inline-block vertical-align-m">
																	<img class="thumb-image"
																		ng-src="/Uploads/shop910/images/products/ao-somi-2_master.jpg"
																		title="Đời không như là mơ"
																		src="Uploads/shop292/images/6-medpsa.jpg">
																</div>
																<a class="color_green ng-binding">Đời không như là
																	mơ</a>
																<div class="pull-right margin-top-5">
																	<span class="ng-binding">280,000 ₫</span>
																</div>
															</div>
														</li>
														<!-- ngRepeat: item in Products -->
													</ul>
													<div class="search-loading hidden">Đang tìm kiếm..</div>
												</div>
											</div>

											<div class="panel-footer clearfix">
												<!-- ngIf: TotalRecordProduct>0 -->
												<div class="btn-group pull-right">
													<button class="btn btn-default disabled" type="button"
														ng-click="getProductVariants(CurrentPageProduct-1)"
														ng-class="{'disabled':CurrentPageProduct==1}">
														<i class="fa fa-chevron-left"></i>
													</button>
													<button class="btn btn-default" type="button"
														ng-click="getProductVariants(CurrentPageProduct+1)"
														ng-class="{'disabled':CurrentPageProduct==PageCountProduct}">
														<i class="fa fa-chevron-right"></i>
													</button>
												</div>
												<div class="clear"></div>
											</div>
											<!-- end search product -->
										</div>
									</div>
								</div>

								<div class="row margin-top-10">
									<div class="col-sm-6 pull-right">
										<table class="text-right ">
											<tbody>
												<tr>
													<td class="color-stateGray padding-10">Tổng giá trị
														sản phẩm</td>
													<td class="ng-binding">0 ₫</td>
												</tr>

												<tr>
													<td id="addDiscountButton" class="padding-10"><a href=""
															data-target="#modalDiscount" class="hover-underline"
															data-toggle="modal"><i class="fa fa-plus-circle"></i>
															Thêm khuyến mãi</a>
														<p class="help-block ng-binding"></p>
													</td>
													<td class="ng-binding">0 ₫</td>
												</tr>

												<tr>
													<td id="addShippingButton" class="padding-10"><a href=""
															class="hover-underline" data-target="#modalShipping"
															data-toggle="modal"><i class="fa fa-plus-circle"></i>
															Thêm phí vận chuyển</a>
														<p class="help-block ng-binding"></p>
													</td>
													<td class="ng-binding">0 ₫</td>
												</tr>

												<tr class="bold-light">
													<td class="padding-10">Số tiền phải thanh toán</td>
													<td class="ng-binding">0 ₫</td>
												</tr>
											</tbody>
										</table>
									</div>
								</div>

								<div class="form-actions">
									<div class="row">
										<div class="col-md-12">
											<div class="pull-left margin-top-10">
												<i class="fa fa-credit-card color-blue"></i> <span
													class="text-uppercase padding-10">Xác nhận thanh
													toán và tạo đơn hàng</span>
											</div>
											<a href="javascript:void(0)" data-target="#modalMakePaid"
												class="btn btn-primary disabled" ng-class="{'disabled':OrderDetails<=0}"
												data-toggle="modal">Đã
												thanh toán</a> <a href="javascript:void(0)"
												data-target="#modalMakePending" class="btn btn-primary disabled"
												ng-class="{'disabled':OrderDetails<=0}" data-toggle="modal">Thanh
												toán sau</a>
										</div>
									</div>
								</div>
							</div>
						</div>
						<!-- end product detail -->

						<!-- start customer detail -->
						<div class="col-md-4">
							<div class="panel panel-default">
								<!-- order.CustomerId != null -->
								<div class="panel-body ng-scope" ng-if="order.CustomerId>0" style="display: none;">
									<h4>
										Thông tin khách hàng <a href="javascript:void(0)" class="pull-right"><i
												ng-click="removeCustomer()" title="Xóa khách hàng"
												data-placement="bottom" data-toggle="tooltip" style="font-size: 0.8em"
												class="fa fa-times color-blue text-no-bold"></i></a>
									</h4>
									<ul class="margin-top-10">
										<li><img alt="User Picture" class="img-thumbnail width-60-px radius-cycle"
												src="https://secure.gravatar.com/avatar/3f009d72559f51e7e454b16e5d0687a1.jpg?s=40&amp;d=https%3A%2F%2Fs.gravatar.com%2Favatar%2F18f9f20ec1a7be8020924ce0048b6ef2%3Fs%3D40"
												width="40"></li>
										<li class="color-blue margin-top-20 margin-bottom-20"><a
												class="hover-underline fa-1-5 text-capitalize ng-binding"
												href="/admin#/customer/details/49852">asfa</a>
											<div class="pull-right color_darkblue">
												<i class="fa fa-order"></i> <span class="ng-binding">2</span>
												đơn hàng
											</div>
										</li>
										<li class="color-blue ng-binding">0123456789</li>
										<li class="color-blue clearfix overflow-ellipsis"><a
												href="mailto:letanphat.toanb.k42@gmail.com" class="block-display"> <span
													class="ng-binding">letanphat.toanb.k42@gmail.com</span>
											</a></li>
										<li><span class="ng-binding">sdfdsfđf sdfsfdsf</span>
											<p class="ng-binding">Quận 2</p>
											<p class="ng-binding">Hồ Chí Minh</p>
										</li>
										<li class="clearfix"><a href="javascript:void(0)" data-target="#modalCustomer"
												data-toggle="modal" class="pull-right hover-underline"><i
													class="fa fa-edit"></i>
												Cập nhật</a></li>
										<li class="border-top row  margin-bottom-15 margin-top-15"></li>
										<li class="clearfix"><label>Thông tin giao hàng</label><a
												href="javascript:void(0)" data-target="#modalDelivery"
												data-toggle="modal" class="pull-right hover-underline"><i
													class="fa fa-edit"></i> Cập nhật</a></li>
										<li class="margin-top-15 ng-binding">asfa</li>
										<li class="ng-binding">0123456789</li>
										<li class="ng-binding">letanphat.toanb.k42@gmail.com</li>
										<li><span class="ng-binding">sdfdsfđf sdfsfdsf</span>
											<p class="ng-binding">Quận 2</p>
											<p class="ng-binding">Hồ Chí Minh</p>
										</li>
									</ul>
								</div>
								<!-- order.CustomerId != null -->

								<!-- ngIf: order.CustomerId==null||order.CustomerId<=0 -->
								<div class="panel-body ng-scope" ng-if="order.CustomerId==null||order.CustomerId <= 0">
									<h4 class="margin-bottom-10">
										<i class="fa fa-user text-primary"></i> Thông tin khách hàng
									</h4>
									<div class="findcustomer">
										<div class="box-search-advance customer">
											<!-- start customer search -->
											<div class="input-group">
												<input type="text"
													class="form-control textbox-advancesearch ng-pristine ng-untouched ng-valid"
													placeholder="Tìm hoặc tạo khách hàng mới"
													ng-click="showDropdowCustomer()" ng-model="$parent.keywordCustomer"
													ng-change="getCustomers(CurrentPageCustomer)"
													onclick="searchCustomer()"> <span class="input-group-btn">
													<button type="button" class="btn btn-default"
														ng-click="showDropdowCustomer()" onclick="searchCustomer()">
														<i class="fa fa-search"></i>
													</button>
												</span>
											</div>

											<div class="panel panel-default"
												ng-class="{'active':$parent.IsShowDropdowCustomer==true}">
												<div class="panel-body">
													<!-- <div class="box-search-advance-head" ng-click="popupCustomer()">
														<img src="//hstatic.net/0/0/global/design/imgs/next-create-customer.svg"
															width="30"> <span class="inline-block ml10">Tạo
															mới khách hàng</span>
													</div> -->
													<div class="list-search-data">
														<ul>
															<!-- ngRepeat: item in Customers -->
															<li class="row ng-scope" ng-repeat="item in Customers"
																ng-click="addCustomer(item)">
																<div
																	class="wrap-img inline-block vertical-align-t radius-cycle ">
																	<img class="thumb-image radius-cycle"
																		src="https://secure.gravatar.com/avatar/d16e94342d0b726270733e7025d779b6.jpg?s=40&amp;d=https%3A%2F%2Fs.gravatar.com%2Favatar%2F18f9f20ec1a7be8020924ce0048b6ef2%3Fs%3D40"
																		title="letanphat.toanb.k42@gmail.com">
																</div>
																<div class="inline-block ml10">
																	<a style="line-height: 16px" class="block-display">
																		<span class="ng-binding">Lê Tề Thiên</span>
																	</a> <a href="mailto:letethien@gmail.com"> <span
																			class="ng-binding">letethien@gmail.com</span>
																	</a>
																</div>
															</li>
															<!-- end ngRepeat: item in Customers -->
														</ul>
														<div class="search-loading hidden">Đang tìm kiếm..</div>
													</div>
												</div>

												<div class="panel-footer clearfix">
													<!-- ngIf: TotalRecordCustomer>0 -->
													<div class="btn-group pull-right">
														<button class="btn btn-default disabled" type="button"
															ng-click="getCustomers(CurrentPageCustomer-1)"
															ng-class="{'disabled':CurrentPageCustomer==1}">
															<i class="fa fa-chevron-left"></i>
														</button>
														<button class="btn btn-default" type="button"
															ng-click="getCustomers(CurrentPageCustomer+1)"
															ng-class="{'disabled':CurrentPageCustomer==PageCountCustomer}">
															<i class="fa fa-chevron-right"></i>
														</button>
													</div>
													<div class="clear"></div>
												</div>
											</div>
											<!-- end customer search -->
										</div>
									</div>
								</div>
								<!-- end ngIf: order.CustomerId==null||order.CustomerId<=0 -->
							</div>
						</div>
						<!-- end customer detail -->
					</div>
					<!-- end row -->
				</section>
				<!-- end widget grid -->
			</div>
			<!-- END MAIN CONTENT -->
		</div>
	</div>
	<!-- modal -->
	<div class="modal fade" id="modalDiscount" tabindex="-1" role="dialog" aria-labelledby="modalDiscountLabel"
		aria-hidden="true" style="display: none;">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
					<h4 class="modal-title" id="modalDiscountLabel">Thêm khuyến
						mãi</h4>
				</div>
				<div class="modal-body">
					<div class="form-group">
						<label>Giảm giá đơn hàng này theo </label>
						<div class="input-group">
							<div class="input-group-btn">
								<button ng-click="changeDiscountType()" ng-class="{'active':IsPercentage==false}"
									class="btn btn-default btn-active active">₫</button>
								<button ng-click="changeDiscountType()" class="btn ac btn-default btn-active"
									ng-class="{'active':IsPercentage==true}">%</button>
							</div>
							<div class="input-group">
								<input ng-model="DiscountValue" ng-change="changeDiscount()"
									class="form-control width-150-px border-none-radius border-none-r width-input-discount ng-pristine ng-untouched ng-valid">
								<!-- ngIf: IsPercentage==false -->
								<span ng-if="IsPercentage==false" ng=""
									class="input-group-addon input-text-currency ng-scope">₫</span>
								<!-- end ngIf: IsPercentage==false -->
								<!-- ngIf: IsPercentage==true -->
							</div>
						</div>
					</div>
					<div class="form-group">
						<label>Lý do</label> <input ng-model="order.DiscountName"
							class="form-control ng-pristine ng-untouched ng-valid"
							placeholder="Giảm giá sản phẩm, khách hàng thân thiết">
					</div>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">
						Hủy</button>
					<button type="button" class="btn btn-primary" ng-click="addDiscount()">Thêm khuyến mãi</button>
				</div>
			</div>
		</div>
	</div>

	<div class="modal fade" id="modalShipping" tabindex="-1" role="dialog" aria-labelledby="modalShippingLabel"
		aria-hidden="true" style="display: none;">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
					<h4 class="modal-title" id="modalShippingLabel">Phí vận chuyển</h4>
				</div>
				<div class="modal-body">
					<!-- ngIf: order.CustomerId==null||order.CustomerId<=0 -->
					<div class="alert-warning alert ng-scope" ng-if="order.CustomerId==null||order.CustomerId<=0">
						<label class="block-display mb10">Làm sao để chọn phí vận
							chuyển đã cấu hình ? </label>
						<p>Hãy thêm thông tin khách hàng với địa chỉ giao hàng đầy đủ
							để thấy các mức phí vận chuyển đã cấu hình.</p>
					</div>
					<!-- end ngIf: order.CustomerId==null||order.CustomerId<=0 -->
					<!-- ngRepeat: item in ShippingRates -->
					<div class="form-group">
						<label><input type="radio" ng-model="ShippingRateId" value="0" name="ShippingRateId"
								class="ng-pristine ng-untouched ng-valid"> Miễn phí vận
							chuyển</label>
					</div>
					<div class="form-group">
						<label><input type="radio" ng-model="ShippingRateId" value="-1" name="ShippingRateId"
								class="ng-pristine ng-untouched ng-valid"> Tùy chỉnh</label>
					</div>
					<div class="row">
						<div class="col-sm-7 form-group">
							<input type="text" ng-model="ShippingRateName" placeholder="Tên phí vận chuyển"
								class="form-control ng-pristine ng-untouched ng-valid">
						</div>
						<div class="col-sm-5 form-group">
							<input type="text" ng-model="ShippingAmount"
								class="form-control ng-pristine ng-untouched ng-valid">
						</div>
					</div>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">
						Hủy</button>
					<button type="button" class="btn btn-primary" ng-click="updateShipping()">Cập nhật</button>
				</div>
			</div>
		</div>
	</div>

	<div class="modal fade" id="modalMakePaid" tabindex="-1" role="dialog" aria-labelledby="modalMakePaidLabel"
		aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
					<h4 class="modal-title" id="modalMakePaidLabel">Tạo đơn hàng
						mới</h4>
				</div>
				<div class="modal-body">
					<label> Xác nhận đã thanh toán cho đơn hàng này?</label>
					<p>
						Trạng thái thanh toán của đơn hàng là <strong>Đã thanh
							toán</strong>.Sau khi đơn hàng đã tạo, bạn không thể thay đổi phương thức
						hoặc trạng thái thanh toán.
					</p>
					<p>Chọn phương thức thanh toán cho đơn hàng này</p>
					<div class="form-group">
						<select ng-model="order.PaymentMethodId" class="form-control ng-pristine ng-untouched ng-valid"
							ng-options="item.Id as item.Name for item in PaymentMethods">
							<option value="?" selected="selected"></option>
						</select>
					</div>
					<p>
						Số tiền đã nhận : <span class="ng-binding">0 ₫</span>
					</p>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">
						Đóng</button>
					<button type="button" class="btn btn-primary" ng-click="makePaid()">
						Tạo đơn hàng</button>
				</div>
			</div>
		</div>
	</div>

	<div class="modal fade" id="modalMakePending" tabindex="-1" role="dialog" aria-labelledby="modalMakePendingLabel"
		aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
					<h4 class="modal-title" id="modalMakePendingLabel">Tạo đơn
						hàng mới</h4>
				</div>
				<div class="modal-body">
					<label>Xác nhận sẽ nhận thanh toán sau cho đơn hàng này?</label>
					<p>
						Trạng thái thanh toán của đơn hàng là <strong>Chờ xử lý</strong>.Sau
						khi đơn hàng đã tạo, bạn không thể thay đổi phương thức hoặc trạng
						thái thanh toán.
					</p>
					<p>Chọn phương thức thanh toán cho đơn hàng này</p>
					<div class="form-group">
						<select ng-model="order.PaymentMethodId" class="form-control ng-pristine ng-untouched ng-valid"
							ng-options="item.Id as item.Name for item in PaymentMethods">
							<option value="?" selected="selected"></option>
						</select>
					</div>
					<p>
						Chờ thanh toán : <span class="ng-binding">0 ₫</span>
					</p>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">
						Đóng</button>
					<button type="button" class="btn btn-primary" ng-click="makePending()">Tạo đơn hàng</button>
				</div>
			</div>
		</div>
	</div>

	<div class="modal fade" id="modalDelivery" tabindex="-1" role="dialog" aria-labelledby="modalDeliveryLabel"
		aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
					<h4 class="modal-title" id="modalDeliveryLabel">Cập nhật thông
						tin giao hàng</h4>
				</div>
				<div class="modal-body clearfix">
					<div class="form-group col-sm-6">
						<label>Họ tên</label> <input type="text" ng-model="order.DeliveryName"
							class="form-control ng-pristine ng-untouched ng-valid">
					</div>
					<div class="form-group col-sm-6">
						<label>Số điện thoại</label> <input type="text" ng-model="order.DeliveryPhone"
							class="form-control ng-pristine ng-untouched ng-valid">
					</div>
					<div class="form-group  col-sm-12">
						<label>Địa chỉ</label> <input type="text" ng-model="order.DeliveryAddress"
							class="form-control ng-pristine ng-untouched ng-valid">
					</div>
					<div class="form-group  col-sm-12">
						<label>Email</label> <input type="text" ng-model="order.DeliveryEmail"
							class="form-control ng-pristine ng-untouched ng-valid">
					</div>
					<div class="form-group col-sm-6">
						<label>Tỉnh/Thành phố</label> <select ng-model="order.DeliveryProvinceId"
							class="form-control ng-pristine ng-untouched ng-valid" ng-change="getDeliveryDistricts()"
							ng-options="item.Id as item.Name for item in Provinces">
							<option value="?" selected="selected"></option>
							<option value="number:1" label="Hồ Chí Minh">Hồ Chí Minh</option>
							<option value="number:2" label="Hà Nội">Hà Nội</option>
							<option value="number:3" label="Đà Nẵng">Đà Nẵng</option>
							<option value="number:4" label="Cần Thơ">Cần Thơ</option>
							<option value="number:5" label=" Thừa Thiên - Huế">Thừa
								Thiên - Huế</option>
							<option value="number:6" label="An Giang">An Giang</option>
							<option value="number:7" label="Bà Rịa-Vũng Tàu">Bà
								Rịa-Vũng Tàu</option>
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
							<option value="number:57" label="Thái Nguyên">Thái
								Nguyên</option>
							<option value="number:58" label="Thanh Hóa">Thanh Hóa</option>
							<option value="number:59" label="Thừa Thiên - Huế">Thừa
								Thiên - Huế</option>
							<option value="number:60" label="Tiền Giang">Tiền Giang</option>
							<option value="number:61" label="Trà Vinh">Trà Vinh</option>
							<option value="number:62" label="Tuyên Quang">Tuyên
								Quang</option>
							<option value="number:63" label="Vĩnh Long">Vĩnh Long</option>
							<option value="number:64" label="Vĩnh Phúc">Vĩnh Phúc</option>
							<option value="number:65" label="Yên Bái">Yên Bái</option>
						</select>
					</div>
					<div class="form-group col-sm-6">
						<label>Quận/Huyện</label> <select ng-model="order.DeliveryDistrictId"
							class="form-control ng-pristine ng-untouched ng-valid"
							ng-options="item.Id as item.Name for item in DeliveryDistricts">
							<option value="?" selected="selected"></option>
						</select>
					</div>
					<div class="clear"></div>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">
						Hủy</button>
					<button type="button" class="btn btn-primary" ng-click="updateDelivery()">Lưu</button>
				</div>
			</div>
			<!-- /.modal-content -->
		</div>
		<!-- /.modal-dialog -->
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