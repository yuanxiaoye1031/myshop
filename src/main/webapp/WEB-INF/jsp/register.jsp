<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>注册</title>
<%--    ${pageContext.request.contextPath}  动态获取项目名称  --%>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/style.css" />
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/shopping-mall-index.css" />
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/someother.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/someother2.js"></script>
</head>
<script>
    //jquery    整个页面加载完毕后执行里面的内容
    $(function (){
       //获取name的元素  验证用户名
        //change 代表用户输入内容改变时执行
        $("#userName").change(function (){
            //发送jquery的ajax到后端
            $.ajax({
                //模拟发送请求
                url:"${pageContext.request.contextPath}/user/changeName",
                type:"post",
                data:{
                    //把用户输入的内容实时发给后端
                    name:$(this).val()
                },
                //等待回调
                success:function (data){
                    //data返回的结果
                    if(data=="ok"){
                        //可用，展示结果
                        $("#userNameMsg").attr("class","dui")
                        $("#userNameMsg").text("用户名可用")
                    }else {
                        //不可用，展示结果
                        $("#userNameMsg").attr("class","cuo")
                        $("#userNameMsg").text("用户名不可用")
                    }
                }
            })

        })

        //验证密码
        $("#password").change(function (){
            //清空确认密码
            $("#rePasswordMsg").attr("class","")
            $("#rePasswordMsg").text("")
            $("#rePassword").val("")
            //写一个正则表达式
            var pattern= /^(?=.*[a-zA-Z])(?=.*[\d])(?=.*[\W])[a-zA-Z\d\W]{6,16}$/
            //获取密码
            var pass = $(this).val();
            //验证
            if(pattern.test(pass)){
                //符合规则
                $("#passwordMsg").attr("class","dui")
                $("#passwordMsg").text("密码可用")
            }else {
                //不符合规则
                $("#passwordMsg").attr("class","cuo")
                $("#passwordMsg").text("密码不符合")
            }

        })

        //确认密码
        $("#rePassword").change(function (){
            //拿到确认密码
            var repass = $(this).val();
            //拿到输入密码
            var pass = $("#password").val();
            if(repass==pass){
                $("#rePasswordMsg").attr("class","dui")
                $("#rePasswordMsg").text("密码可用")
            }else {
                $("#rePasswordMsg").attr("class","cuo")
                $("#rePasswordMsg").text("密码不可用")
            }

        })


        //验证手机号
        $("#phone").change(function (){
            //正则
            var phontPatter=/^1[3,5,7,8][\d]{9}$/
            //获取手机号
            var phone = $(this).val();
            if(phontPatter.test(phone)){
                $("#phoneMsg").attr("class","dui")
                $("#phoneMsg").text("手机号可用")
            }else {
                $("#phoneMsg").attr("class","cuo")
                $("#phoneMsg").text("手机号不可用")
            }

        })

        //阻止提交
        $('form').submit(function (){
            var flag=true

           //验证class属性有没有是cuo
            $("[name='msg']").each(function (){
                if($(this).attr("class")=="cuo"){
                    flag=false
                }
            })

            //验证标识符
            if (flag){
                return true
            }else {
                return false
            }

        })

        //注册失败提示信息
        <%--if(${!empty error}){--%>
        <%--    alert("注册失败")--%>
        <%--}--%>

        //换图片
        $("#changeCode").click(function (){
            $("#code").attr("src","${pageContext.request.contextPath}/val/Code?"+Math.random())
        })

        //换图片2
        $("#code").click(function (){
            $("#code").attr("src","${pageContext.request.contextPath}/val/Code?"+Math.random())
        })

        //验证验证码
        $("#validate").change(function (){
            $.ajax({
                url: "${pageContext.request.contextPath}/val/checkValidate",
                data: {
                    code:$(this).val()
                },
                success:function (data){
                    if(data=="ok"){
                        $("#codeMsg").attr("class","dui")
                        $("#codeMsg").text("正确")
                    }else {
                        $("#codeMsg").attr("class","cuo")
                        $("#codeMsg").text("错误")
                    }
                }
            })
        })

    })
</script>

<body style="background-image: url(${pageContext.request.contextPath}/images/loginbg.jpg);">

<div class="zl-header">
    <div class="zl-hd w1200">
        <p class="hd-p1 f-l">
            <c:if test="${empty user}">
                Hi!您好，欢迎来到小野商城，请登录 <a href="${pageContext.request.contextPath}/user/tologin">【登录】</a>
            </c:if>
        </p>

        <p class="hd-p2 f-r">
            <a href="${pageContext.request.contextPath}/user/toregister">免费注册</a><span>|</span>
            <a href="${pageContext.request.contextPath}/index/toindex">返回首页 </a><span>|</span>
            <a href="${pageContext.request.contextPath}/cart/docart">我的购物车</a><span>|</span>
            <a href="${pageContext.request.contextPath}/order/toMyOrder">我的订单</a>
        </p>

        <div style="clear:both;"></div>

    </div>
</div>

<!--内容开始-->
<form action="${pageContext.request.contextPath}/user/doregister" method="post" style="margin-bottom:320px;margin-top:150px;margin-left: 50%;">
    <div class="password-con registered">
        <div class="psw">
            <p class="psw-p1">用户名</p>
            <input type="text" placeholder="请输入用户名" name="username" id="userName" value="" required/>
            <span id="userNameMsg" class="" name="msg">用户名不能重复</span>
        </div>

        <div class="psw">
            <p class="psw-p1">输入密码</p>
            <input type="password" placeholder="请输入密码" name="password" id="password" required/>
            <span class="" id="passwordMsg" name="msg">密码由6-16的字母、数字、符号组成</span>
        </div>

        <div class="psw">
            <p class="psw-p1">确认密码</p>
            <input type="password" placeholder="请再次确认密码" name="rePassword" id="rePassword" required/>
            <span class="" id="rePasswordMsg" name="msg">密码不一致，请重新输入</span>
        </div>

        <div class="psw psw2">
            <p class="psw-p1">手机号</p>
            <input type="text" placeholder="请输入手机号" name="phone" id="phone" required/>
            <span class="" id="phoneMsg" name="msg">手机号为11位数字</span>
        </div>

        <div class="psw psw3">
            <p class="psw-p1">验证码</p>
            <input type="text" placeholder="请输入验证码" name="validate" id="validate"/>
            <span class="" id="codeMsg" name="msg">请输入验证码</span>
        </div>

        <div class="yanzhentu">
            <div class="yz-tu f-l">
                <img src="${pageContext.request.contextPath}/val/Code" id="code"/>
            </div>
            <p class="f-l">看不清？<a href="javaScript:;" id="changeCode">换张图</a></p>
            <div style="clear:both;"></div>
        </div>

        <div class="agreement">
            <input type="checkbox" name="hobby" id="hobby" required></input>
            <p>我有阅读并同意<span>《小野商城服务协议》</span></p>
        </div>

        <button class="psw-btn" id="register" >立即注册</button>

        <p class="sign-in">已有账号？<a href="/shop/user/tologin">点击登录</a></p>
    </div>
</form>

<!--底部一块-->
<%@ include file="common/bottom.jsp" %>
    
</body>
</html>
