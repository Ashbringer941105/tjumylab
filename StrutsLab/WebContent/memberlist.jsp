<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="sx" uri="/struts-dojo-tags"%>
<%@ page import="com.lab.bean.Teacher"%>
<%@ page import="com.lab.bean.Student"%>
<%@ page import="com.lab.bean.Member" %>
<%@ page import="java.util.*"%>
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
	<div id="header">
		<sx:div href="header">
		</sx:div>
	</div>
	<div class="am-slider am-slider-default"
		data-am-flexslider="{playAfterPaused: 8000}">
		<ul class="am-slides">
			<li><img src="images/banner.jpg" alt=""></li>
			<li><img src="images/banner.jpg" alt=""></li>
			<li><img src="images/banner.jpg" alt=""></li>
			<li><img src="images/banner.jpg" alt=""></li>
		</ul>
	</div>
	<section class="pro-list">
		<!--     <aside class="pro-leftsidebar"> -->
		<!--         <ul> -->
		<!--             <li> -->
		<!--                 <a>产品搜索</a> -->
		<!--                 <ul id="pro-search"> -->
		<!--                     <li><a><input type="text"  class="pro-search"><a class="pro-search-btn">搜索</a></a></li> -->
		<!--                 </ul> -->
		<!--             </li> -->
		<!--             <li> -->
		<!--                 <a>产品分类</a> -->
		<!--                 <ul id="pro-category"> -->
		<!--                     <li class="on"><a href="#">椅子系列</a></li> -->
		<!--                     <li><a href="#">餐桌系列</a></li> -->
		<!--                     <li><a href="#">沙发系列</a></li> -->
		<!--                     <li><a href="#">创意系列</a></li> -->
		<!--                 </ul> -->
		<!--             </li> -->
		<!--         </ul> -->
		<!--     </aside> -->

		<aside class="pro-rightsidebar">
			<header>
				<p></p>
				<span>实验室教师</span>
			</header>
			<ul>
				<%
					//         从session中获得所有教师信息teacherlist的代码
					ArrayList<Member> teacherlist = (ArrayList<Member>) request
							.getSession().getAttribute("teacherlist");
					if (teacherlist.size() == 0) {
						out.print("没有数据");
					} else {
						for (Member teacher : teacherlist) {
				%>
				<li><a href=<%=teacher.getHomepage()%>>
						<div class="img-box">
							<img src=<%=teacher.getImagepath()%>>
							<p><%=teacher.getName()%></p>
						</div>
				</a></li>
				<li>
					<%
						}
						}
					%>
				
			</ul>
			<header>
				<p></p>
				<span>研究生</span>
			</header>
			<ul>
				<%
					//      从session中获得所有研究生信息studentlist的代码
					ArrayList<Member> Studentlist = (ArrayList<Member>) request
							.getSession().getAttribute("studentlist");
					if (Studentlist.size() == 0) {
						out.print("没有数据");
					} else {
						for (Member student : Studentlist) {
				%>
				<li><a href=<%=student.getHomepage()%>>
						<div class="img-box">
							<img src=<%=student.getImagepath()%>>
							<p><%=student.getName()%></p>
						</div>
				</a></li>
				<%
					}
					}
				%>
			</ul>
			<header>
				<p></p>
				<span>毕业生</span>
			</header>
			<ul>
				<li><a href="#">
						<div class="img-box">
							<img src="images/pro1.png">
							<p>毕业生</p>
						</div>
				</a></li>

			</ul>

			<!--         <div class="pro_list_more_pages"> -->
			<!--             <ul> -->
			<!--                 <li><a>上一页</a></li> -->
			<!--                 <li class="pro-list-current"><a>1</a></li> -->
			<!--                 <li><a>2</a></li> -->
			<!--                 <li><a>3</a></li> -->
			<!--                 <li><a>下一页</a></li> -->
			<!--             </ul> -->
			<!--         </div> -->
		</aside>


	</section>

	<div id="footer">
		<sx:div href="footer">
		</sx:div>
	</div>
</body>
</html>