<%@ page language="java" contentType="text/html; charset=UTF-8"  
    pageEncoding="UTF-8"%>
<%@ taglib prefix="sx" uri="/struts-dojo-tags" %>
<%@ page import="com.lab.bean.SliderImage"%>
<%@ page import="java.util.*"%>
    <!DOCTYPE html>
<html lang="zh-cn">
<head>
    <title>高维信息处理实验室</title>
    ﻿<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="format-detection" content="telephone=no">
<meta name="renderer" content="webkit">
<meta name="viewport" content="width=device-width,initial-scale=1,maximum-scale=1,user-scalable=no">
<meta http-equiv="Cache-Control" content="no-siteapp" />
<link rel="alternate icon" type="image/png" href="images/favicon.png">
<link rel='icon' href='favicon.ico' type='image/x-ico' />
<meta name="description" content="" />
<meta name="keywords" content="" />
<link rel="stylesheet" href="css/default.min.css?t=227" />
<!--[if (gte IE 9)|!(IE)]><!-->
<script type="text/javascript" src="lib/jquery/jquery.min.js"></script>
<!--<![endif]-->
<!--[if lte IE 8 ]>
<script src="http://libs.baidu.com/jquery/1.11.3/jquery.min.js"></script>
<script src="http://cdn.staticfile.org/modernizr/2.8.3/modernizr.js"></script>
<script src="lib/amazeui/amazeui.ie8polyfill.min.js"></script>
<![endif]-->
<script type="text/javascript" src="lib/handlebars/handlebars.min.js"></script>
<script type="text/javascript" src="lib/iscroll/iscroll-probe.js"></script>
<script type="text/javascript" src="lib/amazeui/amazeui.min.js"></script>
<script type="text/javascript" src="lib/raty/jquery.raty.js"></script>
<script type="text/javascript" src="js/main.min.js?t=1"></script>
<sx:head/>
</head>
<body>
<!-- <div id="header"> -->
<%--   <sx:div  href="header"> --%>
<%--   </sx:div> --%>
<!-- </div> -->
<header>
    <div class="header-top">
        <div class="width-center">
            <div class="header-logo "><img src="images/logo.jpg" alt=""></div>
            <div class="header-title div-inline">
                <strong style="font-size:40px">高维信息处理实验室</strong>
                <span>http://47.95.200.51:8080/StrutsLab/index</span>
            </div>

<!--             <div class="search-box div-inline"> -->
<!--                 <div class="input-box"><input type="text" name="" placeholder="             请输入关键字"></div> -->
<!--                 <div class="search-botton"></div> -->
<!--             </div> -->
        </div>
    </div>
    <div class="header-nav">
        <button class="am-show-sm-only am-collapsed font f-btn" data-am-collapse="{target: '.header-nav'}">Menu <i
                class="am-icon-bars"></i></button>
        <nav>
        <ul class="header-nav-ul am-collapse am-in">
<!--         首页链接 -->
            <li class="on"><a href="index" name="index">首页</a></li>
            <li           ><a href="activity" name="about">实验室简介</a></li>
            <li><a href="memberlist" name="show">实验室成员</a></li>
            <li><a href="article_list" name="new">论文及项目</a></li>
            <li><a href="contact" name="message">联系我们</a>
<!--                 <div class="secondary-menu"> -->

<!--                     <ul><li><a href="message.html" class="message"></a></li></ul> -->
<!--                 </div> -->
            </li>
        </ul>
        </nav>
    </div>
</header>
<!-- 轮播图片插入位置 -->
<div>
    <header class="header-article-list">
        <div class="contact-left">联系我们</div>
        <div class="contact-right">
            <a href="index">首页 </a>&#62;<a href="contact">联系我们</a>
        </div>
    </header>

    <main class="contact">
        <iframe src="map.jsp" width="636" height="378" frameborder="0" scrolling="no"></iframe>
        <ul>
            <li>
                <span><img src="images/contact1.png"/></span>
                <h2>联系方式</h2>
                <p>电话:18622012862</p>
            </li>
            <li>
                <span><img src="images/contact2.png"/></span>
                <h2>单位地址</h2>
                <p>地址:天津大学北洋园校区</br>55号楼软件学院A214</p>
                
            </li>
            <li>
                <span><img src="images/contact3.png"/></span>
                <h2>电子邮箱</h2>
                <p>邮箱:36560748@qq.com</p>
            </li>
        </ul>
    </main>
</div>
<div id="footer">
  <sx:div  href="footer">
  </sx:div>
</div>
</body>
</html>