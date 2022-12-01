<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>确认订单</title>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/style.css"/>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/shopping-mall-index.css"/>
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
<form method="post" action="${pageContext.request.contextPath}/order/doPay">
<div class="payment-interface w1200">
    <div class="pay-info">
        <div class="info-tit">
            <h3>选择收货地址</h3>
        </div>
        <ul class="pay-dz">
            <table style="margin:10px;">
                <tr style="height: 30px">
                    <td>用户名</td>
                    <td style="height: 30px"><input type="text" name="name" value="${user.name}"
                                                    style="height: 30px"></td>
                </tr>
                <tr style="height: 30px">
                    <td>电话</td>
                    <td style="height: 30px"><input type="text" name="phone" value="${user.phone}"
                                                    style="height: 30px"></td>
                </tr>
                <tr>
                    <td>地址</td>
                    <td style="height: 30px"><input type="text" name="addr" value="${user.addr}"
                                                    style="height: 30px;width: 180px"></td>
                </tr>
            </table>
            <div style="clear:both;"></div>
        </ul>

    </div>
    <div class="pay-info">
        <div class="info-tit" style="border-bottom:0;">
            <h3>订单信息</h3>
        </div>
    </div>
    <div class="cart-con-info">
        <div class="cart-con-tit" style="margin:20px 0 5px;">
            <p class="p1" style="width:400px;">
                <input type="checkbox" value="" name="hobby"></input>
                <span>商家：商城自营专卖店</span>
            </p>
            <p class="p3" style="width:145px;">规格</p>
            <p class="p4" style="width:130px;">数量</p>
            <p class="p8" style="width:75px;">运费</p>
            <p class="p5">单价（元）</p>
            <p class="p6" style="width:173px;">金额（元）</p>
            <p class="p7">配送方式</p>
        </div>

        <c:forEach items="${cart.map}" var="list">
            <div class="info-mid">
                <div class="mid-tu f-l">
                    <a href="#"><img style="width: 80px;height: 80px" src="${pageContext.request.contextPath}/${list.product.image}"/></a>
                </div>
                <div class="mid-font f-l" style="margin-right:40px;">
                    <a href="#">${list.product.pName}点<br/>${fn:substring(list.product.pDesc,0,18)}</a>
                </div>
                <div class="mid-guige1 f-l" style="margin-right:40px;">
                    <p>颜色：蓝色</p>
                    <p>尺码：XL</p>
                </div>
                <div class="mid-sl f-l" style="margin:10px 54px 0px 0px;">
                    <a href="JavaScript:;" class="">-</a>
                    <input type="text" value="${list.count}" readonly/>
                    <a href="JavaScript:;" class="">+</a>
                </div>
                <p class="mid-yunfei f-l">¥ 0.00</p>
                <p class="mid-dj f-l">¥${list.product.shopPrice}</p>
                <p class="mid-je f-l" style="margin:10px 120px 0px 0px;">¥ ${list.subTotal}</p>
                <div class="mid-chaozuo f-l">
                    <select>
                        <option>送货上门</option>
                        <option>快递包邮</option>
                    </select>
                </div>
                <div style="clear:both;"></div>
            </div>
        </c:forEach>

        <div class="info-heji">
            <p class="f-r">店铺合计(含运费)：<span>¥${cart.total}</span></p>
            <h3 class="f-r">订单号：${oId}</h3>
        </div>
        <div class="info-tijiao">
            <p class="p1">实付款：<span>¥${cart.total}</span></p>
            <button class="btn" >提交订单</button>

        </div>
    </div>
</div>
</form>
<!--底部一块-->
<%@ include file="common/bottom.jsp" %>

