<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>搜索列表页(有品牌)</title>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/style.css"/>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/shopping-mall-index.css"/>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/someother.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/someother2.js"></script>
</head>

<body>
<%--面包屑--%>
<!--header-->
<%@ include file="common/header.jsp" %>

<!--logo search erweima-->
<%@ include file="common/erweima.jsp" %>

<!--nav-->
<div class="nav-box">
    <div class="nav-kuai w1200">
        <div class="nav-kuaijie yjp-hover1 f-l">
            <a href="JavaScript:;" class="kj-tit1">分类导航</a>
            <div class="kuaijie-box yjp-show1" style="display:none;">
                <c:forEach items="${category}" var="category" begin="0" end="5">
                    <div class="kuaijie-info">
                        <dl class="kj-dl1">
                            <dt><img src="${pageContext.request.contextPath}/images/zl2-07.gif"/><a
                                    href="搜索列表(有品牌).html">${category.cName}</a></dt>
                            <dd>
                                <c:forEach items="${category.list}" var="categ" begin="1" end="3" varStatus="vs">
                                    <a href="搜索列表(有品牌).html">${categ.csName}</a>
                                    <c:if test="${!vs.last}">
                                        <span>|</span>
                                    </c:if>
                                </c:forEach>
                            </dd>
                        </dl>
                        <div class="kuaijie-con">

                            <dl class="kj-dl2" style="display:inline-block">
                                <dt><a href="搜索列表(有品牌).html">${category.cName}</a></dt>

                                <dd>
                                    <c:forEach items="${category.list}" var="list1" varStatus="vs">
                                        <a href="搜索列表(有品牌).html">${list1.csName}</a>
                                        <c:if test="${!vs.last}">
                                            <span>|</span>
                                        </c:if>
                                    </c:forEach>
                                </dd>

                            </dl>

                            <div style="clear:both;"></div>
                        </div>
                    </div>
                </c:forEach>
            </div>
        </div>
        <ul class="nav-font f-l">
            <li><a href="在线商城首页.html">在线商城</a></li>
            <li><a href="餐饮娱乐首页.html">餐饮娱乐</a></li>
            <li><a href="家政服务首页.html">家政服务</a></li>
            <li><a href="美容美发首页.html">美容美发</a></li>
            <li><a href="教育培训首页.html">教育培训</a></li>
            <li><a href="汽车房产首页.html">汽车房产</a></li>
            <li><a href="家居建材首页.html">家居建材</a></li>
            <li><a href="二手市场首页.html">二手市场</a><span><img
                    src="${pageContext.request.contextPath}/images/zl2-05.gif"/></span></li>
            <div style="clear:both;"></div>
        </ul>
        <div style="clear:both;"></div>
    </div>
</div>

<%--    <c:forEach items="${category}" var="categors">--%>
<%--        <c:if test="${category.cId==categorySecond.cId}">--%>
<%--            <c:set var="cName" value="${category.cName}"></c:set>--%>
<%--        </c:if>--%>

<%--        <c:forEach items="${categors.list}" var="list">--%>
<%--            <c:if test="${list.csId==categorySecond.csId}">--%>
<%--                <c:set var="csName" value="${list.csName}"></c:set>--%>
<%--                <c:set var="cName" value="${category.cName}"></c:set>--%>
<%--            </c:if>--%>
<%--        </c:forEach>--%>
<%--    </c:forEach>--%>

<c:forEach items="${category}" var="categ">
    <c:if test="${categ.cId==categorySecond.cId}">
        <c:set var="cName" value="${categ.cName}"></c:set>
    </c:if>

    <c:forEach items="${categ.list}" var="list">
        <c:if test="${list.csId==categorySecond.csId}">
            <c:set var="csName" value="${list.csName}"></c:set>
            <c:set var="cName" value="${categ.cName}"></c:set>
        </c:if>
    </c:forEach>
</c:forEach>

