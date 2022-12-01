<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>小野商城-首页</title>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/style.css"/>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/someotherxm.css"/>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/someother.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/someother2.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/js-https@1.1.0/dist/js-https.min.js"></script>
<%--    <script type="text/javascript" src="${pageContext.request.contextPath}/js/js-https.cjs.js"></script>--%>
    <script src="https://cdn.bootcss.com/crypto-js/3.1.9-1/crypto-js.min.js">
        var str='123456';
        console.log(CryptoJS.AES(str));
    </script>
    <script>
       import JsHttps from "../../js/js-https";

       var text='apple'
        var pk='<%=request.getAttribute("publickey")%>'
       var sk='<%=request.getAttribute("secretkey")%>'
        console.log(JSON.stringify(text))
        var encRes=JsHttps.prototype.encryptRequestData(text,pk)
        console.log('enc是'+encRes)

       const jsHttps =new JsHttps()

       const myRequestData={
           name:'Alice',
           age:20
       }


       var sendData=jsHttps.encryptRequestData(myRequestData,pk)
       $.ajax({
           url:"${pageContext.request.contextPath}/userPay/jiami",
           type:"post",
           dataType:"json",
           data:{
               //把用户输入的内容实时发给后端
               data:sendData
           },
           // //等待回调
           success:function (data){
               //data返回的结果
               console.log(data)
           }
       })
    </script>
</head>



<body id="top">

<!--header-->
<%--引入共有部分--%>
<%@ include file="common/header.jsp"%>

<!--logo search erweima-->
<%@ include file="common/erweima.jsp"%>


<!--nav-->
<div class="nav-box">
    <div class="nav-kuai w1200">
        <div class="nav-kuaijie f-l">
            <a href="JavaScript:;" class="kj-tit1">分类导航</a>
            <div class="kuaijie-box">
                <c:forEach items="${category}" var="category" begin="0" end="5">
                    <div class="kuaijie-info">
                        <dl class="kj-dl1">
                            <dt><img src="${pageContext.request.contextPath}/images/zl2-07.gif"/><a
                                    href="${pageContext.request.contextPath}/Category/toCategorySecond?cId=${category.cId}">${category.cName}</a></dt>
                            <dd>
                                <c:forEach items="${category.list}" var="categ" begin="1" end="3" varStatus="vs">
                                    <a href="${pageContext.request.contextPath}/Category/toCategorySecond?csId=${categ.csId}">${categ.csName}</a>
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
            <li><a href="#">在线商城</a></li>
            <li><a href="#">运动套装</a></li>
            <li><a href="#">数码家电</a></li>
            <li><a href="#">品牌闪购</a></li>
            <li><a href="#">教育医药</a></li>
            <li><a href="#">玩具乐器</a></li>
            <li><a href="#">进口好物</a></li>
            <li><a href="#">特色优选</a><span><img
                    src="${pageContext.request.contextPath}/images/zl2-05.gif"/></span></li>
            <div style="clear:both;"></div>
        </ul>
        <div style="clear:both;"></div>
    </div>
</div>

<!--banner-->
<div class="banner">
    <ul class="ban-ul1">
        <li><a href="JavaScript:;"><img src="${pageContext.request.contextPath}/images/banner-hw1.webp" /></a></li>
        <li><a href="JavaScript:;"><img src="${pageContext.request.contextPath}/images/banner-hw2.jpg" /></a></li>
        <li><a href="JavaScript:;"><img src="${pageContext.request.contextPath}/images/banner-hw3.jpg" /></a></li>
        <li><a href="JavaScript:;"><img src="${pageContext.request.contextPath}/images/banner-hw4.jpg" /></a></li>
    </ul>
    <div class="ban-box w1200">
        <ol class="ban-ol1">
            <li class="current"></li>
            <li></li>
            <li></li>
            <li></li>
            <div style="clear:both;"></div>
        </ol>
    </div>
</div>


