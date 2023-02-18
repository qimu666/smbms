<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@include file="common/head.jsp" %>
<div class="right">
    <div class="location">
        <strong>你现在所在的位置是:</strong>
        <span>订单管理页面</span>
    </div>
    <div class="search">
        <form id="billSearch">
            <span>商品名称：</span>
            <input name="productName" type="text" id="productName" value="">
            <input type="hidden" name="pageIndex" value="1"/>
            <span>供应商：</span>
            <input type="hidden" value="" id="pid"/>
            <select name="providerId" id="providerId"></select>
            <input type="hidden" value="" id="payId"/>
            <span>是否付款：</span>
            <select name="isPayment" id="isPayment">
                <option value="${0}">--请选择--</option>
                <option value="${1}" ${isPayment == 1 ? "selected=\"selected\"":"" }>未付款</option>
                <option value="${2}" ${isPayment == 2 ? "selected=\"selected\"":"" }>已付款</option>
            </select>
            <input value="查 询" type="submit" id="searchbutton">
            <a href="${pageContext.request.contextPath }/jsp/billadd.jsp">添加订单</a>
        </form>
    </div>
    <!--账单表格 样式和供应商公用-->
    <table class="providerTable" cellpadding="0" cellspacing="0" id="billTable">
        <tr class="firstTr">
            <th width="15%">订单编码</th>
            <th width="15%">商品名称</th>
            <th width="15%">供应商</th>
            <th width="10%">订单金额</th>
            <th width="10%">是否付款</th>
            <th width="15%">创建时间</th>
            <th width="15%">操作</th>
        </tr>
        <tbody></tbody>
    </table>
    <%@include file="rollpage.jsp" %>
</div>
</section>
<!--点击删除按钮后弹出的页面-->
<div class="zhezhao"></div>
<div class="remove" id="removeBi">
    <div class="removerChid">
        <h2>提示</h2>
        <div class="removeMain">
            <p>你确定要删除该订单吗？</p>
            <a href="#" id="yes">确定</a>
            <a href="#" id="no">取消</a>
        </div>
    </div>
</div>

<%@include file="common/foot.jsp" %>
<script type="module" src="${pageContext.request.contextPath }/static/js/billlist.js"></script>