<!--内容开始-->
<!--筛选结果-->
<div class="screening-results w1200">
    <p class="tiao">找到共 ${categorySecond.pageCount} 条</p>
    <div class="results">
        <p class="re-p1 f-l">
            全部结果：${cName} : ${csName}

        </p>


    </div>
</div>
<!--品牌-->
<div class="hover-brand">
    <p class="ho-pingpai f-l">品牌</p>
    <ul class="f-l">
        <li><a href="#"><img src="${pageContext.request.contextPath}/images/hover-br-li-tu1.gif"/></a></li>
        <li><a href="#"><img src="${pageContext.request.contextPath}/images/hover-br-li-tu2.gif"/></a></li>
        <li><a href="#"><img src="${pageContext.request.contextPath}/images/hover-br-li-tu3.gif"/></a></li>
        <li><a href="#"><img src="${pageContext.request.contextPath}/images/hover-br-li-tu4.gif"/></a></li>
        <li><a href="#"><img src="${pageContext.request.contextPath}/images/hover-br-li-tu5.gif"/></a></li>
        <li><a href="#"><img src="${pageContext.request.contextPath}/images/hover-br-li-tu6.gif"/></a></li>
        <li><a href="#"><img src="${pageContext.request.contextPath}/images/hover-br-li-tu7.gif"/></a></li>
        <li><a href="#"><img src="${pageContext.request.contextPath}/images/hover-br-li-tu8.gif"/></a></li>
        <li><a href="#"><img src="${pageContext.request.contextPath}/images/hover-br-li-tu9.gif"/></a></li>
        <li><a href="#"><img src="${pageContext.request.contextPath}/images/hover-br-li-tu10.gif"/></a></li>
        <li><a href="#"><img src="${pageContext.request.contextPath}/images/hover-br-li-tu11.gif"/></a></li>
        <li><a href="#"><img src="${pageContext.request.contextPath}/images/hover-br-li-tu12.gif"/></a></li>
        <li><a href="#"><img src="${pageContext.request.contextPath}/images/hover-br-li-tu13.gif"/></a></li>
        <li><a href="#"><img src="${pageContext.request.contextPath}/images/hover-br-li-tu14.gif"/></a></li>
        <li><a href="#"><img src="${pageContext.request.contextPath}/images/hover-br-li-tu15.gif"/></a></li>
        <li><a href="#"><img src="${pageContext.request.contextPath}/images/hover-br-li-tu16.gif"/></a></li>
        <li><a href="#"><img src="${pageContext.request.contextPath}/images/hover-br-li-tu17.gif"/></a></li>
        <li><a href="#"><img src="${pageContext.request.contextPath}/images/hover-br-li-tu18.gif"/></a></li>
        <div style="clear:both;"></div>
    </ul>
    <div class="duoxuan f-r">
        <button ppgd="">多选</button>
        <a href="JavaScript:;" ppgd="">更多 ∨</a>
    </div>
    <div style="clear:both;"></div>
</div>

