<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %><html xmlns="http://www.w3.org/1999/xhtml"><html xmlns="http://www.w3.org/1999/xhtml">
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>支付成功</title>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/style.css" />
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/shopping-mall-index.css" />
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/someother.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/someother2.js"></script>
</head>

<body style="position:relative;">

<!--header-->
<%@ include file="common/header.jsp" %>

<!--logo search erweima-->
<%@ include file="common/erweima.jsp" %>
    
    <!--内容开始-->
    <div class="payment w1200">
    	<div class="payment-hd">
        	<h3 class="success">支付成功</h3>
        </div>

        <div class="payment-bd">
            <c:forEach items="${orderExt.list}" var="list">
        	<dl class="dl-hd">
            	<dt><a href="#"><img style="width: 122px;height: 122px" src="${pageContext.request.contextPath}/${list.product.image}" /></a></dt>
                <dd>
                	<h3><a href="#">${list.product.pName}</a></h3>
                    <P>${fn:substring(list.product.pDesc, 0,18 )}</P>
                </dd>
                <div style="clear:both;"></div>
            </dl>

            </c:forEach>
            <ul class="ul-bd">


            	<li><span>送货至</span><p>${orderExt.addr}</p></li>
            	<li><span>价格</span><p><i>¥${orderExt.total}</i></p></li>
            	<li><span>卖家名称</span><p>商城自营专营店</p></li>
            	<li><span>收货信息</span><p>${orderExt.name}  ${orderExt.phone}</p></li>
            	<li><span>成交时间</span><p><fmt:formatDate value="${orderExt.orderTime}" pattern="yyyy-MM-dd hh:mm:ss"></fmt:formatDate> </p></li>
            	<li><span>订单号</span><p>${orderExt.oId}</p></li>
            </ul>
        </div>


        <div class="payment-ft">
        	<button class="btn2" onclick="window.location.href='${pageContext.request.contextPath}/order/toMyOrder'">我的订单</button>
        </div>
    </div>

<!--底部一块-->
<%@ include file="common/bottom.jsp" %>
</body>
</html>
