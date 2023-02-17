<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@include file="common/head.jsp" %>
<div class="right">
    <div class="location">
        <strong>你现在所在的位置是:</strong>
        <span>用户管理页面</span>
    </div>
    <div class="search">
        <form class="search">
            <span>用户名：</span>
            <input name="userName" id="userName" class="input-text" type="text" value="${userName}">
            <span>用户角色：</span>
            <input type="hidden" value="${userRole}" id="rid"/>
            <select name="userRole" id="userRole"></select>
            <input type="hidden" name="pageIndex" value="1"/>
            <input value="查 询" type="submit" id="searchbutton">
            <a href="${pageContext.request.contextPath}/useradd">添加用户</a>
        </form>
    </div>
    <!--用户-->
    <table class="providerTable" cellpadding="0" cellspacing="0">
        <tr class="firstTr">
            <th width="10%">用户id</th>
            <th width="10%">用户编码</th>
            <th width="20%">用户名称</th>
            <th width="10%">性别</th>
            <th width="10%">生日</th>
            <th width="10%">电话</th>
            <th width="10%">用户角色</th>
            <th width="30%">操作</th>
        </tr>
        <c:forEach var="user" items="${userList}" varStatus="status">
            <tr>
                <td>
                    <span>${user.id }</span>
                </td>
                <td>
                    <span>${user.userCode }</span>
                </td>
                <td>
                    <span>${user.userName }</span>
                </td>
                <td>
							<span>
								<c:if test="${user.gender==1}">男</c:if>
								<c:if test="${user.gender==2}">女</c:if>
							</span>
                </td>
                <td>
                    <span>${user.age}</span>
                </td>
                <td>
                    <span>${user.phone}</span>
                </td>
                <td>
                    <span>${user.role.roleName}</span>
                </td>
                <td>
                    <span><span class="viewUser" href="javascript:;" userid="${user.id}"
                                username="${user.userName}"><img
                            src="${pageContext.request.contextPath }/static/images/read.png" alt="查看"
                            title="查看"/></span></span>
                    <span>
                        <span class="modifyUser" userid="${user.id }"
                              username="${user.userName}"><img
                                src="${pageContext.request.contextPath }/static/images/xiugai.png" alt="修改"
                                title="修改"/></span></span>
                    <span><span class="deleteUser" userid="${user.id }"
                                username="${user.userName }"><img
                            src="${pageContext.request.contextPath }/static/images/schu.png" alt="删除"
                            title="删除"/></span></span>
                </td>
            </tr>
        </c:forEach>
    </table>
    <%@include file="paging.jsp" %>
</div>
</section>
<!--点击删除按钮后弹出的页面-->
<div class="zhezhao"></div>
<div class="remove" id="removeUse">
    <div class="removerChid">
        <h2>提示</h2>
        <div class="removeMain">
            <p>你确定要删除该用户吗？</p>
            <a href="#" id="yes">确定</a>
            <a href="#" id="no">取消</a>
        </div>
    </div>
</div>
<%@include file="common/foot.jsp" %>
<script type="module" src="${pageContext.request.contextPath }/static/js/userlist.js"></script>
