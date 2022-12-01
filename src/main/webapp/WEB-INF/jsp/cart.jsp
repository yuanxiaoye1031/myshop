<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>购物车</title>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/style.css"/>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/shopping-mall-index.css"/>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/someother.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/someother2.js"></script>
</head>
<script>
    //页面加载完毕后
    $(function () {

        $("[name='changeCounr']").click(function () {
            //获取数量值
            var count = $(this).parent().find("[name='count']").val()
            //获取商品id
            var pId = $(this).parent().find("[name='count']").attr("id")
            //调用ajax
            changeCount(count, pId);

        })


        //更改个数方法
        function changeCount(count, pId) {
            //发送ajax
            $.ajax({
                url: "${pageContext.request.contextPath}/cart/changeCount",
                data: {
                    count: count,
                    pId: pId
                },
                success: function (data) {
                    //返回总计
                    //改总计
                    $("#total").text(data)
                }
            })
        }

        //清空
        $("#clear").click(function () {
            if (confirm("是否清空购物车")) {
                $.ajax({
                    url: "${pageContext.request.contextPath}/cart/clear",
                    success: function (data) {
                        $("#total").text(0)
                        //删除所有dom
                        $("[name='nav']").remove()

                        $("#product").text("全部商品" + 0)
                    }
                })
            }


        })
    })

    //删除
    function del(pId) {

        $.ajax({
            url: "${pageContext.request.contextPath}/cart/delCartItem",
            data: {
                pId: pId
            },
            success: function (data) {
                //返回总计
                //改总计
                $("#total").text(data)
                //删除dom节点
                $("#p" + pId).remove()
            }
        })
    }


</script>


<body style="position:relative;">

<!--header-->
<%@ include file="common/header.jsp" %>

<!--logo search erweima-->
<%@ include file="common/erweima.jsp" %>

<!--内容开始-->
<div class="cart-content w1200">
    <ul class="cart-tit-nav">
        <li class="current"><a href="#" id="product">全部商品 ${cart.map.size()}</a></li>
        <li><a href="#">降价商品 </a></li>
        <li><a href="#">进口商品 </a></li>
        <div style="clear:both;"></div>
    </ul>
    <div class="cart-con-tit">
        <p class="p1">
            <input type="checkbox" value="" name="hobby"></input>
            <span>全选</span>
        </p>
        <p class="p2">商品信息</p>
        <p class="p3">规格</p>
        <p class="p4">数量</p>
        <p class="p5">单价（元）</p>
        <p class="p6">金额（元）</p>
        <p class="p7">操作</p>
    </div>

    <c:forEach items="${cart.map}" var="list">
        <div class="cart-con-info" id="p${list.product.pId}" name="nav">
            <div class="info-top">
                <input type="checkbox" value="" name="hobby"></input>
                <span>商家：商城自营专卖店</span>
            </div>
            <div class="info-mid">
                <input type="checkbox" value="" name="hobby" class="mid-ipt f-l"></input>
                <div class="mid-tu f-l">
                    <a href="#"><img style="width: 80px;height: 80px"
                                     src="${pageContext.request.contextPath}/${list.product.image}"/></a>
                </div>
                <div class="mid-font f-l">
                    <a href="#">${list.product.pName}<br/>${fn:substring(list.product.pDesc,0,18)}</a>
                    <span>满赠</span>
                </div>
                <div class="mid-guige f-l">
                    <p>颜色：蓝色</p>
                    <p>尺码：XL</p>
                    <a href="JavaScript:;" class="xg" xg="xg1">修改</a>
                    <div class="guige-xiugai" xg-g="xg1">
                        <div class="xg-left f-l">
                            <dl>
                                <dt>颜 色</dt>
                                <dd>
                                    <a href="JavaScript:;" class="current">黑色</a>
                                    <a href="JavaScript:;">白色</a>
                                </dd>
                                <div style="clear:both;"></div>
                            </dl>
                            <dl>
                                <dt>尺 码</dt>
                                <dd>
                                    <a href="JavaScript:;" class="current">M</a>
                                    <a href="JavaScript:;">L</a>
                                    <a href="JavaScript:;">XL</a>
                                </dd>
                                <div style="clear:both;"></div>
                            </dl>
                            <a href="JavaScript:;" class="qd">确定</a>
                            <a href="JavaScript:;" class="qx" qx="xg1">取消</a>
                        </div>
                        <div class="xg-right f-l">
                            <a href="#"><img src="${pageContext.request.contextPath}/images/dai2.gif"/></a>
                        </div>
                        <div style="clear:both;"></div>
                    </div>
                </div>


                <div class="mid-sl f-l">
                    <a href="JavaScript:;" class="sl-left" name="changeCounr">-</a>
                    <input type="text" value="${list.count}" readonly name="count" id="${list.product.pId}"/>
                    <a href="JavaScript:;" class="sl-right" name="changeCounr">+</a>
                </div>


                <p class="mid-dj f-l">¥ <span>${list.product.shopPrice}</span></p>
                <p class="mid-je f-l">¥ <span>${list.subTotal}</span></p>
                <div class="mid-chaozuo f-l">
                    <a href="#">移入收藏夹</a>
                    <a href="JavaScript:;" onclick="del(${list.product.pId})">删除</a>
                </div>
                <div style="clear:both;"></div>
            </div>
        </div>
    </c:forEach>

    <!--分页-->

    <div class="cart-con-footer">
        <div class="quanxuan f-l">
            <input type="checkbox" value="" name="hobby"></input>
            <span>全选</span>
            <a href="JavaScript:;" id="clear">清空购物车</a>
            <a href="#">加入收藏夹</a>
            <p></p>
        </div>
        <div class="jiesuan f-r">
            <div class="jshj f-l">
                <p>合计（不含运费）</p>
                <p class="jshj-p2">
                    ￥：<span id="total">${cart.total}</span>
                </p>
            </div>
            <a href="${pageContext.request.contextPath}/order/toverify" class="js-a1 f-l">立即结算</a>
            <div style="clear:both;"></div>
        </div>
        <div style="clear:both;"></div>
    </div>
</div>
<!--固定右侧-->
<ul class="youce">
    <li class="li1">
        <a href="/shop/index/toindex" class="li1-tu1"><img src="${pageContext.request.contextPath}/images/zl2-94.png"/></a>
        <a href="/shop/index/toindex" class="li1-zi1">返回首页</a>
    </li>
    <li class="li2">
        <a href="/shop/cart/docart"><img src="${pageContext.request.contextPath}/images/zl2-95.png"/>购</br>物</br>车</a>
    </li>
    <li class="li3">
        <a href="#" class="li1-tu2"><img src="${pageContext.request.contextPath}/images/zl2-96.png"/></a>
        <a href="#" class="li1-zi2">我关注的品牌</a>
    </li>
    <li class="li3">
        <a href="浏览记录.html" class="li1-tu2"><img src="${pageContext.request.contextPath}/images/zl2-97.png"/></a>
        <a href="浏览记录.html" class="li1-zi2">我看过的</a>
    </li>


    <li class="li3 li5">
        <a href="#top" class="li1-tu2"><img src="${pageContext.request.contextPath}/images/zl2-99.gif"/></a>
        <a href="#top" class="li1-zi2">返回顶部</a>
    </li>
</ul>

<!--底部一块-->
<%@ include file="common/bottom.jsp" %>
</body>
</html>
