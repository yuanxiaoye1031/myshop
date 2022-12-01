<%@ page import="org.springframework.ui.Model" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %><html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>支付界面</title>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/style.css" />
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/shopping-mall-index.css" />
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/someother.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/someother2.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/crypto-js/crypto-js.js"></script>
</head>
<script>
    CryptoJS.AES.encrypt("Message", "Secret Passphrase");

    // 正确用法

    var str = '123456';
    // 密钥 16 位
    var key = '0123456789abcdef';
    // 初始向量 initial vector 16 位
    var iv = '0123456789abcdef';
    // key 和 iv 可以一致

    key = CryptoJS.enc.Utf8.parse(key);
    iv = CryptoJS.enc.Utf8.parse(iv);

    var encrypted = CryptoJS.AES.encrypt(str, key, {
        iv: iv,
        mode: CryptoJS.mode.CBC,
        padding: CryptoJS.pad.Pkcs7
    });

    // 转换为字符串
    encrypted = encrypted.toString();

    // mode 支持 CBC、CFB、CTR、ECB、OFB, 默认 CBC
    // padding 支持 Pkcs7、AnsiX923、Iso10126
    // 、NoPadding、ZeroPadding, 默认 Pkcs7, 即 Pkcs5

    var decrypted = CryptoJS.AES.decrypt(encrypted, key, {
        iv: iv,
        mode: CryptoJS.mode.CBC,
        padding: CryptoJS.pad.Pkcs7
    });

    // 转换为 utf8 字符串
    decrypted = CryptoJS.enc.Utf8.stringify(decrypted);

    console.log('密文：',encrypted);
    console.log('明文：',decrypted);

</script>
<body style="position:relative;">


<!--header-->
<%@ include file="common/header.jsp" %>

<!--logo search erweima-->
<%@ include file="common/erweima.jsp" %>
    
    <!--内容开始-->
    <h1>
        支付页面
        <input type="hidden" id="getoId" value="${oId}">
        <input type="hidden" id="getOrder" value="${order}">
    </h1>
<script>
    const oId=$("#getoId").val();
    console.log('oId为'+oId);
    console.log("<%=request.getAttribute("order")%>")
    const order="<%=request.getAttribute("order")%>"
    const total="<%=request.getAttribute("total")%>"
    const orderTime="<%=request.getAttribute("orderTime")%>"
    const name="<%=request.getAttribute("name")%>"
    const phone="<%=request.getAttribute("phone")%>"
    const addr="<%=request.getAttribute("addr")%>"
    console.log(user)
    $.ajax({
        url:"${pageContext.request.contextPath}/userPay/getOI",
        type:"post",
        dataType:"json",
        data:{
            //把用户输入的内容实时发给后端
            oId:oId,
            total:total,
            orderTime:orderTime,
            name:name,
            phone:phone,
            addr:addr,
            order:order
        },
        // //等待回调
        success:function (data){
            //data返回的结果
            console.log(data)
        }
    })
</script>

<!--底部一块-->
<%@ include file="common/bottom.jsp" %>
<%--<script type="text/javascript" src="https://cdn.goeasy.io/goeasy-1.2.1.js"></script>--%>
<%--<script type="text/javascript">--%>
<%--    var goeasy = GoEasy.getInstance({--%>
<%--        host:'hangzhou.goeasy.io', //应用所在的区域地址: 【hangzhou.goeasy.io |singapore.goeasy.io】--%>
<%--        appkey: "BC-2baf32d344a54543aa53b68a0f31fb69" //替换为您的应用appkey--%>
<%--    });--%>

<%--    goeasy.connect({--%>
<%--        onSuccess: function () {  //连接成功--%>
<%--            console.log("GoEasy connect successfully.") //连接成功--%>
<%--        },--%>
<%--        onFailed: function (error) { //连接失败--%>
<%--            console.log("Failed to connect GoEasy, code:"+error.code+ ",error:"+error.content);--%>
<%--        },--%>
<%--        onProgress:function(attempts) { //连接或自动重连中--%>
<%--            console.log("GoEasy is connecting", attempts);--%>
<%--        }--%>
<%--    });--%>

<%--    goeasy.subscribe({--%>
<%--        channel: "WXPay",//替换为您自己的channel--%>
<%--        onMessage: function (message) {--%>
<%--            console.log("Channel:" + message.channel + " content:" + message.content);--%>
<%--            window.location.href="${pageContext.request.contextPath}/order/topaySuccess?oId=${oId}";--%>
<%--        },--%>
<%--        onSuccess: function () {--%>
<%--            console.log("Channel订阅成功。");--%>
<%--        },--%>
<%--        onFailed: function (error) {--%>
<%--            console.log("Channel订阅失败, 错误编码：" + error.code + " 错误信息：" + error.content)--%>
<%--        }--%>
<%--    });--%>


<%--</script>--%>

</body>
</html>
