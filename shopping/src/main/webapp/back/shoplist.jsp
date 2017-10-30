<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>网站后台管理系统HTML模板--模板之家 www.cssmoban.com</title>
</head>
<link href="/shopping/back/css/style.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="/shopping/back/js/jquery.js"></script>

<script type="text/javascript">

</script>

<body>

	<div class="place">
    <span>位置：</span>
    <ul class="placeul">
    <li><a href="#">首页</a></li>
    <li><a href="#">数据表</a></li>
    <li><a href="#">基本内容</a></li>
    </ul>
    </div>
    
    <div class="rightinfo">
    
    <div class="tools">
    <ul class="toolbar">
        <li><a href="/shopping/sortlist.sw"><span><img src="/shopping/back/images/t01.png" /></span>添加商品类别</a></li>
        <li><a href="/shopping/shoplist.sw"><span><img src="/shopping/back/images/t01.png" /></span>添加商品</a></li>
        <li><span><img src="/shopping/back/images/t02.png" /></span>修改</li>
        <li><span><img src="/shopping/back/images/t03.png" /></span>删除</li>
        <li><span><img src="/shopping/back/images/t04.png" /></span>统计</li>
    </ul>

        <ul class="toolbar1">
        <li><span><img src="/shopping/back/images/t05.png" /></span>设置</li>
        </ul>
    
    </div>
    
    
    <table class="tablelist" border="1" cellspacing="0" cellpadding="0">
    	<thead>
    	<tr>
        <th><input name="" type="checkbox" value="" checked="checked"/></th>
        <th>商品编号</th>
        <th>商品名称</th>
        <th>图片</th>
        <th>单价</th>
        <th>售价</th>
        <th>保质期</th>
        <th>商品类别</th>
        <th>厂家</th>
        <th>收藏</th>
        <th>数量</th>
        <th>运行内存</th>
        <th>存储内存</th>
        <th>中央处理器</th>
        <th>操作系统版本</th>
        <th>分辨率</th>
        <th>机重</th>
        <th>操作</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach items="${shoplist}" var="list">
        <tr align="center">
        <td><input name="" type="checkbox" value="" /></td>
        <td>${list.shopId }</td>
        <td>${list.shopName }</td>
        <td><img src="${list.shopImg }" style="height: 30px;width: 30px;" /></td>
        <td>${list.price }</td>
        <td>${list.sole }</td>
        <td>${list.quality }</td>
        <td>${list.sort.sortName }</td>
        <td>${list.vender }</td>
        <td>${list.collection }</td>
        <td>${list.num }</td>
        <td>${list.MBRAM }</td>
        <td>${list.ROM }</td>
        <td>${list.CPU }</td>
        <td>${list.os }</td>
        <td>${list.resolution }</td>
        <td>${list.mweight }</td>
        <td><a href="/shopping/toupdate.sw?id=${list.shopId }" class="tablelink">修改</a>
         <a href="/shopping/delete.sw?id=${list.shopId }" class="tablelink"> 删除</a></td>
        </tr>
        </c:forEach>
        </tbody>
    </table>

   
    <div class="pagin">
    	<div class="message">共<i class="blue">1256</i>条记录，当前显示第&nbsp;<i class="blue">2&nbsp;</i>页</div>
        <ul class="paginList">
        <li class="paginItem"><a href="javascript:;"><span class="pagepre"></span></a></li>
        <li class="paginItem"><a href="javascript:;">1</a></li>
        <li class="paginItem current"><a href="javascript:;">2</a></li>
        <li class="paginItem"><a href="javascript:;"><span class="pagenxt"></span></a></li>
        </ul>
    </div>
    
    
    </div>

     <!-- 添加商品类别 
    <div class="sorttip">
    	<div class="tiptop"><span>添加商品类别信息</span><a></a></div>
        
      <div class="tipinfo">
        
        <p>商品类别:<input type="text" name="sortName"></p><br>
        <p>所属类别:<select name="parentId">
        	<c:forEach items="${sort }" var="sort"><option value="${sort.parentId }">${sort.sortName }</option></c:forEach>
        </select></p>
        <cite>如果是请点击确定按钮 ，否则请点取消。</cite>
        
        </div>
        
        <div class="tipbtn">
        <input type="submit"  class="sure" value="确定" />&nbsp;
        <input type="button"  class="cancel" value="取消" />
		</div>
    </div> -->
       <!-- 添加商品
    <div class="shoptip">
    	<div class="tiptop"><span>添加商品信息</span><a></a></div>
        
      <div class="tipinfo">
        <span><img src="images/ticon.png" /></span>
        
        <p></p>
        <cite>如果是请点击确定按钮 ，否则请点取消。</cite>        
        </div>
        
        <div class="tipbtn">
        <input name="" type="button"  class="sure" value="确定" />&nbsp;
        <input name="" type="button"  class="cancel" value="取消" />
		</div>
    </div>-->
       <!-- 修改
    <div class="updatetip">
    	<div class="tiptop"><span>修改信息</span><a></a></div>
        
      <div class="tipinfo">
        <span><img src="images/ticon.png" /></span>
        <div class="tipright">
        <p>是否确认对信息的修改 ？</p>
        <cite>如果是请点击确定按钮 ，否则请点取消。</cite>
        </div>
        </div>
        
        <div class="tipbtn">
        <input name="" type="button"  class="sure" value="确定" />&nbsp;
        <input name="" type="button"  class="cancel" value="取消" />
		</div>
    </div> -->
    <script type="text/javascript">
	$('.tablelist tbody tr:odd').addClass('odd');
	</script>
</body>
</html>