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
<link type="text/css" rel="stylesheet" href="http://s.itiexue.net/css/global/global.css" />
    <link type="text/css" rel="stylesheet" href="http://s.itiexue.net/css/tiexue/register/public.css" />
    <link type="text/css" rel="stylesheet" href="http://s.itiexue.net/css/tiexue/register/page/zhuce.css" />
    <script src="http://s.itiexue.net/js/global/base-all-v2.js" type="text/javascript"></script>
    <script src="http://s.itiexue.net/js/tiexue/public.js" type="text/javascript" charset="utf-8"></script>
    <script src="http://s.itiexue.net/js/tiexue/register/page/newzhuce.js?v=2" type="text/javascript"></script>
      <script type="text/javascript">
        var authnCfg = {
            // CAPTCHA图片（使用Cookies传递Guid）
            captchaImageSrc: 'http://sso.tiexue.net/captcha/image'
        };
        function GetValidateCode(image) {
            $(image).attr("src", authnCfg.captchaImageSrc + '?t=' + Date.parse(new Date()) + '&width=102&height=30');
        }

        $(document).ready(function () {
            GetValidateCode($("#RegCodeImage"));

        });
    </script>
<body>
 <form method="post" action="/shopping/un_user_add.sw" id="form1">

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
  <a href="/shopping/unique/index.html"><img src="images/logo.png" width="304" height="74" /></a>
  </h1>
  <div class="loginBuy">
  <!-- *********************注册账号********************************** -->
<div class="aspNetHidden">
<input type="hidden" name="__VIEWSTATE" id="__VIEWSTATE" value="/wEPDwULLTE2MDIxMTU1MzlkZFCie4hhNoTawGtD23vWUzmFNqC5" />
</div>

<div class="aspNetHidden">

	<input type="hidden" name="__VIEWSTATEGENERATOR" id="__VIEWSTATEGENERATOR" value="799CC77D" />
</div>
    	<div class="main">
                <h3 class="reg_titel">
                    <!-- 欢迎注册账号 -->
                    注册账号</h3>
                <div class="zhuce_cont">
                    <div class="zc_message" id="messlink">
                        <label class="zc_label" for=" ">用 户 名：</label>
                        <input type="text" class="zc_input" id="user" name="username" />
                        <div class="zc_prompt">
                            <p class="zc_proA" id="user-rs"><span>*</span>2-16字符，建议用中文，一经注册不能修改。</p>
                            <p class="zc_proB" id="user-error"><span></span>用户名格式不正确！</p>
                            <p class="zc_proC" id="user-fon"><span></span>恭喜您，用户名可以使用</p>
                        </div>
                        <div class="zc_hint" id="usertit">请输入汉字、字母、数字和下划线，2-16个字符。</div>
                    </div>
                    <div class="zc_message" style="margin-bottom: 0;">
                        <label class="zc_label" for=" ">设置密码：</label>
                        <input type="password" class="zc_input" id="pwd" name="password" />
                        <div class="zc_prompt">
                            <p class="zc_proA" id="pwd-rs"><span>*</span>长度为6-16位，建议由字母、数字或符号组合，区分大小写。</p>
                            <p class="zc_proB" id="pwd-error"><span></span>密码不能少于6个字符！</p>
                            <p class="zc_proC" id="pwd-fon"><span></span></p>
                        </div>
                        <div class="zc_hint" id="zc_hint" style="display: none;">
                            <h3 class="zc_cd ">
                                <div class="zc_rzq zc_ruo">
                                    <div></div>
                                </div>
                                <p class="zc_ruoText">弱,容易被盗</p>
                            </h3>
                            <h3 class="zc_cd">
                                <div class="zc_rzq zc_zhong">
                                    <div></div>
                                </div>
                                <p class="zc_zhongText">中,还可以再复杂些</p>
                            </h3>
                            <h3 class="zc_cd">
                                <div class="zc_rzq zc_gao">
                                    <div></div>
                                </div>
                                <p class="zc_gaoText">强，密码安全</p>
                            </h3>
                        </div>
                    </div>
                    <div class="zc_message ">
                        <label class="zc_label" for=" ">确认密码：</label>
                        <input type="password" class="zc_input" id="pass" name=" " />
                        <div class="zc_prompt">
                            <p class="zc_proA" id="pass-rs"><span>*</span>请再次输入密码</p>
                            <p class="zc_proB" id="pass-error"><span></span>两次输入的密码不一致</p>
                            <p class="zc_proC" id="pass-fon"><span></span></p>
                        </div>
                    </div>
                   <!--  <div class="zc_message" id="phone">
                        <label class="zc_label" for=" ">手机号码：</label>
                        <input type="text" class="zc_input" id="mobile" name="mobile" />
                        <div class="zc_prompt">                            
                            <p class="zc_proA" id="mobile-rs"><span>*</span>请输入真实有效的手机号码</p>
                            <p class="zc_proB" id="mobile-error"><span></span>手机号码错误</p>
                            <p class="zc_proC" id="mobile-fon"><span></span></p>                           
                        </div>
                        <div class="zc_hint" id="mobiletit">请输入真实有效的手机号码</div>
                    </div> -->
                    <div class="zc_message" style="padding-top: 10px;">
                        <label class="zc_label" for=" ">验证码:</label>
                        <div class="zc_InputW">
                            <input type="text" class="zc_yzmInput" id="yzm" name="" maxlength="4" onkeydown="TX.EnterSubmit(event,function(){checkform('form1')})" />
                            <span class="VerifyCodeImg">
                                <img id="RegCodeImage" onclick="GetValidateCode(this);" src="" /></span>
                            <b onclick="GetValidateCode($('#RegCodeImage'));">刷新</b>
                        </div>
                        <div class="zc_prompt">
                            <p class="zc_proA" id="yzm-rs"><span>*</span>不分大小写</p>
                            <p class="zc_proB" id="yzm-error"><span></span>验证码有误</p>
                            <p class="zc_proC" id="yzm-fon"><span></span></p>
                        </div>
                    </div>
                    <div class="zc_text">
                        <div class="zc_xy">
                            <div class="zc_checkbox">
                                <input type="checkbox" checked="checked" name="ydfwxy" id="igrai" />
                            </div>
                            <div class="zc_ctext">我已阅读并同意遵守&nbsp;<a href="javascript:void(0)" id="togg">服务条款</a></div>
                        </div>
                        <div id="regsiter15221" style="display: none;">
                            <div class="regsiter15222">阅读服务条款</div>
                            <div class="regsiter15222">
                                <b id="closed">X</b>
                                <textarea name="textarea1" id="regsiter15223" cols="80" rows="19">铁血网网络服务使用协议:									