<!--品牌 更多-->
<div class="re-brand">
    <div class="brand-top">
        <div class="br-t">
            <p class="pingpai f-l">品牌</p>
            <div class="br-abc f-l">
                <p class="moren f-l">默认</p>
                <ul class="f-l">
                    <li><a href="#">A</a></li>
                    <li><a href="#">B</a></li>
                    <li><a href="#">C</a></li>
                    <li><a href="#">D</a></li>
                    <li><a href="#">E</a></li>
                    <li><a href="#">F</a></li>
                    <li><a href="#">G</a></li>
                    <li><a href="#">H</a></li>
                    <li><a href="#">I</a></li>
                    <li><a href="#">J</a></li>
                    <li><a href="#">K</a></li>
                    <li><a href="#">L</a></li>
                    <li><a href="#">M</a></li>
                    <li><a href="#">N</a></li>
                    <li><a href="#">O</a></li>
                    <li><a href="#">P</a></li>
                    <li><a href="#">Q</a></li>
                    <li><a href="#">R</a></li>
                    <li><a href="#">S</a></li>
                    <li><a href="#">T</a></li>
                    <li><a href="#">U</a></li>
                    <li><a href="#">V</a></li>
                    <li><a href="#">W</a></li>
                    <li><a href="#">X</a></li>
                    <li><a href="#">Y</a></li>
                    <li><a href="#">Z</a></li>
                    <div style="clear:both;"></div>
                </ul>
                <a href="#" class="qita f-l">其他</a>
                <div style="clear:both;"></div>
            </div>
            <div style="clear:both;"></div>
        </div>
        <div class="br-b">
            <ul>
                <li>
                    <input type="checkbox" name="hobby"></input>
                    <span>小老板</span>
                </li>
                <li>
                    <input type="checkbox" name="hobby"></input>
                    <span>乐事/Lay's </span>
                </li>
                <li>
                    <input type="checkbox" name="hobby"></input>
                    <span>周黑鸭/ZHOU...</span>
                </li>
                <li>
                    <input type="checkbox" name="hobby"></input>
                    <span>喜之郎/STRONG</span>
                </li>
                <li>
                    <input type="checkbox" name="hobby"></input>
                    <span>费列罗/FERRERO</span>
                </li>
                <li>
                    <input type="checkbox" name="hobby"></input>
                    <span>好丽友/orion</span>
                </li>
                <li>
                    <input type="checkbox" name="hobby"></input>
                    <span>莱家/Loacker </span>
                </li>
                <li>
                    <input type="checkbox" name="hobby"></input>
                    <span>稻香村/dao...</span>
                </li>
                <li>
                    <input type="checkbox" name="hobby"></input>
                    <span>友臣/YOUCHEN</span>
                </li>
                <li>
                    <input type="checkbox" name="hobby"></input>
                    <span>好想你</span>
                </li>
                <li>
                    <input type="checkbox" name="hobby"></input>
                    <span>黄飞红/HUANG...</span>
                </li>
                <li>
                    <input type="checkbox" name="hobby"></input>
                    <span>可康/COCON</span>
                </li>
                <li>
                    <input type="checkbox" name="hobby"></input>
                    <span>张君雅</span>
                </li>
                <li>
                    <input type="checkbox" name="hobby"></input>
                    <span>德芙/Dove</span>
                </li>
                <li>
                    <input type="checkbox" name="hobby"></input>
                    <span>利奥/Oreo</span>
                </li>
                <li>
                    <input type="checkbox" name="hobby"></input>
                    <span>士力架/SNICKERS</span>
                </li>
                <li>
                    <input type="checkbox" name="hobby"></input>
                    <span>汉斯/Hunt's</span>
                </li>
                <li>
                    <input type="checkbox" name="hobby"></input>
                    <span>多力多滋</span>
                </li>
                <li>
                    <input type="checkbox" name="hobby"></input>
                    <span>百草味/Be ...</span>
                </li>
                <li>
                    <input type="checkbox" name="hobby"></input>
                    <span>丽芝士/Richeese</span>
                </li>
                <li>
                    <input type="checkbox" name="hobby"></input>
                    <span>百吉福/MILKANA</span>
                </li>
                <li>
                    <input type="checkbox" name="hobby"></input>
                    <span>利葡/LiPO</span>
                </li>
                <li>
                    <input type="checkbox" name="hobby"></input>
                    <span>友谊牌/Tipo</span>
                </li>
                <li>
                    <input type="checkbox" name="hobby"></input>
                    <span>百草味/Be ...</span>
                </li>
                <li>
                    <input type="checkbox" name="hobby"></input>
                    <span>丽芝士/Richeese</span>
                </li>
                <li>
                    <input type="checkbox" name="hobby"></input>
                    <span>百吉福/MILKANA</span>
                </li>
                <li>
                    <input type="checkbox" name="hobby"></input>
                    <span>利葡/LiPO</span>
                </li>
                <li>
                    <input type="checkbox" name="hobby"></input>
                    <span>友谊牌/Tipo</span>
                </li>
                <li>
                    <input type="checkbox" name="hobby"></input>
                    <span>百草味/Be ...</span>
                </li>
                <li>
                    <input type="checkbox" name="hobby"></input>
                    <span>丽芝士/Richeese</span>
                </li>
                <li>
                    <input type="checkbox" name="hobby"></input>
                    <span>百吉福/MILKANA</span>
                </li>
                <li>
                    <input type="checkbox" name="hobby"></input>
                    <span>利葡/LiPO</span>
                </li>
                <li>
                    <input type="checkbox" name="hobby"></input>
                    <span>友谊牌/Tipo</span>
                </li>
                <li>
                    <input type="checkbox" name="hobby"></input>
                    <span>百草味/Be ...</span>
                </li>
                <li>
                    <input type="checkbox" name="hobby"></input>
                    <span>丽芝士/Richeese</span>
                </li>
                <li>
                    <input type="checkbox" name="hobby"></input>
                    <span>百吉福/MILKANA</span>
                </li>
                <li>
                    <input type="checkbox" name="hobby"></input>
                    <span>利葡/LiPO</span>
                </li>
                <li>
                    <input type="checkbox" name="hobby"></input>
                    <span>友谊牌/Tipo</span>
                </li>
                <li>
                    <input type="checkbox" name="hobby"></input>
                    <span>百草味/Be ...</span>
                </li>
                <li>
                    <input type="checkbox" name="hobby"></input>
                    <span>丽芝士/Richeese</span>
                </li>
                <li>
                    <input type="checkbox" name="hobby"></input>
                    <span>百吉福/MILKANA</span>
                </li>
                <li>
                    <input type="checkbox" name="hobby"></input>
                    <span>利葡/LiPO</span>
                </li>
                <li>
                    <input type="checkbox" name="hobby"></input>
                    <span>友谊牌/Tipo</span>
                </li>
                <li>
                    <input type="checkbox" name="hobby"></input>
                    <span>百草味/Be ...</span>
                </li>
                <li>
                    <input type="checkbox" name="hobby"></input>
                    <span>丽芝士/Richeese</span>
                </li>
                <li>
                    <input type="checkbox" name="hobby"></input>
                    <span>百吉福/MILKANA</span>
                </li>
                <li>
                    <input type="checkbox" name="hobby"></input>
                    <span>利葡/LiPO</span>
                </li>
                <li>
                    <input type="checkbox" name="hobby"></input>
                    <span>友谊牌/Tipo</span>
                </li>
                <div style="clear:both;"></div>
            </ul>
        </div>
    </div>
    <div class="brand-bt">
        <button>确定</button>
        <button class="quxiao" quxiao1="">取消</button>
    </div>
