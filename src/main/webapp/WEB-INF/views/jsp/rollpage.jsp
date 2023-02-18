<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Insert title here</title>
    <script type="module">

    </script>
</head>
<body>
<div class="page-bar">
    <ul id="pageUl" class="page-num-ul clearfix">
        <li>共
            <input type="hidden" id="totalCounts" value=""/>
            <span id="totalCount"></span>条记录&nbsp;&nbsp;
            <input type="hidden" id="newPageNo" value=""/>
            <span id="currentPageNo"> </span>/
            <input type="hidden" id="pageCount" value=""/>
            <span id="totalPageCount"></span>页
        </li>
    </ul>
    <span class="page-go-form"><label>跳转至</label>
	     <input type="text" name="inputPage" id="inputPage" class="page-key"/>页
	     <button type="button" class="page-btn"
                 onClick='jump_to(document.forms[0],document.getElementById("inputPage").value)'>GO</button>
		</span>
</div>
</body>
<script type="text/javascript" src="${pageContext.request.contextPath }/static/js/rollpage.js"></script>
</html>