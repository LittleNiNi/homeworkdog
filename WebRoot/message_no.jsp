<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>



<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Demo</title>
  <link rel="icon" href="favicons/1.png">

  <link rel="stylesheet" href="<%=basePath%>css/reset_message_no.css">
  <link rel="stylesheet" href="<%=basePath%>css/index_message_no.css">
   <link rel="stylesheet" type="text/css" href="<%=basePath%>css/style_message_no.css" />
</head>
<body>


 

  <!-- 精彩推荐 -->
  <div class="main" id="recommend">
    <div class="main-inner">
      <div class="main-title">
       <h2>您已成功提交申请，等待管理员审核通过<br>您的狗狗就可以被其他人收养了哦~</h2>
        <span class="line line-left"></span>
        <span class="line line-right"></span>
      </div>
      <div class="carousel">
        <div class="carousel-slider">
          <a href="#" class="item item-pic1"><img src="<%=basePath%>images/1.jpg" alt="#"></a>
          <a href="#" class="item item-pic2"><img src="<%=basePath%>images/9.jpg" alt="#"></a>
          <a href="#" class="item item-pic3"><img src="<%=basePath%>images/10.jpg" alt="#"></a>
          <a href="#" class="item item-pic4"><img src="<%=basePath%>images/8.jpg" alt="#"></a>
          <a href="#" class="item item-pic5"><img src="<%=basePath%>images/13.jpg" alt="#"></a>
          <a href="#" class="item item-pic6"><img src="<%=basePath%>images/11.jpg" alt="#"></a>
        </div>
        <div class="slider-btns">
          <span class="cur"><i></i></span>
          <span><i></i></span>
          <span><i></i></span>
          <span><i></i></span>
          <span><i></i></span>
          <span><i></i></span>
        </div>
      </div>
    </div>
    <div class="main-operate">
      <a href="#" class="slider-prev"><i class="icon-sprite"></i></a>
      <a href="#" class="slider-next"><i class="icon-sprite"></i></a>
    </div>
  </div>

    <div class="container">


            <div class="content">

				<div class="button-wrapper">

					<a href="<%=basePath%>dog/dog_queryDogs?keyWords=" class="a-btn" style="left:300px;">

						<span class="a-btn-text">继续逛逛</span> 

						<span class="a-btn-slide-text">很多小狗</span>

						<span class="a-btn-icon-right"><span></span></span>

					</a>
					<a href="<%=basePath%>game.jsp" class="a-btn" style="left:1000px;">

						<span class="a-btn-text">玩个游戏</span> 

						<span class="a-btn-slide-text">FUN！</span>

						<span class="a-btn-icon-right"><span></span></span>

					</a>
					

					

				</div>

            </div>

        </div>

  <script src="http://www.jq22.com/jquery/jquery-1.10.2.js"></script>
  <script src="<%=basePath%>js/script.js"></script>

</body>
</html>
 