</div>

<!--品牌热销-->
<div class="brand-sales">
    <dl>
        <dt>本品牌热销</dt>
        <dd>
            <a href="#">坚果礼品</a>
            <a href="#">碧根果</a>
            <a href="#">松子</a>
            <a href="#">夏威夷果</a>
            <a href="#">核桃</a>
            <a href="#">葡萄干</a>
            <a href="#">花生</a>
            <a href="#">豆类制品</a>
            <a href="#">杏仁</a>
            <a href="#">枣类</a>
            <a href="#">瓜子</a>
            <a href="#">其他坚果</a><a href="#">坚果礼品</a>
            <a href="#">碧根果</a>
            <a href="#">松子</a>
            <a href="#">夏威夷果</a>
            <a href="#">核桃</a>
            <a href="#">葡萄干</a>
            <a href="#">花生</a>
            <a href="#">豆类制品</a>
            <a href="#">杏仁</a>
            <a href="#">枣类</a>
            <a href="#">瓜子</a>
            <a href="#">其他坚果</a>
            <a href="#">坚果礼品</a>
            <a href="#">碧根果</a>
            <a href="#">松子</a>
            <a href="#">夏威夷果</a>
            <a href="#">核桃</a>
            <a href="#">葡萄干</a>
            <a href="#">花生</a>
            <a href="#">豆类制品</a>
            <a href="#">杏仁</a>
            <a href="#">枣类</a>
            <a href="#">瓜子</a>
            <a href="#">其他坚果</a>
            <a href="#">坚果礼品</a>
            <a href="#">碧根果</a>
            <a href="#">松子</a>
            <a href="#">夏威夷果</a>
            <a href="#">核桃</a>
            <a href="#">葡萄干</a>
            <a href="#">花生</a>
            <a href="#">豆类制品</a>
            <a href="#">杏仁</a>
            <a href="#">枣类</a>
            <a href="#">瓜子</a>
            <a href="#">其他坚果</a>
        </dd>
        <div style="clear:both;"></div>
    </dl>
    <dl style="border-bottom:none;">
        <dt>大家都在选</dt>
        <dd>
            <a href="#">坚果礼品</a>
            <a href="#">碧根果</a>
            <a href="#">松子</a>
            <a href="#">夏威夷果</a>
            <a href="#">核桃</a>
            <a href="#">葡萄干</a>
            <a href="#">花生</a>
            <a href="#">豆类制品</a>
            <a href="#">杏仁</a>
            <a href="#">枣类</a>
            <a href="#">瓜子</a>
            <a href="#">其他坚果</a>
        </dd>
        <div style="clear:both;"></div>
    </dl>
