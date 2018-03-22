<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'index.jsp' starting page</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	
	 <link rel="stylesheet" type="text/css" href="css/new11.css">
    <link href="css/carousel.css" rel="stylesheet">
    <link href="css/bootstrap.min.css" rel="stylesheet">
	
	<script src="${pageContext.request.contextPath }/js/ie-emulation-modes-warning.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath }/js/jquery.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath }/js/bootstrap.min.js"></script>
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
  </head>
  
  <body>
       <header>
    <ul>
      
      <li class="banner">Take Me Home</li>
      
    </ul>
    <nav>
      <ul>

        <li><a href="zhuyao.jsp">首页</a></li>
        <li class="active"><a href="main.jsp">热卖推荐</a></li>
        <li><a href="order_main.jsp">购物车</a></li>
        <li><a href="index.jsp">狗狗收容</a></li>
        <li><a href="aboutus.jsp">关于我们</a></li>
    
       
      </ul>
    
     <ul class="account">
     			<c:choose>
		       <c:when test="${customer.name 

 ==null}">
		         <li><a href="reg.jsp">注册</a></li>
		         <li><a href="login.jsp">登录</a></li>
		       </c:when>
		       <c:otherwise>
		         <c:out value="${customer.name 

}"></c:out> , 欢迎您!
		       </c:otherwise>
		    </c:choose>						
          </ul>
          </nav>
          
  </header>
   <!-- Carousel
    ================================================== -->
    <div id="myCarousel" class="carousel slide" data-ride="carousel">
      <!-- Indicators -->
      <ol class="carousel-indicators">
        <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
        <li data-target="#myCarousel" data-slide-to="1"></li>
        <li data-target="#myCarousel" data-slide-to="2"></li>
        <li data-target="#myCarousel" data-slide-to="3"></li>
      </ol>
      <div class="carousel-inner" role="listbox">
        <div class="item active">
          <img class="first-slide" src="${pageContext.request.contextPath }/images/15.jpg" alt="First slide">
          <div class="container">
            <div class="carousel-caption">
              <h1>Cute dogs.</h1>
             
            </div>
          </div>
        </div>
        <div class="item">
          <img class="second-slide" src="${pageContext.request.contextPath }/images/12.jpg" alt="Second slide">
          <div class="container">
            <div class="carousel-caption">
              <h1>Cute dogs.</h1>
             
            </div>
          </div>
        </div>
        <div class="item">
          <img class="third-slide" src="${pageContext.request.contextPath }/images/16.jpg" alt="Third slide">
          <div class="container">
            <div class="carousel-caption">
              <h1>Cute dogs.</h1>
             
             
            </div>
          </div>
        </div>
         <div class="item">
          <img class="fourth-slide" src="${pageContext.request.contextPath }/images/14.jpg" alt="Fourth slide">
          <div class="container">
            <div class="carousel-caption">
              <h1>Cute dogs.</h1>
             
             <!--   <p><a class="btn btn-lg btn-primary" href="#" role="button">Learn more</a></p>-->
            </div>
          </div>
        </div>
      </div>
      <a class="left carousel-control" href="#myCarousel"  data-slide="prev">
        <span class="glyphicon glyphicon-chevron-left" >&lsaquo;</span>
        <span class="sr-only">Previous</span>
      </a>
      <a class="right carousel-control" href="#myCarousel"  data-slide="next">
        <span class="glyphicon glyphicon-chevron-right" aria-hidden="true">&rsaquo;</span>
        <span class="sr-only">Next</span>
      </a>
    </div>
  </body>
</html>
