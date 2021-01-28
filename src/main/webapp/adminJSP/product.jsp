<%@ page import="java.util.List" %>
<%@ page import="vn.edu.nlu.beans.Book" %>
<%@ page import="vn.edu.nlu.entities.BookEntity" %>
<%@ page import="vn.edu.nlu.beans.Categories" %>
<%@ page import="vn.edu.nlu.entities.CategoryEntity" %>
<%@ page import="vn.edu.nlu.beans.GroupBook" %>
<%@ page import="vn.edu.nlu.entities.GroupEntity" %>
<%@ page import="java.util.Set" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html class="smart-style-1">
<head>
<title>productJSP.admin.Zoe</title>
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
    <%
        BookEntity bookEntity = new BookEntity();

		String indexString = request.getParameter("index");
		int index = indexString!= null ? Integer.parseInt(indexString) : 1;

		int count = BookEntity.countAll();
		int pageSize = 10;
		int endPage = 0;
		endPage = count / pageSize;
		if(count / pageSize != 0) {
			endPage ++;
		}
		if (endPage == 0) {
			endPage = 1;
		}

		List<Book> all = bookEntity.search("", index, pageSize);
		request.setAttribute("index",index);
		request.setAttribute("endPage", endPage);
		request.setAttribute("all", all);

		Set<GroupBook> groupBooks = GroupEntity.getAll();
		request.setAttribute("group", groupBooks);
    %>
	<div data-ng-view="" class="ng-scope">
		<div id="main" role="main" block-ui="myBlockUI"
			ng-controller="productController"
			ng-init="initProductListController()"
			class="ng-scope block-ui block-ui-anim-fade" aria-busy="false">
			<!-- RIBBON -->
			<div id="ribbon">
				<!-- breadcrumb -->
				<ol class="breadcrumb">
					<li>Home</li>
					<li>Sản phẩm</li>
					<li>Danh sách sản phẩm</li>
				</ol>
				<!-- end breadcrumb -->
				<!-- create new -->
				<span class="ribbon-button-alignment pull-right"> <a
					href="createProduct.jsp" class="btn btn-sm btn-primary btn-sm"
					data-title="add"><i class="fa fa-plus"></i> Thêm mới</a>
				</span>
				<!-- end create new -->
			</div>
			<!-- END RIBBON -->
			<!-- MAIN CONTENT -->
			<div id="content" style="width: auto;">
				<!-- widget grid -->
				<section id="widget-grid">
					<!-- row -->
					<div class="widget-body-toolbar margin-top-10 form-horizontal"
						style="overflow: hidden;">
						<div class="row">
							<div class="col-sm-4">
								<div class="form-group">
									<label class="col-md-4 control-label">Thể loại</label>
									<div class="col-md-6">
											<select class="form-control" id="ProductGroupId"
													name="ProductGroupId">
												<option value="0">Toàn bộ</option>
												<c:forEach items="${group}" var="c">
													<option value="235790">${c.name}</option>
												</c:forEach>
											</select>
									</div>
									<div class="col-md-2">
										<button type="submit" class="btn btn-default" name="btnFilter">
											<i class=""></i> Lọc
										</button>
									</div>
								</div>
							</div>

                            <form action="default?page=adminResult" method="post">
							<div class="col-sm-4">
								<div class="input-group">
                                        <input id ="txtSearch" type="text" class="form-control" name="txtSearch">
                                        <div class="input-group-btn">
                                            <button type="submit" class="btn btn-default" name="btnSearch">
                                                <i class="fa fa-search"></i> Tìm
                                            </button>
                                        </div>
								</div>
							</div>
							</form>
						</div>
					</div>
					<div class="row">
						<!-- NEW WIDGET START -->
						<article class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
							<div class="ui-jqgrid ui-corner-all" id="gbox_jqgrid" dir="ltr">
								<div class="ui-widget-overlay jqgrid-overlay" id="lui_jqgrid"></div>
								<div class="loading ui-state-default ui-state-active"
									id="load_jqgrid" style="display: none;">Loading...</div>
								<div class="ui-jqgrid-view" id="gview_jqgrid"
									style="width: 1101px;">
									<!-- Danh sách sản phẩm -->
									<div
										class="ui-jqgrid-titlebar ui-corner-top ui-helper-clearfix">
										<span class="ui-jqgrid-title">Danh sách sản phẩm</span>
									</div>
									<!-- start title bar -->
									<div class="ui-jqgrid-hdiv" style="width: 1101px;">
										<div class="ui-jqgrid-hbox">
											<table
												class="ui-jqgrid-htable table table-bordered table-hover"
												style="width: 1100px;" role="grid"
												aria-labelledby="gbox_jqgrid" cellspacing="0"
												cellpadding="0" border="0">
												<thead>
													<tr class="ui-jqgrid-labels" role="rowheader">

														<!-- edit and save button -->
														<th id="jqgrid_act" role="columnheader" class=""
															style="width: 50px;"><span
															class="ui-jqgrid-resize ui-jqgrid-resize-ltr"
															style="cursor: col-resize;">&nbsp;</span>
															<div id="jqgh_jqgrid_act" class="ui-jqgrid-sortable">

															</div></th>
														<!-- name -->
														<th id="jqgrid_Name" role="columnheader" class=""
															style="width: 200px;"><span
															class="ui-jqgrid-resize ui-jqgrid-resize-ltr"
															style="cursor: col-resize;">&nbsp;</span>
															<div id="jqgh_jqgrid_Name" class="ui-jqgrid-sortable">
																Tên sản phẩm<span class="s-ico" style=""> </span>
															</div></th>
														<!-- type -->
														<th id="jqgrid_ProductGroupName" role="columnheader"
															class="" style="width: 100px;"><span
															class="ui-jqgrid-resize ui-jqgrid-resize-ltr"
															style="cursor: col-resize;">&nbsp;</span>
															<div id="jqgh_jqgrid_ProductGroupName"
																class="ui-jqgrid-sortable">Thể loại</div></th>
														<!-- image -->
														<th id="jqgrid_Image" role="columnheader" class=""
															style="width: 100px;"><span
															class="ui-jqgrid-resize ui-jqgrid-resize-ltr"
															style="cursor: col-resize;">&nbsp;</span>
															<div id="jqgh_jqgrid_Image" class="ui-jqgrid-sortable">Hình
																ảnh</div></th>
														<!-- quantity -->
														<th id="jqgrid_TrackingInventoryText" role="columnheader"
															class="" style="width: 75px;"><span
															class="ui-jqgrid-resize ui-jqgrid-resize-ltr"
															style="cursor: col-resize;">&nbsp;</span>
															<div id="jqgh_jqgrid_TrackingInventoryText"
																class="ui-jqgrid-sortable">Tồn kho</div></th>
														<!-- price -->
														<th id="jqgrid_Price" role="columnheader" class=""
															style="width: 100px;"><span
															class="ui-jqgrid-resize ui-jqgrid-resize-ltr"
															style="cursor: col-resize;">&nbsp;</span>
															<div id="jqgh_jqgrid_Price" class="ui-jqgrid-sortable">
																Giá</div></th>
														<!-- discount -->
														<th id="jqgrid_PriceDiscount" role="columnheader" class=""
															style="width: 50px;"><span
															class="ui-jqgrid-resize ui-jqgrid-resize-ltr"
															style="cursor: col-resize;">&nbsp;</span>
															<div id="jqgh_jqgrid_PriceDiscount"
																class="ui-jqgrid-sortable">Giá giảm %</div></th>
														<!--  -->
														<th id="jqgrid_IsSale" role="columnheader" class=""
															style="width: 50px;"><span
															class="ui-jqgrid-resize ui-jqgrid-resize-ltr"
															style="cursor: col-resize;">&nbsp;</span>
															<div id=qgh_jqgrid_IsBest" class="ui-jqgrid-sortable">
																Khuyến mãi</div></th>
														<!-- bestSale -->
														<th id="jqgrid_IsBest" role="columnheader" class=""
															style="width: 50px;"><span
															class="ui-jqgrid-resize ui-jqgrid-resize-ltr"
															style="cursor: col-resize;">&nbsp;</span>
															<div id="jqgh_jid_IsBest" class="ui-jqgrid-sortable">Bán
																chạy</div></th>
														<!-- new -->
														<th id="jqgrid_IsNew" role="columnheader" class=""
															style="width: 50px;"><span
															class="ui-jqgrid-resize ui-jqgrid-resize-ltr"
															style="cursor: col-resize;">&nbsp;</span>
															<div id="jqgh_jqgrid_IsNew" class="ui-jqgrid-sortable">
																Mới</div></th>
														<!-- hot -->
														<th id="jqgrid_IsHot" role="columnheader" class=""
															style="width: 50px;"><span
															class="ui-jqgrid-resize ui-jqgrid-resize-ltr"
															style="cursor: col-resize;">&nbsp;</span>
															<div id="jqgh_jqgrid_IsBest" class="ui-jqgrid-sortable">Hot
															</div></th>
														<!-- not use -->
														<th id="jqgrid_Inactive" role="columnheader" class=""
															style="width: 100px;"><span
															class="ui-jqgrid-resize ui-jqgrid-resize-ltr"
															style="cursor: col-resize;">&nbsp;</span>
															<div id="jqgh_jqgrid_Inactive" class="ui-jqgrid-sortable">
																Ngưng dùng</div></th>
													</tr>
												</thead>
											</table>
										</div>
									</div>
									<!-- end title bar -->
									<div class="ui-jqgrid-bdiv"
										style="height: auto; width: 1101px;">
										<div style="position: relative;">
											<div></div>
											<table id="jqgrid" tabindex="0" cellspacing="0"
												cellpadding="0" border="0" role="grid"
												aria-multiselectable="true" aria-labelledby="gbox_jqgrid"
												class="ui-jqgrid-btable table table-bordered table-striped"
												style="width: 1100px; height: auto;">
												<tbody>
													<tr class="jqgfirstrow" role="row" style="height: auto">
														<!-- edit and save -->
														<td role="gridcell" style="height: 0px; width: 50px;"></td>
														<!-- name -->
														<td role="gridcell" style="height: 0px; width: 200px;"></td>
														<!-- type -->
														<td role="gridcell" style="height: 0px; width: 100px;"></td>
														<!-- image -->
														<td role="gridcell" style="height: 0px; width: 100px;"></td>
														<!-- quantity -->
														<td role="gridcell" style="height: 0px; width: 75px;"></td>
														<!-- price -->
														<td role="gridcell" style="height: 0px; width: 100px;"></td>
														<!-- discount -->
														<td role="gridcell" style="height: 0px; width: 50px;"></td>
														<!-- -->
														<td role="gridcell" style="height: 0px; width: 50px;"></td>
														<!-- bestSale -->
														<td role="gridcell" style="height: 0px; width: 50px;"></td>
														<!-- new -->
														<td role="gridcell" style="height: 0px; width: 50px;"></td>
														<!-- hot -->
														<td role="gridcell" style="height: 0px; width: 50px;"></td>
														<!-- not use -->
														<td role="gridcell" style="height: 0px; width: 100px;"></td>
													</tr>
													<!-- start product list -->
													<!-- start single product -->
													<c:forEach items="${all}" var="book">
                                                        <!-- start single product -->
                                                        <tr role="row" id="${book.getId()}" tabindex="-1"
                                                            class="ui-widget-content jqgrow ui-row-ltr">
															<!-- edit and save -->
															<td role="gridcell" style="" title=""
																aria-describedby="jqgrid_act"><button
																	class="btn btn-xs btn-default"
																	data-original-title="Edit Row"
																	>
																<i class="fa fa-pencil"></i>
															</button><button class="btn btn-xs btn-default"
																			 data-original-title="Save Row"
																			 >
																<i class="fa fa-save"></i>
															</button></td>
                                                            <!-- name -->
                                                            <td role="gridcell" style="text-align: left;"
                                                                title=""
                                                                aria-describedby="jqgrid_Name"><a
                                                                    style="text-decoration: none;"
                                                                    href="createProduct.jsp?id-book=${book.getId()}">${book.name}</a>
                                                            </td>
                                                            <!-- type -->
                                                            <td role="gridcell" style="" title=""
                                                                aria-describedby="jqgrid_ProductGroupName">${book.category}
                                                            </td>
                                                            <!-- image -->
                                                            <td role="gridcell" style="text-align:center;" title=""
                                                                aria-describedby="jqgrid_Image"><img
                                                                    class="img-jqgrid-thumbnail"
                                                                    src="../${book.getMainImg()}"
                                                                    originalvalue="productImages/product1.jpg"></td>
                                                            <!-- quantity -->
                                                            <td role="gridcell" style="text-align:center;" title="---"
                                                                aria-describedby="jqgrid_TrackingInventoryText">${book.getQuantity()}
                                                            </td>
                                                            <!-- price -->
                                                            <td role="gridcell" style="text-align:right;" title="550,000"
                                                                aria-describedby="jqgrid_Price"> ${book.getDecimalFormatPriceSale()}
                                                            </td>
                                                            <!-- discount -->
                                                            <td role="gridcell" style="text-align:right;" title="0"
                                                                aria-describedby="jqgrid_PriceDiscount">${book.getPercent()}
                                                            </td>
                                                            <!--  -->
															<c:if test="${book.isPromotion() == true}">
                                                            <td role="gridcell" style="text-align:center;" title=""
                                                                aria-describedby="jqgrid_IsBest"><input type="checkbox"

                                                                                                        	checked="checked"

                                                                                                        value="true" offval="no"
                                                                                                        disabled="disabled"></td>
															</c:if>
															<c:if test="${book.isPromotion() == false}">
																<td role="gridcell" style="text-align:center;" title=""
																	aria-describedby="jqgrid_IsBest"><input type="checkbox"

																											value="true" offval="no"
																											disabled="disabled"></td>
															</c:if>

                                                            <!-- bestSale -->
                                                            <c:if test="${book.isBestseller() == true}">
                                                                <td role="gridcell" style="text-align:center;" title=""
                                                                    aria-describedby="jqgrid_IsBest"><input type="checkbox"

                                                                                                            checked="checked"

                                                                                                            value="true" offval="no"
                                                                                                            disabled="disabled"></td>
                                                            </c:if>
                                                            <c:if test="${book.isBestseller() == false}">
                                                                <td role="gridcell" style="text-align:center;" title=""
                                                                    aria-describedby="jqgrid_IsBest"><input type="checkbox"

                                                                                                            value="true" offval="no"
                                                                                                            disabled="disabled"></td>
                                                            </c:if>
                                                            <!-- new -->
                                                            <c:if test="${book.isNew() == true}">
                                                                <td role="gridcell" style="text-align:center;" title=""
                                                                    aria-describedby="jqgrid_IsBest"><input type="checkbox"

                                                                                                            checked="checked"

                                                                                                            value="true" offval="no"
                                                                                                            disabled="disabled"></td>
                                                            </c:if>
                                                            <c:if test="${book.isNew() == false}">
                                                                <td role="gridcell" style="text-align:center;" title=""
                                                                    aria-describedby="jqgrid_IsBest"><input type="checkbox"

                                                                                                            value="true" offval="no"
                                                                                                            disabled="disabled"></td>
                                                            </c:if>
                                                            <!-- hot  -->
                                                            <c:if test="${book.isHot() == true}">
                                                                <td role="gridcell" style="text-align:center;" title=""
                                                                    aria-describedby="jqgrid_IsBest"><input type="checkbox"

                                                                                                            checked="checked"

                                                                                                            value="true" offval="no"
                                                                                                            disabled="disabled"></td>
                                                            </c:if>
                                                            <c:if test="${book.isHot() == false}">
                                                                <td role="gridcell" style="text-align:center;" title=""
                                                                    aria-describedby="jqgrid_IsBest"><input type="checkbox"

                                                                                                            value="true" offval="no"
                                                                                                            disabled="disabled"></td>
                                                            </c:if>
                                                            <!-- not use -->
                                                            <c:if test="${book.isActive() == true}">
                                                                <td role="gridcell" style="text-align:center;" title=""
                                                                    aria-describedby="jqgrid_IsBest"><input type="checkbox"

                                                                                                            checked="checked"

                                                                                                            value="true" offval="no"
                                                                                                            disabled="disabled"></td>
                                                            </c:if>
                                                            <c:if test="${book.isActive() == false}">
                                                                <td role="gridcell" style="text-align:center;" title=""
                                                                    aria-describedby="jqgrid_IsBest"><input type="checkbox"

                                                                                                            value="true" offval="no"
                                                                                                            disabled="disabled"></td>
                                                            </c:if>
                                                        </tr>
                                                        <!-- end single product -->
                                                    </c:forEach>

													<!-- end product list -->
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

															</tbody>
														</table>
													</td>
													<td id="pjqgrid_center" align="center"
														style="width: 293px;">
														<table cellspacing="0" cellpadding="0" border="0"
															style="table-layout: auto;" class="ui-pg-table">
															<form action="product.jsp" method="post">
															<tbody>
																<tr>
																	<td class="ui-pg-button ui-state-disabled"
																		style="width: 4px;"><span class="ui-separator"></span></td>
																	<td>Page</td>
																	<td dir="ltr"><input class="ui-pg-input" name="index"
																		type="text" size="2" maxlength="7" value="${index}"
																		role="textbox"></td>
																	<td>of</td>
																	<td><span id="sp_1_pjqgrid">${endPage}</span></td>
																	<td class="ui-pg-button ui-state-disabled"
																		style="width: 4px;"><span class="ui-separator"></span></td>
																	<td id="next"
																		class="ui-pg-button ui-corner-all">
																			<input type="submit" value="go">
																			</input>
																	</td>

																</tr>
															</tbody>
															</form>
														</table>
													</td>
													<td id="pjqgrid_right" align="right">
														<div dir="ltr" style="text-align: right"
															class="ui-paging-info">View</div>
													</td>
													<script>

													</script>
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
	<!-- start add script -->
	<%@ include file="scripts.jsp"%>
	<!-- end add script -->
	<script>
		function getInnerText() {
			return document.getElementById("txtSearch").innerText;
		}
	</script>
</body>
</html>