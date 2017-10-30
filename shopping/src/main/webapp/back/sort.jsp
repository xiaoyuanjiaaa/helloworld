<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<link href="/shopping/back/css/style.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="/shopping/back/js/jquery.js"></script>
<script type="text/javascript">
	
</script>
<body>
<div class="place">
    <span>位置：</span>
    <ul class="placeul">
    <li><a href="/shopping/list.sw">首页</a></li>
    <li><a href="#">表单</a></li>
    </ul>
    </div>
    
    <div class="formbody">
    
    <div class="formtitle"><span>添加商品类别信息</span></div>
<form action="/shopping/sortadd.sw" method="post">
    <ul class="forminfo">
    <li><label>商品类别:</label><input name="sortName" type="text" class="dfinput" /><i>标题不能超过30个字符</i></li>
    <li><label>所属类别:</label><select name="parentId" class="dfinput" >
        	<c:forEach items="${sort }" var="sort"><option value="${sort.sortId }">${sort.sortName }</option></c:forEach>
        </select></li>
    <li><label>&nbsp;</label><input type="submit" class="btn" value="确认保存"/></li>
    </ul>
</form>
    </div>
</body>
</html>