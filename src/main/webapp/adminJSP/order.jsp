<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html class="smart-style-1">
<head>
<title>orderJSP.admin.Zoe</title>
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
		<div id="main" role="main" class="ng-scope">
			<!-- RIBBON -->
			<div id="ribbon">
				<!-- breadcrumb -->
				<ol class="breadcrumb">
					<li>Home</li>
					<li>Đơn hàng</li>
					<li>Danh sách đơn hàng</li>
				</ol>
				<!-- end breadcrumb -->
				<!-- start create new -->
				<span class="ribbon-button-alignment pull-right"> <a
					href="createOrder.jsp" class="btn btn-sm btn-primary btn-sm"
					data-title="add"><i class="fa fa-plus"></i> Thêm mới</a>
				</span>
				<!-- end create new -->
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
							<div class="ui-jqgrid ui-corner-all" id="gbox_jqgrid" dir="ltr"
								style="width: 1101px;">
								<div class="ui-widget-overlay jqgrid-overlay" id="lui_jqgrid"></div>
								<div class="loading ui-state-default ui-state-active"
									id="load_jqgrid" style="display: none;">Loading...</div>

								<div class="ui-jqgrid-view" id="gview_jqgrid"
									style="width: 1101px;">
									<div
										class="ui-jqgrid-titlebar ui-corner-top ui-helper-clearfix">
										<span class="ui-jqgrid-title">Danh sách đơn hàng</span>
									</div>

									<div class="ui-jqgrid-hdiv" style="width: 1101px;">
										<div class="ui-jqgrid-hbox">
											<table
												class="ui-jqgrid-htable table table-bordered table-hover"
												style="width: 1100px;" role="grid"
												aria-labelledby="gbox_jqgrid" cellspacing="0"
												cellpadding="0" border="0">
												<thead>
													<tr class="ui-jqgrid-labels" role="rowheader">
														<!-- select -->
														<th id="jqgrid_cb" role="columnheader" class=""
															style="width: 25px;">
															<div id="jqgh_jqgrid_cb">
																<input role="checkbox" id="cb_jqgrid" class="cbox"
																	type="checkbox">
															</div>
														</th>
														<!-- edit and save -->
														<th id="jqgrid_act" role="columnheader" class=""
															style="width: 50px;"><span
															class="ui-jqgrid-resize ui-jqgrid-resize-ltr"
															style="cursor: col-resize;">&nbsp;</span>
															<div id="jqgh_jqgrid_act" class="ui-jqgrid-sortable"></div>
														</th>
														<!-- order id -->
														<th id="jqgrid_AutoCode" role="columnheader" class=""
															style="width: 150px;"><span
															class="ui-jqgrid-resize ui-jqgrid-resize-ltr"
															style="cursor: col-resize;">&nbsp;</span>
															<div id="jqgh_jqgrid_AutoCode" class="ui-jqgrid-sortable">Mã
																đơn hàng</div></th>
														<!-- customer name -->
														<th id="jqgrid_CustomerName" role="columnheader" class=""
															style="width: 150px;"><span
															class="ui-jqgrid-resize ui-jqgrid-resize-ltr"
															style="cursor: col-resize;">&nbsp;</span>
															<div id="jqgh_jqgrid_CustomerName"
																class="ui-jqgrid-sortable">Tên khách hàng</div></th>
														<!-- transfer -->
														<th id="jqgrid_ShipmentStateName" role="columnheader"
															class="" style="width: 200px;"><span
															class="ui-jqgrid-resize ui-jqgrid-resize-ltr"
															style="cursor: col-resize;">&nbsp;</span>
															<div id="jqgh_jqgrid_ShipmentStateName"
																class="ui-jqgrid-sortable">Hình thức giao hàng</div></th>
														<!-- payment -->
														<th id="jqgrid_PaymentStateName" role="columnheader"
															class="" style="width: 200px;"><span
															class="ui-jqgrid-resize ui-jqgrid-resize-ltr"
															style="cursor: col-resize;">&nbsp;</span>
															<div id="jqgh_jqgrid_PaymentStateName"
																class="ui-jqgrid-sortable">Hình thức thanh toán</div></th>
														<!-- amount -->
														<th id="jqgrid_Amount" role="columnheader" class=""
															style="width: 100px;"><span
															class="ui-jqgrid-resize ui-jqgrid-resize-ltr"
															style="cursor: col-resize;">&nbsp;</span>
															<div id="jqgh_jqgrid_Amount" class="ui-jqgrid-sortable">Tổng
																tiền</div></th>
														<!-- status -->
														<th id="jqgrid_Description" role="columnheader" class=""
															style="width: 125px;"><span
															class="ui-jqgrid-resize ui-jqgrid-resize-ltr"
															style="cursor: col-resize;">&nbsp;</span>
															<div id="jqgh_jqgrid_Description"
																class="ui-jqgrid-sortable">Trạng thái</div></th>
														<!-- create at -->
														<th id="jqgrid_Update" role="columnheader" class=""
															style="width: 100px;"><span
															class="ui-jqgrid-resize ui-jqgrid-resize-ltr"
															style="cursor: col-resize;">&nbsp;</span>
															<div id="jqgh_jqgrid_Description"
																class="ui-jqgrid-sortable">Ngày tạo</div></th>
													</tr>
												</thead>
											</table>
										</div>
									</div>

									<div class="ui-jqgrid-bdiv"
										style="height: auto; width: 1101px;">
										<div style="position: relative;">
											<div></div>
											<table id="jqgrid" tabindex="0" cellspacing="0"
												cellpadding="0" border="0" role="grid"
												aria-multiselectable="true" aria-labelledby="gbox_jqgrid"
												class="ui-jqgrid-btable table table-bordered table-striped"
												style="width: 1100px;">
												<tbody>
													<tr class="jqgfirstrow" role="row" style="height: auto">
														<!-- select -->
														<td role="gridcell" style="height: 0px; width: 25px;"></td>
														<!-- edit and save -->
														<td role="gridcell" style="height: 0px; width: 50px;"></td>
														<!-- order id -->
														<td role="gridcell" style="height: 0px; width: 150px;"></td>
														<!-- customer id -->
														<td role="gridcell" style="height: 0px; width: 150px;"></td>
														<!-- transfer -->
														<td role="gridcell" style="height: 0px; width: 200px;"></td>
														<!-- payment -->
														<td role="gridcell" style="height: 0px; width: 200px;"></td>
														<!-- amount -->
														<td role="gridcell" style="height: 0px; width: 100px;"></td>
														<!-- status -->
														<td role="gridcell" style="height: 0px; width: 125px;"></td>
														<!-- create at -->
														<td role="gridcell" style="height: 0px; width: 100px;"></td>
													</tr>
													<!-- start news list -->
													<!-- start single news -->
													<tr role="row" id="71959" tabindex="-1"
														class="ui-widget-content jqgrow ui-row-ltr">
														<!-- select -->
														<td role="gridcell" style="text-align: center"
															aria-describedby="jqgrid_cb"><input role="checkbox"
															type="checkbox" id="jqg_jqgrid_71959" class="cbox"
															name="jqg_jqgrid_71959"></td>
														<!-- edit and save -->
														<td role="gridcell" style="" title=""
															aria-describedby="jqgrid_act"><button
																class="btn btn-xs btn-default"
																data-original-title="Edit Row"
																onclick="jQuery('#jqgrid').editRow('197585');">
																<i class="fa fa-pencil"></i>
															</button><button class="btn btn-xs btn-default"
																data-original-title="Save Row"
																onclick="jQuery('#jqgrid').saveRow('197585');">
																<i class="fa fa-save"></i>
															</button></td>
														<!-- order id -->
														<td role="gridcell" style="" title="orderId"
															aria-describedby="jqgrid_Name"><a
															style="text-decoration: none;" href="orderDetail.jsp">#100000003</a></td>
														<!-- customer name -->
														<td role="gridcell" style="" title="customerId"
															aria-describedby="jqgrid_NewsGroupName"><a
															style="text-decoration: none;" href="orderMember.jsp"">Lê Tề Thiên</a></td>
														<!-- transfer -->
														<td role="gridcell" style="" title="customerId"
															aria-describedby="jqgrid_NewsGroupName">Giao hàng nhanh</td>
														<!-- payment -->
														<td role="gridcell" style="" title="customerId"
															aria-describedby="jqgrid_NewsGroupName">Thanh toán khi nhận hàng</td>
														<!-- amount -->
														<td role="gridcell" style="text-align: right;"
															title="customerId"
															aria-describedby="jqgrid_NewsGroupName">500,000</td>
														<!-- status -->
														<td role="gridcell" style="" title="customerId"
															aria-describedby="jqgrid_NewsGroupName">Đang giao</td>
														<!-- create at -->
														<td role="gridcell" style="text-align: center;"
															title="23/04/2016" aria-describedby="jqgrid_UpdateDate">23/04/2016</td>
													</tr>
													<!-- end single news -->
													<!-- end news list -->
												</tbody>
											</table>
										</div>
									</div>
								</div>
								<div class="ui-jqgrid-resize-mark" id="rs_mjqgrid">&nbsp;</div>
								<div id="pjqgrid" class="ui-jqgrid-pager ui-corner-bottom"
									dir="ltr" style="width: 1101px;">
									<div id="pg_pjqgrid" class="ui-pager-control" role="group">
										<table cellspacing="0" cellpadding="0" border="0"
											class="ui-pg-table"
											style="width: 100%; table-layout: fixed; height: 100%;"
											role="row">
											<tbody>
												<tr>
													<td id="pjqgrid_left" align="left">
														<table cellspacing="0" cellpadding="0" border="0"
															class="ui-pg-table navtable"
															style="float: left; table-layout: auto;">
															<tbody>

																<tr>
																	<td class="ui-pg-button ui-corner-all" title=""
																		id="del_jqgrid"
																		data-original-title="Delete selected row">
																		<div class="btn btn-sm btn-primary">
																			<span class="fa fa-trash-o"></span>
																		</div>
																	</td>

																	<td class="ui-pg-button ui-state-disabled"
																		style="width: 4px;" data-original-title="" title=""><span
																		class="ui-separator"></span></td>

																	<td class="ui-pg-button ui-corner-all" title=""
																		id="search_jqgrid" onclick="orderAndMemberSearch()"
																		data-original-title="Find records">
																		<div class="btn btn-sm btn-primary">
																			<span class="fa fa-search"></span>
																		</div>
																	</td>
																</tr>
															</tbody>
														</table>
													</td>
													<td id="pjqgrid_center" align="center"
														style="width: 293px;">
														<table cellspacing="0" cellpadding="0" border="0"
															style="table-layout: auto;" class="ui-pg-table">
															<tbody>
																<tr>
																	<td id="first_pjqgrid"
																		class="ui-pg-button ui-corner-all ui-state-disabled">
																		<div class="btn btn-sm btn-default">
																			<span class="fa fa-fast-backward"></span>
																		</div>
																	</td>

																	<td id="prev_pjqgrid"
																		class="ui-pg-button ui-corner-all ui-state-disabled">
																		<div class="btn btn-sm btn-default">
																			<span class="fa fa-backward"></span>
																		</div>
																	</td>

																	<td class="ui-pg-button ui-state-disabled"
																		style="width: 4px;"><span class="ui-separator"></span></td>

																	<td dir="ltr">Page <input class="ui-pg-input"
																		type="text" size="2" maxlength="7" value="0"
																		role="textbox"> of <span id="sp_1_pjqgrid">0</span></td>

																	<td class="ui-pg-button ui-state-disabled"
																		style="width: 4px;"><span class="ui-separator"></span></td>

																	<td id="next_pjqgrid"
																		class="ui-pg-button ui-corner-all">
																		<div class="btn btn-sm btn-default">
																			<span class="fa fa-forward"></span>
																		</div>
																	</td>

																	<td id="last_pjqgrid"
																		class="ui-pg-button ui-corner-all">
																		<div class="btn btn-sm btn-default">
																			<span class="fa fa-fast-forward"></span>
																		</div>
																	</td>

																	<td dir="ltr"><select class="ui-pg-selbox"
																		role="listbox">
																			<option role="option" value="10">10</option>
																			<option role="option" value="25" selected="selected">25</option>
																			<option role="option" value="50">50</option>
																			<option role="option" value="100">100</option>
																			<option role="option" value="250">250</option>
																			<option role="option" value="500">500</option>
																	</select></td>
																</tr>
															</tbody>
														</table>
													</td>
													<td id="pjqgrid_right" align="right">
														<div dir="ltr" style="text-align: right"
															class="ui-paging-info">No records to view</div>
													</td>
												</tr>
											</tbody>
										</table>
									</div>
								</div>
							</div>
						</article>
						<!-- WIDGET END -->
					</div>
					<!-- end row -->
				</section>
				<!-- end widget grid -->
			</div>
			<!-- END MAIN CONTENT -->
		</div>
	</div>
	<!-- end main panel -->
	<!-- start footer -->
	<%@ include file="footer.jsp"%>
	<!-- end footer -->
	<!-- start search box -->
	<%@ include file="orderAndMemberSearch.jsp"%>
	<!-- end search box -->
	<!-- start add script -->
	<%@ include file="scripts.jsp"%>
	<!-- end add script -->
</body>
</html>