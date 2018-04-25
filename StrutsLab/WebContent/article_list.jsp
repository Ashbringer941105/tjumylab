<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="sx" uri="/struts-dojo-tags"%>
<%@ page import="java.util.*"%>
<%@ page import="com.lab.bean.Paper"%>
<%@ page import="com.lab.bean.Project"%>
<!DOCTYPE html>
<html lang="zh-cn">
<head>
<title>高维信息处理实验室</title> ﻿
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="format-detection" content="telephone=no">
<meta name="renderer" content="webkit">
<meta name="viewport"
	content="width=device-width,initial-scale=1,maximum-scale=1,user-scalable=no">
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
<sx:head />
</head>
<body>
	<!-- <div id="header"> -->
	<%--   <sx:div  href="header"> --%>
	<%--   </sx:div> --%>
	<!-- </div> -->
	<header>
		<div class="header-top">
			<div class="width-center">
				<div class="header-logo ">
					<img src="images/logo.jpg" alt="">
				</div>
				<div class="header-title div-inline">
					<strong style="font-size: 40px">高维信息处理实验室</strong> <span>http://47.95.200.51:8080/StrutsLab/index</span>
				</div>

				<!--             <div class="search-box div-inline"> -->
				<!--                 <div class="input-box"><input type="text" name="" placeholder="             请输入关键字"></div> -->
				<!--                 <div class="search-botton"></div> -->
				<!--             </div> -->
			</div>
		</div>
		<div class="header-nav">
			<button class="am-show-sm-only am-collapsed font f-btn"
				data-am-collapse="{target: '.header-nav'}">
				Menu <i class="am-icon-bars"></i>
			</button>
			<nav>
				<ul class="header-nav-ul am-collapse am-in">
					<!--         首页链接 -->
					<li class="on"><a href="index" name="index">首页</a></li>
					<li><a href="activity" name="about">实验室简介</a></li>
					<li><a href="memberlist" name="show">实验室成员</a></li>
					<li><a href="article_list" name="new">论文及项目</a></li>
					<li><a href="contact" name="message">联系我们</a> <!--                 <div class="secondary-menu"> -->

						<!--                     <ul><li><a href="message.html" class="message"></a></li></ul> -->
						<!--                 </div> --></li>
				</ul>
			</nav>
		</div>
	</header>
	<!-- <div class="am-slider am-slider-default" data-am-flexslider="{playAfterPaused: 8000}"> -->
	<!--     <ul class="am-slides"> -->
	<!--         <li><img src="images/banner.jpg" alt="" ></li> -->
	<!--         <li><img src="images/banner.jpg" alt="" ></li> -->
	<!--         <li><img src="images/banner.jpg" alt="" ></li> -->
	<!--         <li><img src="images/banner.jpg" alt="" ></li> -->
	<!--     </ul> -->
	<!-- </div> -->
	<div>
		<header class="header-article-list">
			<div class="article-position">论文</div>
			<ul>
				<li><a href="#">&nbsp;</a></li>
				<li><a href="#">&nbsp;</a></li>
				<li><a href="#">&nbsp;</a></li>
			</ul>
			<div class="article-more-btn">
				<!--             <a href="article_list_more.html">MORE &#62; &#62;</a> -->
			</div>
		</header>

		<section class="article-content">
			<ul>

				<%
					ArrayList<Paper> papers = (ArrayList<Paper>) request.getSession()
							.getAttribute("papers");
					if (papers.size() == 0) {
						out.print("没有数据");
					} else {
						for (Paper paper : papers) {
				%>
				<li>
					<div class="article-date">
						<!--                     <strong>01</strong> -->
						<p><%=paper.getDate()%></p>
					</div>
					<div class="article-info">
						<a href="article_list_content">
							<h3><%=paper.getName()%></h3>
							<p><%=paper.getIntroduction()%></p>
						</a>
					</div>
				</li>


				<%
					}

					}
				%>
				<!--             <li> -->
				<!--                 <div class="article-date"> -->
				<!-- <!--                     <strong>01</strong> -->
				
				<!--                     <p>2017/05/01</p> -->
				<!--                 </div> -->
				<!--                 <div class="article-info"> -->
				<!--                     <a href="article_list_content"> -->
				<!--                         <h3>家具有哪些类型?</h3> -->
				<!--                         <p>按家具从风格上可以分为：现代家具、欧式古典家具、美式家具、中式古典家具（也就是红木家具），还有近两年比较流行的新古典...</p> -->
				<!--                     </a> -->
				<!--                 </div> -->
				<!--             </li> -->

				<!--             <li> -->
				<!--                 <div class="article-date"> -->
				<!-- <!--                     <strong>01</strong> -->
			
				<!--                     <p>2017/05/01</p> -->
				<!--                 </div> -->
				<!--                 <div class="article-info"> -->
				<!--                     <a href="article_list_content"> -->
				<!--                         <h3>家具有哪些类型?</h3> -->
				<!--                         <p>按家具从风格上可以分为：现代家具、欧式古典家具、美式家具、中式古典家具（也就是红木家具），还有近两年比较流行的新古典...</p> -->
				<!--                     </a> -->
				<!--                 </div> -->
				<!--             </li> -->
				<!--             <li> -->
				<!--                 <div class="article-date"> -->
				<!-- <!--                     <strong>01</strong> -->
			
				<!--                     <p>2017/05/01</p> -->
				<!--                 </div> -->
				<!--                 <div class="article-info"> -->
				<!--                     <a href="article_list_content"> -->
				<!--                         <h3>家具有哪些类型?</h3> -->
				<!--                         <p>按家具从风格上可以分为：现代家具、欧式古典家具、美式家具、中式古典家具（也就是红木家具），还有近两年比较流行的新古典...</p> -->
				<!--                     </a> -->
				<!--                 </div> -->
				<!--             </li> -->

			</ul>

		</section>
	</div>

	<div>
		<header class="header-article-list">
			<div class="article-position">实验室项目</div>
			<ul>
				<li><a href="#">&nbsp;</a></li>
				<li><a href="#">&nbsp;</a></li>
				<li><a href="#">&nbsp;</a></li>
			</ul>
			<div class="article-more-btn">
				<!--             <a href="article_list_more.html">MORE &#62; &#62;</a> -->
			</div>
		</header>

		<section class="article-content">
			<ul>
				<%
					ArrayList<Project> projects = (ArrayList<Project>) request.getSession()
							.getAttribute("projects");
					if (projects.size() == 0) {
						out.print("没有数据");
					} else {
						for (Project project : projects) {
				%>
				<li>
					<div class="article-date">
						<!--                     <strong>01</strong> -->
						<p><%=project.getDate()%></p>
					</div>
					<div class="article-info">
						<a href="article_list_content">
							<h3><%=project.getName()%></h3>
							<p><%=project.getIntroduction()%></p>
						</a>
					</div>
				</li>
				<%
					}

					}
				%>
