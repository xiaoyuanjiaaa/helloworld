<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<link type="text/css" href="/shopping/unique/css/css.css" rel="stylesheet" />
<script type="text/javascript" src="/shopping/unique/js/jquery.js"></script>
<script type="text/javascript" src="/shopping/unique/js/js.js"></script>
<script type="text/javascript">

</script>
<body>
<div class="hrader" id="header">
  <a href="/shopping/unique/login.jsp" style="color:#FD7306;margin-left:20px;">请登录</a> 
  <a href="/shopping/unique/reg.jsp">注册</a>
  <div class="topNav">
   <a href="/shopping/unique/index.html" style="color:#FD7306;">首页</a>
   <a href="/shopping/unique/buy.html">手机</a>
   <a href="/shopping/unique/sell.html">电脑</a>
   <a href="/shopping/unique/vip.html">个人中心</a>
   <a href="/shopping/unique/help.html">帮助</a>
   <a href="#">&nbsp;</a>
  </div><!--topNav/-->
 </div><!--hrader/-->
 <div class="mainCont">
  <h1 class="logo" style="text-align:left;">
  <a href="/shopping/unique/index.html"><img src="/shopping/unique/images/logo.png" width="304" height="74" /></a>
  </h1>
  <div class="loginBox">
   <div class="loginLeft">
    <img src="/shopping/unique/images/login.jpg" width="567" height="348" />
   </div><!--loginLeft/-->
   <div class="loginRight">
    <form class="login" action="/shopping/un_user_login.sw" method="post">
     <label>用户名</label>
     <input type="text" name="username" class="loginName" />
     <label>密码</label>
     <input type="password" name="pwd" class="loginPwd" />
     <div class="jizhu">
      <input type="checkbox" /> 一周内免登陆 <a href="#">忘记密码</a>
     </div><!--jizhu/-->
     <div class="loginSub">
      <input type="submit" value=" 登 录 " />
     </div><!--loginSub/-->
    
    </form><!--login/-->
   </div><!--loginRight/-->
   <div class="clears"></div>
  </div><!--loginBox/-->
 </div><!--mainCont/-->
 <div class="footBox">
  <div class="footers">
   <div class="footersLeft">
    <a href="index.html"><img src="/shopping/unique/images/ftlogo.jpg" width="240" height="64" /></a>
    <h3 class="ftphone">400 000 0000 </h3>
    <div class="ftKe">
     客服 7x24小时(全年无休)<br />
     <span>客服邮箱：kefu@webqin.net </span>
    </div><!--ftKe/-->
   </div><!--footersLeft/-->
   <div class="footersRight">
    <ul>
     <li class="ftTitle">新手指南</li>
     <li><a href="#">购物流程</a></li>
     <li><a href="#">会员计划及划分</a></li>
     <li><a href="#">优惠券规则</a></li>
     <li><a href="#">联系客服</a></li>
     <li><a href="#">常见问题</a></li>
    </ul>
    <ul>
     <li class="ftTitle">付款方式</li>
     <li><a href="#">在线支付</a></li>
     <li><a href="#">礼品卡支付</a></li>
     <li><a href="#">货到付款</a></li>
     <li><a href="#">银行付款</a></li>
    </ul>
    <ul>
     <li class="ftTitle">配送服务</li>
     <li><a href="#">配送时效及运费</a></li>
     <li><a href="#">超时赔付</a></li>
     <li><a href="#">验货与签收</a></li>
     <li><a href="#">配货信息跟踪</a></li>
    </ul>
    <ul>
     <li class="ftTitle">售后服务</li>
     <li><a href="#">退换货政策</a></li>
     <li><a href="#">退换货区域</a></li>
     <li><a href="#">退款时限</a></li>
     <li><a href="#">先行赔付</a></li>
     <li><a href="#">发票说明</a></li>
    </ul>
    <ul>
     <li class="ftTitle">特色服务</li>
     <li><a href="#">礼品卡</a></li>
     <li><a href="#">产品试用</a></li>
     <li><a href="#">花粉中心</a></li>
     <li><a href="#">快速购物</a></li>
     <li><a href="#">推荐好友</a></li>
    </ul>
    
    <div class="clears"></div>
   </div><!--footersRight/-->
   <div class="clears"></div>
  </div><!--footers/-->
 </div><!--footBox/-->
 <div class="footer" style="text-align:left;">
  <a href="#">关于我们</a>
  <a href="#">友情链接</a>
  <a href="#">版权声明</a>
  <a href="#">网站地图</a>
  <br />
  <span>&copy; 2017 Unqezi 使用前必读 模板主权：<a href="http://www.mycodes.net/" target="_blank">胡掌柜子</a></span>
 </div><!--footer/-->
</body>
</html>