</textarea>
                            </div>
                        </div>
                        <div class="zc_xyz" id="greet"><span></span>请阅读并同意服务条款 </div>
                        <div class="zc_xy" style="clear: both; display: none;">
                            <div class="zc_checkbox">
                                <input type="checkbox" name="xcdl" id="ydfwxy" />
                            </div>
                            <div class="zc_ctext">下次自动登录，请勿在公共电脑勾选此项</div>
                        </div>
                    </div>
                    <div class="zc_submit">
                        <input type="submit" name="tijiao" id="tijiao" class="zc_mszc" value="马上注册" />
                        <p>已经注册了？<a href="#">点击登录</a></p>
                    </div>
                    
                </div>                
            </div>
         </form>
  <div class="loginBuyRight">
   <div class="regDl">
    <a href="/shopping/unique/login.html"><img src="/shopping/unique/images/dl.jpg" width="180" height="60" /></a>
    <p>已有<a href="/shopping/unique/login.html">用户</a>账号点击登录！</p>
   </div><!--regDl/-->

  </div><!--loginBuyRight/-->
  <div class="clears"></div>
  </div><!--loginBuy/-->
 </div><!--mainCont/-->
 <div class="footBox">
  <div class="footers">
   <div class="footersLeft">
    <a href="/shopping/unique/index.html"><img src="/shopping/unique/images/ftlogo.jpg" width="240" height="64" /></a>
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
<script type="text/javascript">
    var togg = document.getElementById("togg"),
        cont = document.getElementById("regsiter15221"),
        clsed = document.getElementById("closed");
    togg.onclick = function () {
        if (cont.style.display == "none") {
            cont.style.display = "block";
            document.getElementById("greet").style.display = "none";
        } else if (cont.style.display == "block") {
            cont.style.display = "none";

        }
    }
    clsed.onclick = function () {
        cont.style.display = "none";
    }
    function openWindow() {

        if (TX.BaseCookie.BBS_CurrentUserID() <= 0) {
            var top = ($(window).height() - 550) / 2,
                left = ($(document).width() - 650) / 2;
            window.open('https://open.weixin.qq.com/connect/qrconnect?appid=wx7f3870c2639a8ee3&redirect_uri=http%3A%2F%2Fwx.sso.tiexue.net%2Fapi%2Fwxlogin%2Fqruserinfo&response_type=code&scope=snsapi_login&state=http%3A%2F%2Freg.tiexue.net%2Foauth%2Fwechat.aspx?rf=', '', 'height=550,width=650,top=' + top + ',left=' + left + ',toolbar=no,menubar=no');
        }
        else {
            window.location.href = 'http://i.tiexue.net/' + TX.BaseCookie.BBS_CurrentUserID() + '/safe.html';
        }
        return false
    }
</script>
</html>