</div>

<!--内容↓↑-->
<div class="shop-page-con w1200">
    <div class="shop-pg-left f-l" style="width:215px">
        <div class="shop-left-buttom" style="margin-top:0;">
            <div class="sp-tit1">
                <h3>商品推荐</h3>
            </div>
            <ul class="shop-left-ul">
                <c:forEach items="${productList}" var="productlist">
                    <li>
                        <div class="li-top">
                            <a href="#" class="li-top-tu"><img
                                    src="${pageContext.request.contextPath}/${productlist.image}"
                                    style="width: 95px;height: 100px"/></a>
                            <p class="jiage"><span class="sp1">￥${productlist.shopPrice}</span><span
                                    class="sp2">￥${productlist.marketPrice}</span></p>
                        </div>
                        <p class="miaoshu">${productlist.pName}</p>
                        <div class="li-md">
                            <div class="md-l f-l">
                                <p class="md-l-l f-l" ap="">1</p>
                                <div class="md-l-r f-l">
                                    <a href="JavaScript:;" class="md-xs" at="">+</a>
                                    <a href="JavaScript:;" class="md-xx" ab="">-</a>
                                </div>
                                <div style="clear:both;"></div>
                            </div>
                            <div class="md-r f-l">
                                <button class="md-l-btn1">立即购买</button>
                                <button class="md-l-btn2">加入购物车</button>
                            </div>
                            <div style="clear:both;"></div>
                        </div>
                        <p class="pingjia">88888评价</p>
                        <p class="weike">商城自营</p>
                    </li>
                </c:forEach>
            </ul>
        </div>
    </div>
    <div class="shop-pg-right f-r">
        <div class="shop-right-cmp" style="margin-top:0;">
            <ul class="shop-cmp-l f-l">
                <li class="current"><a href="#">综合 ↓</a></li>
                <li><a href="#">销量 ↓</a></li>
                <li><a href="#">新品 ↓</a></li>
                <li><a href="#">评价 ↓</a></li>
                <div style="clear:both;"></div>
            </ul>
            <div class="shop-cmp-m f-l">
                <span>价格</span><input type="text"/><span>-</span><input type="text"/>
            </div>
            <div class="shop-cmp-r f-l">
                <ul class="f-l">
                    <li>
                        <input type="checkbox" name="hobby" value=""></input>
                        <span>包邮</span>
                    </li>
                    <li>
                        <input type="checkbox" name="hobby" value=""></input>
                        <span>进口</span>
                    </li>
                    <li>
                        <input type="checkbox" name="hobby" value=""></input>
                        <span>仅显示有货</span>
                    </li>
                    <li>
                        <input type="checkbox" name="hobby" value=""></input>
                        <span>满赠</span>
                    </li>
                    <li>
                        <input type="checkbox" name="hobby" value=""></input>
                        <span>满减</span>
                    </li>
                    <div style="clear:both;"></div>
                </ul>
                <button>确定</button>
            </div>
            <div style="clear:both;"></div>
        </div>
        <div class="shop-right-con">
            <ul class="shop-ul-tu shop-ul-tu1">

                <c:forEach items="${categorySecond.list}" var="list">
                    <li style="margin-right:0;">
                        <div class="li-top">
                            <a href="${pageContext.request.contextPath}/product/toproduct?pId=${list.pId}"
                               class="li-top-tu"><img
                                    src="${pageContext.request.contextPath}/${list.image}"
                                    style="width: 95px;height: 110px"/></a>
                            <p class="jiage"><span class="sp1">￥${list.shopPrice}</span><span
                                    class="sp2">￥${list.marketPrice}</span></p>
                        </div>
                        <p class="miaoshu">${list.pName}</p>
                        <div class="li-md">
                            <div class="md-l f-l">
                                <p class="md-l-l f-l" ap="" id="p${list.pId}">1</p>
                                <div class="md-l-r f-l">
                                    <a href="JavaScript:;" class="md-xs" at="">∧</a>
                                    <a href="JavaScript:;" class="md-xx" ab="">∨</a>
                                </div>
                                <div style="clear:both;"></div>
                            </div>
                            <div class="md-r f-l">
                                <button class="md-l-btn1" onclick="window.location.href='${pageContext.request.contextPath}/order/toverify1?pId=${list.pId}'">立即购买</button>
                                <button class="md-l-btn2" onclick="add(${list.pId})">加入购物车</button>
                            </div>

                            <script>

                                function add(pId) {//pId=544
                                    var count = $("#p" + pId).text();
                                    $.ajax({
                                        url: "${pageContext.request.contextPath}/cart/tocart",
                                        data: {
                                            pId: pId,
                                            count: count,
                                        },
                                        success: function (data) {
                                            if(data=="ok"){
                                                alert("添加成功")
                                            }else {
                                                //没登录
                                                window.location.href="${pageContext.request.contextPath}/user/tologin";
                                            }
                                        }
                                    })

                                }

                            </script>

                            <div style="clear:both;"></div>
                        </div>
                        <p class="pingjia">88888评价</p>
                        <p class="weike">商城自营</p>
                    </li>
                </c:forEach>

                <div style="clear:both;"></div>
            </ul>

            <!--分页-->
            <div class="paging">
                <div class="pag-left f-l">
                    <c:if test="${categorySecond.pageNow>1}">
                        <a href="${pageContext.request.contextPath}/Category/toCategorySecond?pageNow=${categorySecond.pageNow-1}"
                           class="about left-r f-l"><</a>
                    </c:if>

                    <ul class="left-m f-l">

                        <c:forEach items="${categorySecond.arr}" var="arr">
                            <li class="${arr==categorySecond.pageNow?"current":""}"><a
                                    href="${pageContext.request.contextPath}/Category/toCategorySecond?pageNow=${arr}&pName=${categorySecond.pName}&cId=${categorySecond.cId}&csId=${categorySecond.csId}">${arr}</a>
                            </li>
                        </c:forEach>


                        <div style="clear:both;"></div>
                    </ul>
                    <c:if test="${categorySecond.pageNow<categorySecond.rowCount}">
                        <a href="${pageContext.request.contextPath}/Category/toCategorySecond?pageNow=${categorySecond.pageNow+1}"
                           class="about left-r f-l"> > </a>
                    </c:if>


                    <div style="clear:both;"></div>
                </div>
                <div class="pag-right f-l">
                    <div class="jump-page f-l">
                        到第<input type="text"/>页
                    </div>
                    <button class="f-l">确定</button>
                    <div style="clear:both;"></div>
                </div>
                <div style="clear:both;"></div>
            </div>
        </div>
    </div>
    <div style="clear:both;"></div>
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