<!-- 				<li> -->
<!-- 					<div class="article-date"> -->
<!-- 						                    <strong>01</strong> -->
<!-- 						<p>2017/05/01</p> -->
<!-- 					</div> -->
<!-- 					<div class="article-info"> -->
<!-- 						<a href="article_list_content"> -->
<!-- 							<h3>家具有哪些类型?</h3> -->
<!-- 							<p>按家具从风格上可以分为：现代家具、欧式古典家具、美式家具、中式古典家具（也就是红木家具），还有近两年比较流行的新古典...</p> -->
<!-- 						</a> -->
<!-- 					</div> -->
<!-- 				</li> -->

<!-- 				<li> -->
<!-- 					<div class="article-date"> -->
<!-- 						                    <strong>01</strong> -->
<!-- 						<p>2017/05/01</p> -->
<!-- 					</div> -->
<!-- 					<div class="article-info"> -->
<!-- 						<a href="article_list_content"> -->
<!-- 							<h3>家具有哪些类型?</h3> -->
<!-- 							<p>按家具从风格上可以分为：现代家具、欧式古典家具、美式家具、中式古典家具（也就是红木家具），还有近两年比较流行的新古典...</p> -->
<!-- 						</a> -->
<!-- 					</div> -->
<!-- 				</li> -->
<!-- 				<li> -->
<!-- 					<div class="article-date"> -->
<!-- 						                    <strong>01</strong> -->
<!-- 						<p>2017/05/01</p> -->
<!-- 					</div> -->
<!-- 					<div class="article-info"> -->
<!-- 						<a href="article_list_content"> -->
<!-- 							<h3>家具有哪些类型?</h3> -->
<!-- 							<p>按家具从风格上可以分为：现代家具、欧式古典家具、美式家具、中式古典家具（也就是红木家具），还有近两年比较流行的新古典...</p> -->
<!-- 						</a> -->
<!-- 					</div> -->
<!-- 				</li> -->

			</ul>
		</section>
	</div>
	<div id="footer">
		<sx:div href="footer">
		</sx:div>
	</div>
</body>
</html>