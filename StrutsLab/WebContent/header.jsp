<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
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