<!--确认订单（新增地址）-->
<div class="confirmation-tanchuang" xgdz1="">
    <div class="tanchuang-bg"></div>
    <div class="tanchuang-con">
        <div class="tc-title">
            <h3>新增地址</h3>
            <a href="JavaScript:;" dz-guan=""><img
                    src="${pageContext.request.contextPath}/images/close-select-city.gif"/></a>
            <div style="clear:both;"></div>
        </div>
        <ul class="tc-con2">
            <li class="tc-li1">
                <p class="l-p">所在地区<span>*</span></p>
                <div class="xl-dz">
                    <div class="dz-left f-l">
                        <p>新疆</p>
                        <ul>
                            <li class="current"><a href="#">新疆</a></li>
                            <li><a href="#">甘肃</a></li>
                            <li><a href="#">宁夏</a></li>
                            <li><a href="#">青海</a></li>
                            <li><a href="#">重庆</a></li>
                            <li><a href="#">长寿</a></li>
                        </ul>
                    </div>
                    <div class="dz-right f-l">
                        <p>乌鲁木齐</p>
                        <ul>
                            <li class="current"><a href="#">乌鲁木齐</a></li>
                            <li><a href="#">昌吉</a></li>
                            <li><a href="#">巴音</a></li>
                            <li><a href="#">郭楞</a></li>
                            <li><a href="#">伊犁</a></li>
                            <li><a href="#">阿克苏</a></li>
                            <li><a href="#">喀什</a></li>
                            <li><a href="#">哈密</a></li>
                            <li><a href="#">克拉玛依</a></li>
                            <li><a href="#">博尔塔拉</a></li>
                            <li><a href="#">吐鲁番</a></li>
                            <li><a href="#">和田</a></li>
                            <li><a href="#">石河子</a></li>
                            <li><a href="#">克孜勒苏</a></li>
                            <li><a href="#">阿拉尔</a></li>
                            <li><a href="#">五家渠</a></li>
                            <li><a href="#">图木舒克</a></li>
                            <li><a href="#">库尔勒</a></li>
                            <div style="clear:both;"></div>
                        </ul>
                    </div>
                    <div style="clear:both;"></div>
                </div>
                <div style="clear:both;"></div>
            </li>
            <li class="tc-li1">
                <p class="l-p">详细地址<span>*</span></p>
                <textarea class="textarea1" placeholder="请如实填写您的详细信息，如街道名称、门牌号、楼层号和房间号。"></textarea>
                <div style="clear:both;"></div>
            </li>
            <li class="tc-li1">
                <p class="l-p">邮政编码<span></span></p>
                <input type="text"/>
                <div style="clear:both;"></div>
            </li>
            <li class="tc-li1">
                <p class="l-p">收货人姓名<span>*</span></p>
                <input type="text"/>
                <div style="clear:both;"></div>
            </li>
            <li class="tc-li1">
                <p class="l-p">联系电话<span>*</span></p>
                <input type="text"/>
                <div style="clear:both;"></div>
            </li>
        </ul>
        <button class="btn-pst2">保存</button>
    </div>
</div>

<!--修改地址-->
<div class="confirmation-tanchuang" xgdz2="">
    <div class="tanchuang-bg"></div>
    <div class="tanchuang-con">
        <div class="tc-title">
            <h3>新增地址</h3>
            <a href="JavaScript:;" dz-guan=""><img
                    src="${pageContext.request.contextPath}/images/close-select-city.gif"/></a>
            <div style="clear:both;"></div>
        </div>
        <ul class="tc-con2">
            <li class="tc-li1">
                <p class="l-p">所在地区<span>*</span></p>
                <div class="xl-dz">
                    <div class="dz-left f-l">
                        <p>北京</p>
                        <ul>
                            <li class="current"><a href="#">新疆</a></li>
                            <li><a href="#">甘肃</a></li>
                            <li><a href="#">宁夏</a></li>
                            <li><a href="#">青海</a></li>
                            <li><a href="#">重庆</a></li>
                            <li><a href="#">长寿</a></li>
                        </ul>
                    </div>
                    <div class="dz-right f-l">
                        <p>天安门</p>
                        <ul>
                            <li class="current"><a href="#">乌鲁木齐</a></li>
                            <li><a href="#">昌吉</a></li>
                            <li><a href="#">巴音</a></li>
                            <li><a href="#">郭楞</a></li>
                            <li><a href="#">伊犁</a></li>
                            <li><a href="#">阿克苏</a></li>
                            <li><a href="#">喀什</a></li>
                            <li><a href="#">哈密</a></li>
                            <li><a href="#">克拉玛依</a></li>
                            <li><a href="#">博尔塔拉</a></li>
                            <li><a href="#">吐鲁番</a></li>
                            <li><a href="#">和田</a></li>
                            <li><a href="#">石河子</a></li>
                            <li><a href="#">克孜勒苏</a></li>
                            <li><a href="#">阿拉尔</a></li>
                            <li><a href="#">五家渠</a></li>
                            <li><a href="#">图木舒克</a></li>
                            <li><a href="#">库尔勒</a></li>
                            <div style="clear:both;"></div>
                        </ul>
                    </div>
                    <div style="clear:both;"></div>
                </div>
                <div style="clear:both;"></div>
            </li>
            <li class="tc-li1">
                <p class="l-p">详细地址<span>*</span></p>
                <textarea class="textarea1" placeholder="请如实填写您的详细信息，如街道名称、门牌号、楼层号和房间号。"></textarea>
                <div style="clear:both;"></div>
            </li>
            <li class="tc-li1">
                <p class="l-p">邮政编码<span></span></p>
                <input type="text"/>
                <div style="clear:both;"></div>
            </li>
            <li class="tc-li1">
                <p class="l-p">收货人姓名<span>*</span></p>
                <input type="text" class="shxm"/>
                <div style="clear:both;"></div>
            </li>
            <li class="tc-li1">
                <p class="l-p">联系电话<span>*</span></p>
                <input type="text" class="lxdh"/>
                <div style="clear:both;"></div>
            </li>
        </ul>
        <button class="btn-pst2">保存</button>
    </div>
</div>
</body>
</html>
