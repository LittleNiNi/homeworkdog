<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML>
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>首页</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	
	 
    <link href="css/carousel.css" rel="stylesheet">
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link rel="shortcut icon"  href="images/logo.jpg">
	<link rel="stylesheet" type="text/css" href="css/new.css">
	
	<script src="${pageContext.request.contextPath }/js/ie-emulation-modes-warning.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath }/js/jquery.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath }/js/bootstrap.min.js"></script>
	
  </head>
  
  <body>
       <header>
    <ul>
      
      <li class="banner">Take Me Home</li>
      
    </ul>
    <nav>
      <ul>

        <li><a href="zhuyao.jsp">首页</a></li>
        <li class="active"><a href="dog/dog_queryDogs?keyWords=">热卖推荐</a></li>
         <c:if test="${customer.name !=null}">
        <c:if test="${customer.name !=null}">
        <li><a href="order/order_showOrder?customer.name=${session.customer.name}">购物车</a></li>
        </c:if>
        </c:if>
        <li><a href="index.jsp">狗狗收容</a></li>
        <li><a href="aboutus.jsp">关于我们</a></li>
      <li><a href="comments.jsp">论坛</a></li>
         <li><a href="MyClass.jsp">小课堂</a></li>
      </ul>
    
     <ul class="account">
     			<c:choose>
		       <c:when test="${customer.name ==null}">
		         <li><a href="reg.jsp">注册</a></li>
		         <li><a href="login.jsp">登录</a></li>
		       </c:when>
		       <c:otherwise>
		        <li><c:out value="${customer.name }"></c:out> , 欢迎您!</li>
		         <li><a href="customer/customer_re">注销</a></li>
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
