<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<div class="zl-header">
    <div class="zl-hd w1200">
        <p class="hd-p1 f-l">

            <c:if test="${!empty user}">
                Hi! 【${user.username}】您好，欢迎来到小野商城</a>
            </c:if>
            <c:if test="${empty user}">
                请<a href="${pageContext.request.contextPath}/user/tologin">【登录】</a>
            </c:if>


        </p>
        <p class="hd-p2 f-r">
            <a href="${pageContext.request.contextPath}/user/toregister">免费注册</a><span>|</span>
            <a href="${pageContext.request.contextPath}/index/toindex">返回首页 </a><span>|</span>
            <a href="${pageContext.request.contextPath}/cart/docart">我的购物车</a><span>|</span>
            <a href="${pageContext.request.contextPath}/order/toMyOrder">我的订单</a><span>|</span>
            <a href="${pageContext.request.contextPath}/user/logout">退出登录</a>
        </p>
        <div style="clear:both;"></div>
    </div>
</div>