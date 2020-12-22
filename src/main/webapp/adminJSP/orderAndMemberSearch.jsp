<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!-- search box -->
<div
	class="ui-widget ui-widget-content ui-corner-all ui-jqdialog jqmID1"
	id="searchmodfbox_jqgrid" dir="ltr"
	style="width: 450px; height: auto; z-index: 950; overflow: hidden; top: 116px; left: 240px; display: none;"
	tabindex="-1" role="dialog" aria-labelledby="searchhdfbox_jqgrid"
	aria-hidden="false">
	<div
		class="ui-jqdialog-titlebar ui-widget-header ui-corner-all ui-helper-clearfix"
		id="searchhdfbox_jqgrid" style="cursor: move;">
		<span class="ui-jqdialog-title" style="float: left;">Search...</span><a
			class="ui-jqdialog-titlebar-close ui-corner-all"
			style="right: 0.3em;"><span onclick="orderAndMemberSearch()"
			class="ui-icon ui-icon-closethick"></span></a>
	</div>
	<div class="ui-jqdialog-content ui-widget-content"
		id="searchcntfbox_jqgrid">
		<div>
			<div id="fbox_jqgrid" class="searchFilter" style="overflow: auto">
				<table class="group ui-widget ui-widget-content"
					style="border: 0px none;">
					<tbody>
						<tr class="error" style="display: none;">
							<th colspan="5" class="ui-state-error" align="left"></th>
						</tr>
						<tr>
							<th colspan="5" align="left"><span></span></th>
						</tr>
						<tr>
							<td class="first"></td>
							<td class="columns"><select>
									<option value="CreatedDate" selected="selected">Ngày
										đặt</option>
									<option value="AutoCode">Mã đơn hàng</option>
									<option value="CustomerName">Khách hàng</option>
									<option value="TrackingNumber">Mã vận đơn</option>
									<option value="ShipmentStaeName">Giao hàng</option>
									<option value="PaymentStateName">Thanh toán</option>
									<option value="CODStateName">COD</option>
									<option value="Amount">Tổng tiền</option>
									<option value="Description">Lời nhắn</option>
									<option value="Source">Nguồn</option>
							</select></td>
							<td class="operators"><select class="selectopts">
									<option value="eq" selected="selected">equal</option>
									<option value="ne">not equal</option>
									<option value="bw">begins with</option>
									<option value="bn">does not begin with</option>
									<option value="ew">ends with</option>
									<option value="en">does not end with</option>
									<option value="cn">contains</option>
									<option value="nc">does not contain</option>
									<option value="in">is in</option>
									<option value="ni">is not in</option>
							</select></td>
							<td class="data"><input type="text" id="jqg1"
								style="width: 98%;" role="textbox" class="input-elm"></td>
							<td></td>
						</tr>
					</tbody>
				</table>
			</div>
			<table class="EditTable" style="border: 0px none; margin-top: 5px"
				id="fbox_jqgrid_2">
				<tbody>
					<tr>
						<td colspan="2">
							<hr class="ui-widget-content" style="margin: 1px">
						</td>
					</tr>
					<tr>
						<td class="EditButton" style="text-align: left"><a
							id="fbox_jqgrid_reset"
							class="fm-button ui-state-default ui-corner-all fm-button-icon-left ui-search"><span
								class="ui-icon ui-icon-arrowreturnthick-1-w"></span>Reset</a></td>
						<td class="EditButton"><a id="fbox_jqgrid_search"
							class="fm-button ui-state-default ui-corner-all fm-button-icon-right ui-reset"><span
								class="ui-icon ui-icon-search"></span>Find</a></td>
					</tr>
				</tbody>
			</table>
		</div>
	</div>
	<div
		class="jqResize ui-resizable-handle ui-resizable-se ui-icon ui-icon-gripsmall-diagonal-se"></div>
</div>
