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
<meta charset="utf-8">
<title>关于我们</title>
<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	
	
	<link rel="shortcut icon"  href="images/logo.jpg">

<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css"/>
<link rel="stylesheet" type="text/css" href="css/aboutus-style.css"/>
<link rel="stylesheet" type="text/css" href="css/new.css"/>



<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link href='https://fonts.useso.com/css?family=Pacifico' rel='stylesheet' type='text/css'>
<link href='https://fonts.useso.com/css?family=Lato:400,900,700,300,100' rel='stylesheet' type='text/css'>
<link href='https://fonts.useso.com/css?family=Roboto+Slab:400,700,300,100' rel='stylesheet' type='text/css'>

</head>

<body>
 <header>
    <ul>
      
      <li class="banner">Take Me Home</li>
      
    </ul>
  <nav>
      <ul>
        <li><a href="first.jsp">首页</a></li>
        <li class="active"><a href="dog/dog_queryDogs?keyWords=">热卖推荐</a></li>
        
        <c:if test="${customer.name !=null&&customer.name!='admin'}">

            <li><a href="order/order_showOrder?customer.name=${session.customer.name}">购物车</a></li>
            <li><a href="index.jsp">狗狗收容</a></li>    
        </c:if>
        
        
        <c:if test="${customer.name =='admin'}">
            <li><a href="index.jsp">添加狗</a></li>
            <li><a href="ddog/ddog_queryDdogs?keyWords=">待审核</a></li>
        </c:if>
         <li><a href="comments/comments_queryall">论坛</a></li>
        <li><a href="MyClass.jsp">小课堂</a></li>
        <li><a href="aboutus.jsp">关于我们</a></li>
      </ul>
    
     <ul class="account">
     			<c:choose>
		       <c:when test="${customer.name ==null}">
		         <li><a href="reg.jsp">注册</a></li>
		         <li><a href="login.jsp">登录</a></li>
		       </c:when>
		       <c:otherwise>
		       <a href="change.jsp">
		         <c:out value="${customer.name }"></c:out></a>, 欢迎您!
		           <li><a href="customer/customer_re">注销</a></li>
		       </c:otherwise>
		    </c:choose>						
          </ul>
          </nav>     
  </header>


 
 
<div class="header2" style="background:url(images/17.jpg) no-repeat 0% 0%/100% 100% ">
	<div class="container">
    	<div class="row">
        	
            <div class="col-md-12 col-sm-12 col-xs-12">
            	<div class="main-title text-center">
                <div id="countdown" data-wow-delay=".3s" data-date="Dec 26, 2015 06:00:00"></div>
                	<h2>About Us</h2>
                    <p></p>
                    <p></p>
                </div>

            </div>
        </div>
    </div>
</div>
<div class="about text-center">
	<div class="container">
    	<div class="row">
       
            <div class="featurebox col-md-12 col-sm-12 col-xs-12">
            <div class="col-md-6 col-sm-6 col-xs-12">
            	<div class="feature text-left">
                	<h4>我们的初衷</h4>
                    <p>狗狗的命运不在于出生的那一刻而是在当它遇见你的那一瞬间，因此给可爱的狗狗寻找爱它的主人就是我们的初衷。</p>
                </div>
            </div>
            <div class="col-md-6 col-sm-6 col-xs-12">
            	<div class="feature text-left">
                	<h4>我们的要求</h4>
                    <p>当你为一个小动物取名字的那一刻，就产生了一种无法割舍的羁绊。请记住，当你决定养它那一刻起，你就有责任和义务为它负责。</p>
                </div>
            </div>
            <div class="col-md-6 col-sm-6 col-xs-12">
            	<div class="feature text-left">
                	<h4>我们的梦想</h4>
                    <p>当我们拥有能力的那一天，让领养代替购买将是我们做的第一件事情。 </p>
                </div>
            </div>
            <div class="col-md-6 col-sm-6 col-xs-12">
            	<div class="feature text-left">
                	<h4>请联系我们</h4>
                    <p>如有任何疑问，请随时联系我们。</p>
                </div>
            </div>
            </div>
        </div>
    </div>
</div>


</body>
</html>

