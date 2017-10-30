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
<form action="/shopping/add.sw" method="post">
    <ul class="forminfo">
    <li><label>商品名称:</label><input name="shopName" type="text" class="dfinput" /><i>标题不能超过30个字符</i></li>
    <li><label>图片:</label><input name="shopImg" type="text" class="dfinput" /><i>标题不能超过30个字符</i></li>
    <li><label>单价:</label><input name="price" type="text" class="dfinput" /><i>标题不能超过30个字符</i></li>
    <li><label>售价:</label><input name="sole" type="text" class="dfinput" /><i>标题不能超过30个字符</i></li>
    <li><label>保质期:</label><input name="quality" type="text" class="dfinput" /><i>标题不能超过30个字符</i></li>
    <li><label>厂家:</label><input name="vender" type="text" class="dfinput" /><i>标题不能超过30个字符</i></li>
    <li><label>收藏:</label><input name="collection" type="text" class="dfinput" /><i>标题不能超过30个字符</i></li>
    <li><label>数量:</label><input name="num" type="text" class="dfinput" /><i>标题不能超过30个字符</i></li>
    <li><label>运行内存:</label><input name="MBRAM" type="text" class="dfinput" /><i>标题不能超过30个字符</i></li>
    <li><label>存储内存:</label><input name="ROM" type="text" class="dfinput" /><i>标题不能超过30个字符</i></li>
    <li><label>中央处理器:</label><input name="CPU" type="text" class="dfinput" /><i>标题不能超过30个字符</i></li>
    <li><label>操作系统版本:</label><input name="os" type="text" class="dfinput" /><i>标题不能超过30个字符</i></li>
    <li><label>分辨率:</label><input name="resolution" type="text" class="dfinput" /><i>标题不能超过30个字符</i></li>
    <li><label>机身重量:</label><input name="mweight" type="text" class="dfinput" /><i>标题不能超过30个字符</i></li>
    <li><label>商品类别:</label><select name="sortid" class="dfinput" >
        	<c:forEach items="${sortid }" var="sort"><option value="${sort.sortId }">${sort.sortName }</option></c:forEach>
        </select></li>
    <li><label>&nbsp;</label><input type="submit" class="btn" value="确认保存"/></li>
    </ul>
</form>
    </div>
</body>
</html>