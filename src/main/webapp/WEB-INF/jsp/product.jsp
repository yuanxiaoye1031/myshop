<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>商品详情</title>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/style.css" />
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/shopping-mall-index.css" />
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/someother.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/someother2.js"></script>
</head>

<body style="position:relative;">
	<%@ include file="common/header.jsp"%>

    <%@include file="common/erweima.jsp"%>
	<!--nav-->
    <div class="nav-box">
    	<div class="nav-kuai w1200">
        	<div class="nav-kuaijie yjp-hover1 f-l">
            	<a href="JavaScript:;" class="kj-tit1">分类导航</a>
                <div class="kuaijie-box yjp-show1" style="display:none;">
                	<div class="kuaijie-info">
                    	<dl class="kj-dl1">
                        	<dt><img src="${pageContext.request.contextPath}/images/zl2-07.gif" /><a href="搜索列表(有品牌).html">食品/饮料/酒水</a></dt>
                            <dd>
                            	<a href="搜索列表(有品牌).html">饼干糕点</a><span>|</span>
                            	<a href="搜索列表(有品牌).html">冲调保健</a><span>|</span>
                            	<a href="搜索列表(有品牌).html">酒水</a>
                            </dd>
                        </dl>
                        <div class="kuaijie-con">
                        	<dl class="kj-dl2">
                            	<dt><a href="搜索列表(有品牌).html">洗浴用品/身体护理</a></dt>
                                <dd>
                                   	<a href="搜索列表(有品牌).html">护手霜</a><span>|</span>
                                    <a href="搜索列表(有品牌).html">香皂</a><span>|</span>
                                    <a href="搜索列表(有品牌).html">沐浴露</a><span>|</span>
                                    <a href="搜索列表(有品牌).html">花露水</a><span>|</span>
                                    <a href="搜索列表(有品牌).html">泡浴/盐浴</a><span>|</span>
                                    <a href="搜索列表(有品牌).html">洗手液</a>
                                </dd>
                            </dl>
                            <div style="clear:both;"></div>
                        </div>
                    </div>
                	<div class="kuaijie-info">
                    	<dl class="kj-dl1">
                        	<dt><img src="${pageContext.request.contextPath}/images/zl2-08.gif" /><a href="搜索列表(有品牌).html">粮油副食</a></dt>
                            <dd>
                            	<a href="搜索列表(有品牌).html">厨房调味</a><span>|</span>
                            	<a href="搜索列表(有品牌).html">大米/面粉</a><span>|</span>
                            	<a href="搜索列表(有品牌).html">方便速食</a>
                            </dd>
                        </dl>
                        <div class="kuaijie-con">
                        	<dl class="kj-dl2">
                            	<dt><a href="搜索列表(有品牌).html">洗浴用品/身体护理</a></dt>
                                <dd>
                                   	<a href="搜索列表(有品牌).html">护手霜</a><span>|</span>
                                    <a href="搜索列表(有品牌).html">香皂</a><span>|</span>
                                    <a href="搜索列表(有品牌).html">沐浴露</a><span>|</span>
                                    <a href="搜索列表(有品牌).html">花露水</a><span>|</span>
                                    <a href="搜索列表(有品牌).html">泡浴/盐浴</a><span>|</span>
                                    <a href="搜索列表(有品牌).html">洗手液</a>
                                </dd>
                            </dl>
                        	<dl class="kj-dl2">
                            	<dt><a href="搜索列表(有品牌).html">洗浴用品/身体护理</a></dt>
                                <dd>
                                   	<a href="搜索列表(有品牌).html">护手霜</a><span>|</span>
                                    <a href="搜索列表(有品牌).html">香皂</a><span>|</span>
                                    <a href="搜索列表(有品牌).html">沐浴露</a><span>|</span>
                                    <a href="搜索列表(有品牌).html">花露水</a><span>|</span>
                                    <a href="搜索列表(有品牌).html">泡浴/盐浴</a><span>|</span>
                                    <a href="搜索列表(有品牌).html">洗手液</a>
                                </dd>
                            </dl>
                            <div style="clear:both;"></div>
                        </div>
                    </div>
                	<div class="kuaijie-info">
                    	<dl class="kj-dl1">
                        	<dt><img src="${pageContext.request.contextPath}/images/zl2-09.gif" /><a href="搜索列表(有品牌).html">家庭清洁</a></dt>
                            <dd>
                            	<a href="搜索列表(有品牌).html">厨房清洁</a><span>|</span>
                            	<a href="搜索列表(有品牌).html">纸品湿巾</a><span>|</span>
                            	<a href="搜索列表(有品牌).html">家私</a>
                            </dd>
                        </dl>
                        <div class="kuaijie-con">
                        	<dl class="kj-dl2">
                            	<dt><a href="搜索列表(有品牌).html">洗浴用品/身体护理</a></dt>
                                <dd>
                                   	<a href="搜索列表(有品牌).html">护手霜</a><span>|</span>
                                    <a href="搜索列表(有品牌).html">香皂</a><span>|</span>
                                    <a href="搜索列表(有品牌).html">沐浴露</a><span>|</span>
                                    <a href="搜索列表(有品牌).html">花露水</a><span>|</span>
                                    <a href="搜索列表(有品牌).html">泡浴/盐浴</a><span>|</span>
                                    <a href="搜索列表(有品牌).html">洗手液</a>
                                </dd>
                            </dl>
                            <dl class="kj-dl2">
                            	<dt><a href="搜索列表(有品牌).html">洗浴用品/身体护理</a></dt>
                                <dd>
                                   	<a href="搜索列表(有品牌).html">护手霜</a><span>|</span>
                                    <a href="搜索列表(有品牌).html">香皂</a><span>|</span>
                                    <a href="搜索列表(有品牌).html">沐浴露</a><span>|</span>
                                    <a href="搜索列表(有品牌).html">花露水</a><span>|</span>
                                    <a href="搜索列表(有品牌).html">泡浴/盐浴</a><span>|</span>
                                    <a href="搜索列表(有品牌).html">洗手液</a>
                                </dd>
                            </dl>
                            <dl class="kj-dl2">
                            	<dt><a href="搜索列表(有品牌).html">洗浴用品/身体护理</a></dt>
                                <dd>
                                   	<a href="搜索列表(有品牌).html">护手霜</a><span>|</span>
                                    <a href="搜索列表(有品牌).html">香皂</a><span>|</span>
                                    <a href="搜索列表(有品牌).html">沐浴露</a><span>|</span>
                                    <a href="搜索列表(有品牌).html">花露水</a><span>|</span>
                                    <a href="搜索列表(有品牌).html">泡浴/盐浴</a><span>|</span>
                                    <a href="搜索列表(有品牌).html">洗手液</a>
                                </dd>
                            </dl>
                            <div style="clear:both;"></div>
                        </div>
                    </div>
                	<div class="kuaijie-info">
                    	<dl class="kj-dl1">
                        	<dt><img src="${pageContext.request.contextPath}/images/zl2-10.gif" /><a href="搜索列表(有品牌).html">美妆洗护/个人护理</a></dt>
                            <dd>
                            	<a href="搜索列表(有品牌).html">洗浴用品/身体护理</a><span>|</span>
                            	<a href="搜索列表(有品牌).html">洗发护发</a>
                            </dd>
                        </dl>
                        <div class="kuaijie-con">
                        	<dl class="kj-dl2">
                            	<dt><a href="搜索列表(有品牌).html">洗浴用品/身体护理</a></dt>
                                <dd>
                                   	<a href="搜索列表(有品牌).html">护手霜</a><span>|</span>
                                    <a href="搜索列表(有品牌).html">香皂</a><span>|</span>
                                    <a href="搜索列表(有品牌).html">沐浴露</a><span>|</span>
                                    <a href="搜索列表(有品牌).html">花露水</a><span>|</span>
                                    <a href="搜索列表(有品牌).html">泡浴/盐浴</a><span>|</span>
                                    <a href="搜索列表(有品牌).html">洗手液</a>
                                </dd>
                            </dl>
                            <dl class="kj-dl2">
                            	<dt><a href="搜索列表(有品牌).html">洗浴用品/身体护理</a></dt>
                                <dd>
                                   	<a href="搜索列表(有品牌).html">护手霜</a><span>|</span>
                                    <a href="搜索列表(有品牌).html">香皂</a><span>|</span>
                                    <a href="搜索列表(有品牌).html">沐浴露</a><span>|</span>
                                    <a href="搜索列表(有品牌).html">花露水</a><span>|</span>
                                    <a href="搜索列表(有品牌).html">泡浴/盐浴</a><span>|</span>
                                    <a href="搜索列表(有品牌).html">洗手液</a>
                                </dd>
                            </dl>
                            <dl class="kj-dl2">
                            	<dt><a href="搜索列表(有品牌).html">洗浴用品/身体护理</a></dt>
                                <dd>
                                   	<a href="搜索列表(有品牌).html">护手霜</a><span>|</span>
                                    <a href="搜索列表(有品牌).html">香皂</a><span>|</span>
                                    <a href="搜索列表(有品牌).html">沐浴露</a><span>|</span>
                                    <a href="搜索列表(有品牌).html">花露水</a><span>|</span>
                                    <a href="搜索列表(有品牌).html">泡浴/盐浴</a><span>|</span>
                                    <a href="搜索列表(有品牌).html">洗手液</a>
                                </dd>
                            </dl>
                            <dl class="kj-dl2">
                            	<dt><a href="搜索列表(有品牌).html">洗浴用品/身体护理</a></dt>
                                <dd>
                                   	<a href="搜索列表(有品牌).html">护手霜</a><span>|</span>
                                    <a href="搜索列表(有品牌).html">香皂</a><span>|</span>
                                    <a href="搜索列表(有品牌).html">沐浴露</a><span>|</span>
                                    <a href="搜索列表(有品牌).html">花露水</a><span>|</span>
                                    <a href="搜索列表(有品牌).html">泡浴/盐浴</a><span>|</span>
                                    <a href="搜索列表(有品牌).html">洗手液</a>
                                </dd>
                            </dl>
                            <div style="clear:both;"></div>
                        </div>
                    </div>
                	<div class="kuaijie-info">
                    	<dl class="kj-dl1">
                        	<dt><img src="${pageContext.request.contextPath}/images/zl2-11.gif" /><a href="搜索列表(有品牌).html">母婴用品/玩具</a></dt>
                            <dd>
                            	<a href="搜索列表(有品牌).html">宝宝喂养/洗护清洁</a><span>|</span>
                            	<a href="搜索列表(有品牌).html">玩具</a><span>|</span>
                            	<a href="搜索列表(有品牌).html">奶粉/辅食</a>
                            </dd>
                        </dl>
                        <div class="kuaijie-con">
                        	<dl class="kj-dl2">
                            	<dt><a href="搜索列表(有品牌).html">洗浴用品/身体护理</a></dt>
                                <dd>
                                   	<a href="搜索列表(有品牌).html">护手霜</a><span>|</span>
                                    <a href="搜索列表(有品牌).html">香皂</a><span>|</span>
                                    <a href="搜索列表(有品牌).html">沐浴露</a><span>|</span>
                                    <a href="搜索列表(有品牌).html">花露水</a><span>|</span>
                                    <a href="搜索列表(有品牌).html">泡浴/盐浴</a><span>|</span>
                                    <a href="搜索列表(有品牌).html">洗手液</a>
                                </dd>
                            </dl>
                            <dl class="kj-dl2">
                            	<dt><a href="搜索列表(有品牌).html">洗浴用品/身体护理</a></dt>
                                <dd>
                                   	<a href="搜索列表(有品牌).html">护手霜</a><span>|</span>
                                    <a href="搜索列表(有品牌).html">香皂</a><span>|</span>
                                    <a href="搜索列表(有品牌).html">沐浴露</a><span>|</span>
                                    <a href="搜索列表(有品牌).html">花露水</a><span>|</span>
                                    <a href="搜索列表(有品牌).html">泡浴/盐浴</a><span>|</span>
                                    <a href="搜索列表(有品牌).html">洗手液</a>
                                </dd>
                            </dl>
                            <dl class="kj-dl2">
                            	<dt><a href="搜索列表(有品牌).html">洗浴用品/身体护理</a></dt>
                                <dd>
                                   	<a href="搜索列表(有品牌).html">护手霜</a><span>|</span>
                                    <a href="搜索列表(有品牌).html">香皂</a><span>|</span>
                                    <a href="搜索列表(有品牌).html">沐浴露</a><span>|</span>
                                    <a href="搜索列表(有品牌).html">花露水</a><span>|</span>
                                    <a href="搜索列表(有品牌).html">泡浴/盐浴</a><span>|</span>
                                    <a href="搜索列表(有品牌).html">洗手液</a>
                                </dd>
                            </dl>
                            <dl class="kj-dl2">
                            	<dt><a href="搜索列表(有品牌).html">洗浴用品/身体护理</a></dt>
                                <dd>
                                   	<a href="搜索列表(有品牌).html">护手霜</a><span>|</span>
                                    <a href="搜索列表(有品牌).html">香皂</a><span>|</span>
                                    <a href="搜索列表(有品牌).html">沐浴露</a><span>|</span>
                                    <a href="搜索列表(有品牌).html">花露水</a><span>|</span>
                                    <a href="搜索列表(有品牌).html">泡浴/盐浴</a><span>|</span>
                                    <a href="搜索列表(有品牌).html">洗手液</a>
                                </dd>
                            </dl>
                            <dl class="kj-dl2">
                            	<dt><a href="搜索列表(有品牌).html">洗浴用品/身体护理</a></dt>
                                <dd>
                                   	<a href="搜索列表(有品牌).html">护手霜</a><span>|</span>
                                    <a href="搜索列表(有品牌).html">香皂</a><span>|</span>
                                    <a href="搜索列表(有品牌).html">沐浴露</a><span>|</span>
                                    <a href="搜索列表(有品牌).html">花露水</a><span>|</span>
                                    <a href="搜索列表(有品牌).html">泡浴/盐浴</a><span>|</span>
                                    <a href="搜索列表(有品牌).html">洗手液</a>
                                </dd>
                            </dl>
                            <div style="clear:both;"></div>
                        </div>
                    </div>
                	<div class="kuaijie-info">
                    	<dl class="kj-dl1">
                        	<dt><img src="${pageContext.request.contextPath}/images/zl2-12.gif" /><a href="搜索列表(有品牌).html">家居/家电</a></dt>
                        </dl>
                        <div class="kuaijie-con">
                        	<dl class="kj-dl2">
                            	<dt><a href="搜索列表(有品牌).html">洗浴用品/身体护理</a></dt>
                                <dd>
                                   	<a href="搜索列表(有品牌).html">护手霜</a><span>|</span>
                                    <a href="搜索列表(有品牌).html">香皂</a><span>|</span>
                                    <a href="搜索列表(有品牌).html">沐浴露</a><span>|</span>
                                    <a href="搜索列表(有品牌).html">花露水</a><span>|</span>
                                    <a href="搜索列表(有品牌).html">泡浴/盐浴</a><span>|</span>
                                    <a href="搜索列表(有品牌).html">洗手液</a>
                                </dd>
                            </dl>
                        	<dl class="kj-dl2">
                            	<dt><a href="搜索列表(有品牌).html">洗浴用品/身体护理</a></dt>
                                <dd>
                                   	<a href="搜索列表(有品牌).html">护手霜</a><span>|</span>
                                    <a href="搜索列表(有品牌).html">香皂</a><span>|</span>
                                    <a href="搜索列表(有品牌).html">沐浴露</a><span>|</span>
                                    <a href="搜索列表(有品牌).html">花露水</a><span>|</span>
                                    <a href="搜索列表(有品牌).html">泡浴/盐浴</a><span>|</span>
                                    <a href="搜索列表(有品牌).html">洗手液</a>
                                </dd>
                            </dl>
                        	<dl class="kj-dl2">
                            	<dt><a href="搜索列表(有品牌).html">洗浴用品/身体护理</a></dt>
                                <dd>
                                   	<a href="搜索列表(有品牌).html">护手霜</a><span>|</span>
                                    <a href="搜索列表(有品牌).html">香皂</a><span>|</span>
                                    <a href="搜索列表(有品牌).html">沐浴露</a><span>|</span>
                                    <a href="搜索列表(有品牌).html">花露水</a><span>|</span>
                                    <a href="搜索列表(有品牌).html">泡浴/盐浴</a><span>|</span>
                                    <a href="搜索列表(有品牌).html">洗手液</a>
                                </dd>
                            </dl>
                        	<dl class="kj-dl2">
                            	<dt><a href="搜索列表(有品牌).html">洗浴用品/身体护理</a></dt>
                                <dd>
                                   	<a href="搜索列表(有品牌).html">护手霜</a><span>|</span>
                                    <a href="搜索列表(有品牌).html">香皂</a><span>|</span>
                                    <a href="搜索列表(有品牌).html">沐浴露</a><span>|</span>
                                    <a href="搜索列表(有品牌).html">花露水</a><span>|</span>
                                    <a href="搜索列表(有品牌).html">泡浴/盐浴</a><span>|</span>
                                    <a href="搜索列表(有品牌).html">洗手液</a>
                                </dd>
                            </dl>
                        	<dl class="kj-dl2">
                            	<dt><a href="搜索列表(有品牌).html">洗浴用品/身体护理</a></dt>
                                <dd>
                                   	<a href="搜索列表(有品牌).html">护手霜</a><span>|</span>
                                    <a href="搜索列表(有品牌).html">香皂</a><span>|</span>
                                    <a href="搜索列表(有品牌).html">沐浴露</a><span>|</span>
                                    <a href="搜索列表(有品牌).html">花露水</a><span>|</span>
                                    <a href="搜索列表(有品牌).html">泡浴/盐浴</a><span>|</span>
                                    <a href="搜索列表(有品牌).html">洗手液</a>
                                </dd>
                            </dl>
                        	<dl class="kj-dl2">
                            	<dt><a href="搜索列表(有品牌).html">洗浴用品/身体护理</a></dt>
                                <dd>
                                   	<a href="搜索列表(有品牌).html">护手霜</a><span>|</span>
                                    <a href="搜索列表(有品牌).html">香皂</a><span>|</span>
                                    <a href="搜索列表(有品牌).html">沐浴露</a><span>|</span>
                                    <a href="搜索列表(有品牌).html">花露水</a><span>|</span>
                                    <a href="搜索列表(有品牌).html">泡浴/盐浴</a><span>|</span>
                                    <a href="搜索列表(有品牌).html">洗手液</a>
                                </dd>
                            </dl>
                            <div style="clear:both;"></div>
                        </div>
                    </div>
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
            	<li><a href="二手市场首页.html">二手市场</a><span><img src="${pageContext.request.contextPath}/images/zl2-05.gif" /></span></li>
                <div style="clear:both;"></div>
            </ul>
            <div style="clear:both;"></div>
        </div>
    </div>
    
    <!--内容开始-->
    <div class="details w1200">
    	<div class="deta-info1">
        	<div class="dt-if1-l f-l">
            	<div class="dt-if1-datu">
                	<ul qie-da="">
                       <li><a href="#"><img  src="${pageContext.request.contextPath}/${product.image}" style="width: 359px;height: 361px"/></a></li>
                       <li><a href="#"><img  src="${pageContext.request.contextPath}/${product.image}" style="width: 359px;height: 361px"/></a></li>
                       <li><a href="#"><img  src="${pageContext.request.contextPath}/${product.image}" style="width: 359px;height: 361px"/></a></li>
                       <li><a href="#"><img  src="${pageContext.request.contextPath}/${product.image}" style="width: 359px;height: 361px"/></a></li>
                       <li><a href="#"><img  src="${pageContext.request.contextPath}/${product.image}" style="width: 359px;height: 361px"/></a></li>
                       <li><a href="#"><img  src="${pageContext.request.contextPath}/${product.image}" style="width: 359px;height: 361px"/></a></li>
                       <li><a href="#"><img  src="${pageContext.request.contextPath}/${product.image}" style="width: 359px;height: 361px"/></a></li>

                       <div style="clear:both;"></div>
                    </ul>
                </div>
                <div class="dt-if1-qietu">
                	<a class="dt-qie-left f-l" href="JavaScript:;"><img src="${pageContext.request.contextPath}/images/dt-if1-qietu-left.gif" /></a>
                    <div class="dt-qie-con f-l">
                    	<ul qie-xiao="">
                        	<li class="current"><a href="#"><img src="${pageContext.request.contextPath}/${product.image}" style="width: 60px;height: 60px"/></a></li>
                        	<li class="current"><a href="#"><img src="${pageContext.request.contextPath}/${product.image}" style="width: 60px;height: 60px"/></a></li>
                        	<li class="current"><a href="#"><img src="${pageContext.request.contextPath}/${product.image}" style="width: 60px;height: 60px"/></a></li>
                        	<li class="current"><a href="#"><img src="${pageContext.request.contextPath}/${product.image}" style="width: 60px;height: 60px"/></a></li>
                        	<li class="current"><a href="#"><img src="${pageContext.request.contextPath}/${product.image}" style="width: 60px;height: 60px"/></a></li>
                        	<li class="current"><a href="#"><img src="${pageContext.request.contextPath}/${product.image}" style="width: 60px;height: 60px"/></a></li>

            				<div style="clear:both;"></div>
                        </ul>
                    </div>
                	<a class="dt-qie-right f-r" href="JavaScript:;"><img src="${pageContext.request.contextPath}/images/dt-if1-qietu-right.gif" /></a>
                </div>
                <div class="dt-if1-fx">
                	<span>商品编码:128618586</span>
                    <p>分享到：<a href="#"><img src="${pageContext.request.contextPath}/images/dt-xl.gif" /></a><a href="#"><img src="${pageContext.request.contextPath}/images/dt-kj.gif" /></a><a href="#"><img src="${pageContext.request.contextPath}/images/dt-wx.gif" /></a></p>
                </div>
            </div>
            
        	<div class="dt-if1-m f-l">
            	<div class="dt-ifm-hd">
                	<h3><a href="#">${product.pName}</a></h3>
                	<p>${product.pDesc}</p>
                </div>
                <div class="dt-ifm-gojia">
                	<dl>
                    	<dt>宅购价</dt>
                        <dd>
                        	<p class="p1">
                               <span class="sp1">${product.shopPrice}</span><span class="sp2">${product.marketPrice}</span>
                            </p>
                            <p class="p2">
                            	<span class="sp1"><img src="${pageContext.request.contextPath}/images/dt-ifm-sp1-img.gif" />5分</span><span class="sp2">共有 2 条评价</span>
                            </p>
                        </dd>
                        <div style="clear:both;"></div>
                    </dl>
                </div>
                <dl class="dt-ifm-spot">
                	<dt>活动</dt>
                    <dd>
                    	<P><span>包邮</span>本店满50.00元免运费</P>
                    	<P><span>满赠</span>本店满500.00元赠300.00元礼品（随机赠送）</P>
                    </dd>
                    <div style="clear:both;"></div>
                </dl>
                <dl class="dt-ifm-box1">
                	<dt>配送时间</dt>
                    <dd>
                    	<select>
                        	<option>请选择配送日期</option>
                        	<option>2022-10-31</option>
                        	<option>2022-11-01</option>
                        </select>
                    	<select>
                        	<option>请选择配送时段</option>
                        	<option>上午</option>
                        	<option>下午</option>
                        </select>
                        <p>立即下单享受折扣哦！</p>
                    </dd>
                    <div style="clear:both;"></div>
                </dl>
                <dl class="dt-ifm-box2">
                	<dt>送至</dt>
                    <dd>
                    	<select>
                        	<option>哈工大   A01公寓</option>
                        	<option>哈工大   A03公寓</option>
                        	<option>哈工大   正心楼</option>
                            <option>哈工大   乐收</option>
                        </select>
                    	<span>请选择配送地址</span>
                    </dd>
                    <div style="clear:both;"></div>
                </dl>
                <dl class="dt-ifm-box3">
                	<dt>数量</dt>
                    <dd>
                    	<a class="box3-left" href="JavaScript:;">-</a>
                        <input type="text" value="1" id="p" readonly>
                    	<a class="box3-right1" href="JavaScript:;">+</a>
                    </dd>
                    <script>
                        $(function (){
                            $(".dt-ifm-box3 .box3-right1").click(function(event) {
                                var val = $(".dt-ifm-box3 input").val();
                                if(val>0 && val<10){
                                    val++;
                                }
                                $(".dt-ifm-box3 input").val(val);
                            });
                        })


                    </script>
                    <div style="clear:both;"></div>
                </dl>

                <script>
                    function add(pId) {
                        var count = $('#p').val();
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
                <div class="dt-ifm-box4">
                	<button class="btn1" onclick="window.location.href='${pageContext.request.contextPath}/order/toverify1?pId=${product.pId}'">立即购买</button>
<%--                	<button class="btn2">加入购物车</button>--%>
                    <button class="btn2" onclick="add(${product.pId})">加入购物车</button>
                	<button class="btn3">收藏</button>
                </div>
            </div>
            
        	<div class="dt-if1-r f-r">
            	<div class="dt-ifr-hd">
                	<div class="dt-ifr-tit">
                    	<h3>哈尔滨工业大学直营店</h3>
                    </div>
                    <ul class="dt-ifr-ul1">
                    	<li>
                        	<p class="p1">4.61 ↑</p>
                        	<p class="p2">商品评分</p>
                        </li>
                    	<li>
                        	<p class="p1">4.61 ↑</p>
                        	<p class="p2">商品评分</p>
                        </li>
                    	<li>
                        	<p class="p1">4.61 ↑</p>
                        	<p class="p2">商品评分</p>
                        </li>
            			<div style="clear:both;"></div>
                    </ul>
                    <div class="dt-ifr-tel">
                    	<p>地址：哈尔滨市南岗区西大直街92号 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;哈尔滨工业大学</p>
                        <p>TEL：400-820-8820</p>
                    </div>
                    <button class="dt-r-btn1">进入店铺</button>
                    <button class="dt-r-btn2">收藏店铺</button>
                </div>
                <div class="dt-ifr-fd">
                	<div class="dt-ifr-tit">
                    	<h3>同类推荐</h3>
                    </div>
                    <dl>
                    	<dt><a href="#"><img src="${pageContext.request.contextPath}/images/dt-ifr-fd-dt-tu.gif" /></a></dt>
                        <dd>
                        	<a href="#">【中央大街】马迭尔冰棍</a>
                            <p>¥9.90</p>
                        </dd>
                        <div style="clear:both;"></div>
                    </dl>
                    <dl>
                    	<dt><a href="#"><img src="${pageContext.request.contextPath}/images/dt-ifr-fd-dt-tu.gif" /></a></dt>
                        <dd>
                        	<a href="#">【秋林】原酿格瓦斯</a>
                            <p>¥9.90</p>
                        </dd>
                        <div style="clear:both;"></div>
                    </dl>
                </div>
            </div>
            <div style="clear:both;"></div>
        </div>
        
        <div class="deta-info2">
        	<div class="dt-if2-l f-l">
            	<div class="if2-l-box1">
                	<div class="if2-tit">
                    	<h3>浏览记录</h3>
                    </div>
                    <ul>
                    	<li>
                        	<a href="#"><img src="${pageContext.request.contextPath}/images/if2-l-box1-tu1.gif" /></a>
                            <a class="if2-li-tit" href="#">乐事Lay's 无限薯片（翡翠黄瓜味）104g/罐</a>
                            <p>¥6.90</p>
                        </li>
                        <li>
                        	<a href="#"><img src="${pageContext.request.contextPath}/images/if2-l-box1-tu1.gif" /></a>
                            <a class="if2-li-tit" href="#">乐事Lay's 无限薯片（经典原味）104g/罐</a>
                            <p>¥6.90</p>
                        </li>
                        <li style="border-bottom:0;">
                        	<a href="#"><img src="${pageContext.request.contextPath}/images/if2-l-box1-tu1.gif" /></a>
                            <a class="if2-li-tit" href="#">乐事Lay's 无限薯片（青柠味）104g/罐</a>
                            <p>¥6.90</p>
                        </li>
                    </ul>
                </div>
                <div class="if2-l-box1" style="margin-top:18px;">
                	<div class="if2-tit">
                    	<h3>看了又看</h3>
                    </div>
                    <ul>
                    	<li>
                        	<a href="#"><img src="${pageContext.request.contextPath}/images/if2-l-box1-tu1.gif" /></a>
                            <a class="if2-li-tit" href="#">乐事Lay's 无限薯片（翡翠黄瓜味）104g/罐</a>
                            <p>¥6.90</p>
                        </li>
                        <li>
                        	<a href="#"><img src="${pageContext.request.contextPath}/images/if2-l-box1-tu1.gif" /></a>
                            <a class="if2-li-tit" href="#">乐事Lay's 无限薯片（经典原味）104g/罐</a>
                            <p>¥6.90</p>
                        </li>
                        <li style="border-bottom:0;">
                        	<a href="#"><img src="${pageContext.request.contextPath}/images/if2-l-box1-tu1.gif" /></a>
                            <a class="if2-li-tit" href="#">乐事Lay's 无限薯片（青柠味）104g/罐</a>
                            <p>¥6.90</p>
                        </li>
                    </ul>
                </div>
            </div>
            <div class="dt-if2-r f-r">
                <ul class="if2-tit2">
                    <li class="current" com-det="dt1"><a href="JavaScript:;">产品信息</a></li>
                    <li com-det="dt2"><a href="JavaScript:;">商品评论</a></li>
                    <li com-det="dt3"><a href="JavaScript:;">商家信息</a></li>
                    <div style="clear:both;"></div>
                </ul>
                <div style="border:1px solid #DBDBDB;" com-det-show="dt1">
                	<div class="if2-tu1">
                        <img src="${pageContext.request.contextPath}/${product.image}" />
                        <div style="clear:both;"></div>
                    </div>
                    <div class="if2-tu2">
                        <div style="clear:both;"></div>
                    </div>
                    <div class="if2-tu3">
                    </div>
                    <ul class="if2-tu4">

                        <div style="clear:both;"></div>
                    </ul>
                </div>
                <div style="display:none;" com-det-show="dt2">
                	<dl class="if2-r-box2">
                	<dt>
                    	<p class="box2-p1">好评率</p>
                    	<p class="box2-p2">96.5%</p>
                    	<p class="box2-p3">共539人评论</p>
                    </dt>
                    <dd>
                    	<P>买过的人觉得</P>
                        <ul>
                        	<li><a href="#">香脆可口(198)</a></li>
                        	<li><a href="#">口感不错(160)</a></li>
                        	<li><a href="#">分量足(84)</a></li>
                        	<li><a href="#">味道不错(47)</a></li>
                        	<li><a href="#">价格便宜(34)</a></li>
                        	<li><a href="#">包装不错(30)</a></li>
                        	<li><a href="#">吃货必备(26)</a></li>
                        	<li><a href="#">送货快(14)</a></li>
                        	<li><a href="#">孩子喜欢(4)</a></li>
            				<div style="clear:both;"></div>
                        </ul>
                    </dd>
                    <div style="clear:both;"></div>
                </dl>
                	<div class="if2-r-box3">
                	<ul>
                    	<li class="current-li"><a href="#">全部（539）</a></li>
                    	<li><a href="#">好评（536）</a></li>
                    	<li><a href="#">中评（2）</a></li>
                    	<li><a href="#">差评（1）</a></li>
                    	<li><a href="#">图片（1）</a></li>
                    	<li><a href="#">追加评论（1）</a></li>
                        <div style="clear:both;"></div>
                    </ul>
                    <dl>
                    	<dt>
                        	<a href="#"><img src="${pageContext.request.contextPath}/images/box3-dt-tu.gif" /></a>
                        </dt>
                        <dd>
                        	<a href="#">花开富贵</a>
                            <p class="b3-p1">衣服版型特别正，很修身形，搭裙子裤子都好看，完全不输大品牌。颜色秋冬穿很合适，等待了一周果然没失望。卖家服务态度也很棒，说话几乎马上都会回消息，物超所值，真心推荐！！！！！！！！！！！！</p>
                            <p class="b3-p2">2022-10-18    16:57:22  </p>
                        </dd>
            			<div style="clear:both;"></div>
                    </dl>
                    <dl>
                    	<dt>
                        	<a href="#"><img src="${pageContext.request.contextPath}/images/box3-dt-tu.gif" /></a>
                        </dt>
                        <dd>
                        	<a href="#">小野小野小小野</a>
                            <p class="b3-p1">赞赞赞赞赞赞赞赞赞赞赞赞赞！！！！！！！！！</p>
                            <p class="b3-p2"><span></span><span></span>2015-12-12    16:57:22</p>
                            <div style="clear:both;"></div>
                            <div class="b3-zuijia">
                            	<p class="zj-p1">追加评论：</p>
                            	<p class="zj-p2">赞赞赞赞赞赞赞赞赞赞赞赞赞！！！！！！！！！</p>
                            	<p class="zj-p3">2022-10-31   10:31:00</p>
                            </div>
                        </dd>
            			<div style="clear:both;"></div>
                    </dl>
                    
                    <!--分页-->
           			<div class="paging">
            	<div class="pag-left f-l">
                	<a href="#" class="about left-r f-l"><</a>
                    <ul class="left-m f-l">
                    	<li><a href="#">1</a></li>
                        <li class="current"><a href="#">2</a></li>
                        <li><a href="#">3</a></li>
                        <li><a href="#">4</a></li>
                        <li><a href="#">5</a></li>
                        <li><a href="#">6</a></li>
                        <li><a href="#">...</a></li>
                        <li><a href="#">100</a></li>
                        <div style="clear:both;"></div>
                    </ul>
                	<a href="#" class="about left-l f-l">></a>
                    <div style="clear:both;"></div>
                </div>
            	<div class="pag-right f-l">
                	<div class="jump-page f-l">
                        到第<input type="text" />页
                    </div>
                    <button class="f-l">确定</button>
                    <div style="clear:both;"></div>
                </div>
                <div style="clear:both;"></div>
            </div>
                </div>
                </div>
                <div class="if2-r-box4" style="display:none;" com-det-show="dt3">
                	<div class="b4-tit">
                    	<h3>店铺所有商品</h3>
                    </div>
                    <div class="b4-con1">
                    	<a href="#">饼干糕点</a>
                    	<a href="#">坚果果仁</a>
                    	<a href="#">海味肉食</a>
                    	<a href="#">糖果巧克力</a>
                    	<a href="#">豆干炒货</a>
                    	<a href="#">休闲膨化</a>
                    	<a href="#">饮品冲调</a>
                    	<a href="#">蜜饯果脯</a>
                    	<a href="#">方便速食</a>
                    	<a href="#">饼干糕点</a>
                    	<a href="#">坚果果仁</a>
                    	<a href="#">海味肉食</a>
                    	<a href="#">糖果巧克力</a>
                    	<a href="#">豆干炒货</a>
                    	<a href="#">休闲膨化</a>
                    	<a href="#">饮品冲调</a>
                    	<a href="#">蜜饯果脯</a>
                    	<a href="#">方便速食</a>
                    </div>
                	<div class="b4-tit">
                    	<h3>店铺热销商品</h3>
                    </div>
                    <ul>
                    	<li>
                        	<a href="#"><img src="${pageContext.request.contextPath}/images/if2-l-box1-tu1.gif" /></a>
                            <a href="#">乐事Lay's 无限薯片（翡翠黄瓜味）104g/罐</a>
                            <p>¥6.90</p>
                        </li>
                        <li>
                        	<a href="#"><img src="${pageContext.request.contextPath}/images/if2-l-box1-tu1.gif" /></a>
                            <a href="#">乐事Lay's 无限薯片（翡翠黄瓜味）104g/罐</a>
                            <p>¥6.90</p>
                        </li>
                        <li>
                        	<a href="#"><img src="${pageContext.request.contextPath}/images/if2-l-box1-tu1.gif" /></a>
                            <a href="#">乐事Lay's 无限薯片（翡翠黄瓜味）104g/罐</a>
                            <p>¥6.90</p>
                        </li>
                        <li>
                        	<a href="#"><img src="${pageContext.request.contextPath}/images/if2-l-box1-tu1.gif" /></a>
                            <a href="#">乐事Lay's 无限薯片（翡翠黄瓜味）104g/罐</a>
                            <p>¥6.90</p>
                        </li>
                        <li>
                        	<a href="#"><img src="${pageContext.request.contextPath}/images/if2-l-box1-tu1.gif" /></a>
                            <a href="#">乐事Lay's 无限薯片（翡翠黄瓜味）104g/罐</a>
                            <p>¥6.90</p>
                        </li>
                        <li>
                        	<a href="#"><img src="${pageContext.request.contextPath}/images/if2-l-box1-tu1.gif" /></a>
                            <a href="#">乐事Lay's 无限薯片（翡翠黄瓜味）104g/罐</a>
                            <p>¥6.90</p>
                        </li>
                        <li>
                        	<a href="#"><img src="${pageContext.request.contextPath}/images/if2-l-box1-tu1.gif" /></a>
                            <a href="#">乐事Lay's 无限薯片（翡翠黄瓜味）104g/罐</a>
                            <p>¥6.90</p>
                        </li>
                        <li>
                        	<a href="#"><img src="${pageContext.request.contextPath}/images/if2-l-box1-tu1.gif" /></a>
                            <a href="#">乐事Lay's 无限薯片（翡翠黄瓜味）104g/罐</a>
                            <p>¥6.90</p>
                        </li>
            			<div style="clear:both;"></div>
                    </ul>
                </div>
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
    <div class="footer-box">
    	<ul class="footer-info1 w1200">
        	<li>
            	<div class="ft-tu1">
                	<a href="JavaScript:;"><img src="${pageContext.request.contextPath}/images/zl2-86.gif" /></a>
                </div>
                <h3><a href="JavaScript:;">号码保障</a></h3>
                <P>所有会员，手机短信验证</P>
            </li>
        	<li>
            	<div class="ft-tu1">
                	<a href="JavaScript:;"><img src="${pageContext.request.contextPath}/images/zl2-87.gif" /></a>
                </div>
                <h3><a href="JavaScript:;">6*12小时客服</a></h3>
                <P>有任何问题随时免费资讯</P>
            </li>
        	<li>
            	<div class="ft-tu1">
                	<a href="JavaScript:;"><img src="${pageContext.request.contextPath}/images/zl2-88.gif" /></a>
                </div>
                <h3><a href="JavaScript:;">专业专攻</a></h3>
                <P>我们只专注于建筑行业的信息服务</P>
            </li>
        	<li>
            	<div class="ft-tu1">
                	<a href="JavaScript:;"><img src="${pageContext.request.contextPath}/images/zl2-89.gif" /></a>
                </div>
                <h3><a href="JavaScript:;">注册有礼</a></h3>
                <P>随时随地注册有大礼包</P>
            </li>
        	<li>
            	<div class="ft-tu1">
                	<a href="JavaScript:;"><img src="${pageContext.request.contextPath}/images/zl2-90.gif" /></a>
                </div>
                <h3><a href="JavaScript:;">值得信赖</a></h3>
                <P>专业的产品，专业的团队</P>
            </li>
            <div style="clear:both;"></div>
        </ul>
    	<div class="footer-info2 w1200">
        	<div class="ft-if2-left f-l">
            	<dl>
                	<dt><a href="6-1服务协议.html">新手上路</a></dt>
                    <dd>
                    	<a href="6-1服务协议.html">购物流程</a>
                    	<a href="6-1服务协议.html">在线支付</a>
                    	<a href="6-1服务协议.html">投诉与建议</a>
                    </dd>
                </dl>
            	<dl>
                	<dt><a href="6-1服务协议.html">配送方式</a></dt>
                    <dd>
                    	<a href="6-1服务协议.html">货到付款区域</a>
                    	<a href="6-1服务协议.html">配送费标准</a>
                    </dd>
                </dl>
            	<dl>
                	<dt><a href="6-1服务协议.html">购物指南</a></dt>
                    <dd>
                    	<a href="6-1服务协议.html">订购流程</a>
                    	<a href="6-1服务协议.html">购物常见问题</a>
                    </dd>
                </dl>
            	<dl>
                	<dt><a href="6-1服务协议.html">售后服务</a></dt>
                    <dd>
                    	<a href="6-1服务协议.html">售后服务保障</a>
                    	<a href="6-1服务协议.html">退换货政策总则</a>
                    	<a href="6-1服务协议.html">自营商品退换细则</a>
                    </dd>
                </dl>
                <div style="clear:both;"></div>
            </div>
        	<div class="ft-if2-right f-r">
            	<h3>400-2298-223</h3>
                <p>周一至周日  9:00-24:00</p>
                <p>（仅收市话费）</p>
            </div>
            <div style="clear:both;"></div>
        </div>
        <div class="footer-info3 w1200">
        	<p>
                <a href="#">免责条款</a><span>|</span>
                <a href="#">隐私保护</a><span>|</span>
                <a href="#">咨询热点</a><span>|</span>
                <a href="#">联系我们</a><span>|</span>
                <a href="#">公司简介</a>
            </p>
        	<p>
            	<a href="#">沪ICP备13044278号</a><span>|</span>
                <a href="#">合字B1.B2-20130004</a><span>|</span>
                <a href="#">营业执照</a><span>|</span>
                <a href="#">互联网药品信息服务资格证</a><span>|</span>
                <a href="#">互联网药品交易服务资格证</a>
            </p>
            <div class="ft-if3-tu1">
            	<a href="#"><img src="${pageContext.request.contextPath}/images/zl2-91.gif" /></a>
            	<a href="#"><img src="${pageContext.request.contextPath}/images/zl2-92.gif" /></a>
            	<a href="#"><img src="${pageContext.request.contextPath}/images/zl2-93.gif" /></a>
            </div>
        </div>
    </div>
</body>
</html>
