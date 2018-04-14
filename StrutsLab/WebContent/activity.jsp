<%@ page language="java" contentType="text/html; charset=UTF-8"  
    pageEncoding="UTF-8"%>  
<%@ taglib prefix="sx" uri="/struts-dojo-tags" %>
<%@ page import="java.util.*"%>
<%@ page import="com.lab.bean.Activity" %>
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
<div id="header">
  <sx:div  href="header">
  </sx:div>
</div>
<div class="am-slider am-slider-default" data-am-flexslider="{playAfterPaused: 8000}">
    <ul class="am-slides">
        <li><img src="./images/banner2.jpg" alt="" ></li>
        <li><img src="./images/banner2.jpg" alt="" ></li>
        <li><img src="./images/banner2.jpg" alt="" ></li>
        <li><img src="./images/banner2.jpg" alt="" ></li>
    </ul>
</div>

<section class="about-section">
    <div>
        <span>
            <article>实验室介绍</article>
            <h6>LABORATORY INTRODUCTION</h6>
        </span>
        <span></span>
    </div>
    <div></div>
    <div class="about-content">
        <div class="about-image"> <img src="./images/banner3.jpg" alt=""></div>

        <article><p>大冶市云阿拉丁科技有限公司创建于2015年1月5日，总部位于青铜故里——大冶市。公司致力于帮助传统行业实现在互联网时代的转型升
            级。目前经营的范围包括：电子商务平台开发技术支持、技术转让、运维技术服务、大数据、云计算等。大冶市云阿拉丁科技有限公司创建于2015年1月5日，总部位于青铜故里——大冶市。公司致力于帮助传统行业实现在互联网时代的转型升级。目前经营的范围包括：电子商务平台开发技术支持、技术转让、运维技术服务、大数据、云计算等。
        </p>
            <p>大冶市云阿拉丁科技有限公司创建于2015年1月5日，总部位于青铜故里——大冶市。公司致力于帮助传统行业实现在互联网时代的转型升
                级。目前经营的范围包括：电子商务平台开发技术支持、技术转让、运维技术服务、大数据、云计算等。大冶市云阿拉丁科技有限公司创建于2015年1月5日，总部位于青铜故里——大冶市。公司致力于帮助传统行业实现在互联网时代的转型升级。目前经营的范围包括：电子商务平台开发技术支持、技术转让、运维技术服务、大数据、云计算等。大冶市云阿拉丁科技有限公司创建于2015年1月5日，总部位于青铜故里——大冶市。公司致力于帮助传统行业实现在互联网时代的转型升级。目前经营的范围包括：电子商务平台开发技术支持、技术转让、运维技术服务、大数据、云计算等。
            </p>
        </article>
    </div>
<%
//从session中获取sliderimage。然后展示在界面中

ArrayList<Activity> activities = (ArrayList<Activity>) request
		.getSession().getAttribute("activities");
if (activities.size() == 0) {
	out.print("没有数据");
}else{
	for(Activity activity : activities){
		//判断是否是MP4类型的文件
		boolean  isMP4 = activity.getImagePath().endsWith("mp4");
		if(isMP4){
			%>
			<div class="about-box">
        <div class="about-leftbox">
<video width="500" height="450" controls ><source src=<%=activity.getImagePath() %> type="video/mp4"> </video>
        </div>
        <div class="about-rightbox">
            <h1>实验室活动</h1>
             <p>LABORATORY ACTIVITY</p>
            <h2><%=activity.getName() %></h2>
            <article><%=activity.getIntroduction() %></article>
        </div>
    </div>
</br></br>
			<%
		}else{
			%>
			<div class="about-box">
        <div class="about-leftbox">
            <img src=<%=activity.getImagePath() %> alt="">
        </div>
        <div class="about-rightbox">
        <h1>实验室活动</h1>
             <p>LABORATORY ACTIVITY</p>
            <h1><%=activity.getName() %></h1>
<!--             <p>LABORATORY CULTURE</p> -->

            <article><%=activity.getIntroduction() %></article>
        </div>
    </div>
		</br></br>
			
			<%
		}
		
		%>
<!-- 		<div class="about-box"> -->
<!--         <div class="about-leftbox"> -->
<%--             <img src=<%=activity.getImagePath() %> alt=""> --%>
<!--         </div> -->
<!--         <div class="about-rightbox"> -->
<%--             <h1><%=activity.getName() %></h1> --%>
<!-- <!--             <p>LABORATORY CULTURE</p> --> -->
<%--             <article><%=activity.getIntroduction() %></article> --%>
<!--         </div> -->
<!--     </div> -->
<!-- 		</br></br></br> -->
		<%
	}
}

%>
    
<!--     <div class="about-box"> -->
<!--         <div class="about-leftbox"> -->
<!-- <video width="500" height="450" controls ><source src="video/video.mp4" type="video/mp4"> </video> -->
<!--         </div> -->
<!--         <div class="about-rightbox"> -->
<!--             <h1>实验室活动</h1> -->
<!--              <p>LABORATORY ACTIVITY</p> -->
<!--             <h2>冬季滑雪</h2> -->
<!--             <article>2017年X月XX日，实验室组织了集体滑雪活动。</article> -->
<!--         </div> -->
<!--     </div> -->
<!-- </br></br> -->
<!--     <div class="about-team"> -->
<!--         <div class="am-u-sm-12 am-u-md-12 am-u-lg-12"> -->
<!--             <p >设计团队</p> -->
<!--             <span>DESIGN TEAM</span> -->
<!--         </div> -->
<!--         <div class="about-team-headimg"> -->
<!--         <div class="am-u-sm-12 am-u-md-6 am-u-lg-3"> -->
<!--             <img src="images/team1.png" alt=""> -->
<!--             <p>史密斯KIM</p> -->
<!--             <span>首席金牌设计师</span> -->
<!--         </div> -->
<!--         <div class="am-u-sm-12 am-u-md-6 am-u-lg-3"> -->
<!--             <img src="images/team2.png" alt=""> -->
<!--             <p>刘凯丽</p> -->
<!--             <span>首席金牌设计师</span> -->
<!--         </div> -->
<!--         <div class="am-u-sm-12 am-u-md-6 am-u-lg-3"> -->
<!--             <img src="images/team3.png" alt=""> -->
<!--             <p>小李子</p> -->
<!--             <span>首席金牌设计师</span> -->
<!--         </div> -->
<!--         <div class="am-u-sm-12 am-u-md-6 am-u-lg-3"> -->
<!--             <img src="images/team4.png" alt=""> -->
<!--             <p>Lisa</p> -->
<!--             <span>首席金牌设计师</span> -->
<!--         </div> -->
<!--         </div> -->
<!--         <div class="about-slogan"> -->
<!--             <div> -->
<!--             <p></p> -->
<!--             </div> -->
<!--         </div> -->
<!--     </div> -->
</section>

<div id="footer">
  <sx:div  href="footer">
  </sx:div>
 </div>
</body>
</html>