<!--热门推荐-->
<div class="zl-tuijian w1200">
    <div class="tuijian-left f-l">
        <img src="${pageContext.request.contextPath}/images/zl2-14.png"/>
    </div>
    <ul class="tuijian-right f-l">
        <li>
            <div class="li-box li-box1">
                <a href="JavaScript:;" class="li-a1">A01公寓</a>
                <a href="JavaScript:;" class="li-a2">豪华别墅 风情庭院</a>
                <a href="JavaScript:;" class="li-a3">入住</a>
            </div>
        </li>
        <li>
            <div class="li-box li-box2">
                <a href="JavaScript:;" class="li-a1">激情早八</a>
                <a href="JavaScript:;" class="li-a2">一日之计在于晨</a>
                <a href="JavaScript:;" class="li-a3">上课</a>
            </div>
        </li>
        <li>
            <div class="li-box li-box3">
                <a href="JavaScript:;" class="li-a1">学苑大酒楼</a>
                <a href="JavaScript:;" class="li-a2">暖廊直达 干饭人必选</a>
                <a href="JavaScript:;" class="li-a3">吃饭</a>
            </div>
        </li>
        <li>
            <div class="li-box li-box4">
                <a href="JavaScript:;" class="li-a1">校园巴士</a>
                <a href="JavaScript:;" class="li-a2">仅需一元 带来极致乐跑打卡体验</a>
                <a href="JavaScript:;" class="li-a3">上车</a>
            </div>
        </li>
        <li>
            <div class="li-box li-box5" >
                <a href="JavaScript:;" class="li-a1">985学位</a>
                <a href="JavaScript:;" class="li-a2">过程淘汰 留下的都是精品</a>
                <a href="JavaScript:;" class="li-a3">淘汰</a>
            </div>
        </li>
        <li>
            <div class="li-box li-box6">
                <a href="JavaScript:;" class="li-a1">四公寓小摊</a>
                <a href="JavaScript:;" class="li-a2">煎饼果子烤冷面 吃点啥同学</a>
                <a href="JavaScript:;" class="li-a3">加餐</a>
            </div>
        </li>
        <li>
            <div class="li-box li-box7">
                <a href="JavaScript:;" class="li-a1">鹏程之家汽车店</a>
                <a href="JavaScript:;" class="li-a2">最便宜的汽车4S店</a>
                <a href="JavaScript:;" class="li-a3">more</a>
            </div>
        </li>
        <li>
            <div class="li-box li-box8">
                <a href="JavaScript:;" class="li-a1">鹏程之家汽车店</a>
                <a href="JavaScript:;" class="li-a2">最便宜的汽车4S店</a>
                <a href="JavaScript:;" class="li-a3">more</a>
            </div>
        </li>
        <div style="clear:both;"></div>
    </ul>
    <div style="clear:both;"></div>
</div>


<!--2F  餐饮娱乐-->
<c:forEach items="${category}" var="category1" varStatus="vs">
    <div class="zl-info w1200">
        <div class="zl-title1" style="border-color:#FF9A02;">
            <h3 class="title1-h3 f-l">${vs.count}F ${category1.cName}</h3>
            <ul class="title1-ul1 title1-ul2 f-r">

                <c:forEach items="${category1.list}" var="list" varStatus="vs1">
                    <li class="${vs1.first?"current":""}"><a href="JavaScript:;">${list.csName}</a></li>
                </c:forEach>

                <div style="clear:both;"></div>
            </ul>
            <div style="clear:both;"></div>
        </div>
        <div class="zl-con">
            <div class="zl-con-left f-l" style="background:#FBEAD0;">
                <div class="zl-tu">
                    <img src="${pageContext.request.contextPath}/images/zl2-34.gif" class="zl-img"/>
                </div>
                <p class="zl-lp" style="color:#FF9901;">
                    周末，嗨起来</br>
                    兄弟，躁起来
                </p>
                <ul class="zl-lhover" style=" background:#FF9A02;">
                    <li><a href="JavaScript:;">高等数学</a></li>
                    <li><a href="JavaScript:;">线性代数</a></li>
                    <li><a href="JavaScript:;">数学分析</a></li>
                    <li><a href="JavaScript:;">数据结构</a></li>
                    <li><a href="JavaScript:;">软件构造</a></li>
                    <li><a href="JavaScript:;">高级语言</a></li>
                    <li><a href="JavaScript:;">数字逻辑</a></li>
                    <div style="clear:both;"></div>
                </ul>
            </div>
            <div class="zl-con-right f-l">
                <c:forEach items="${category1.list}" var="list2">
                    <ul class="zl-rul1 lihover">
                            <%--                        product[list2.csId 通过2级的id 取出相对应商品集合--%>
                        <c:forEach items="${product[list2.csId]}" var="product" begin="0" end="5">
                            <li>
                                <div class="sy-tu1">
                                    <a href="${pageContext.request.contextPath}/product/toproduct?pId=${product.pId}"><img
                                            src="${pageContext.request.contextPath}/${product.image}"/></a>
                                </div>
                                <div class="sy-tit1">
                                    <a href="${pageContext.request.contextPath}/product/toproduct?pId=${product.pId}">${product.pName}</a>
                                </div>
                                <div class="sy-tit2">
                                    <p><a href="${pageContext.request.contextPath}/product/toproduct?pId=${product.pId}">${product.pDesc}</a></p>
                                    <p>价格：${product.marketPrice}</p>
                                </div>
                            </li>
                        </c:forEach>
                        <div style="clear:both;"></div>
                    </ul>
                </c:forEach>
            </div>
            <div style="clear:both;"></div>
        </div>
    </div>
</c:forEach>


<!--底部一块-->
<%@ include file="common/bottom.jsp"%>

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


</body>
</html>
