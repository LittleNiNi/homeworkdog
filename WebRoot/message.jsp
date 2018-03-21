<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<!--  <html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'index.jsp' starting page</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<meta http-equiv="Refresh" content="2;url=dog/dog_showDog">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	
  </head>
  
  <body>
    成功添加一种狗狗
  </body>
</html>-->

<html>
<head>
<title>Home</title>
<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<meta http-equiv="Refresh" content="2;url=dog/dog_showDog">
<link href="<%=basePath%>css/style.css" rel="stylesheet" type="text/css" media="all" />
<link href="<%=basePath%>css/bootstrap.css" rel="stylesheet" type="text/css" media="all"/>

<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Swim Wear Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />


</head>
<body >
	<!--header-->
		<!--<header>
    <nav>
      <ul>
        <li><a href="index.html">首页</a></li>
        <li class="active"><a href="article.html">热卖推荐</a></li>
       <li><a href="pic.html">购物车</a></li>
        <li><a href="video.html">我的订单</a></li>
        <li><a href="intro.html">关于我们</a></li>  
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
}"></c:out> 
		       </c:otherwise>
		    </c:choose>						
          </ul>
          </nav>   
  </header>-->
			<!--header-->
		<div class="banner-section">
			<div class="container">
				<div class="banner-grids">
					<div class="col-md-6 banner-grid">
						<h2>成功添加一种狗狗</h2>
						<p>The successful addition of a dog.</p>
						
					</div>
				<div class="col-md-6 banner-grid1" >
				<img src="images/222.jpg" class="img-responsive" alt=""/>
				
				</div>
				
		</div>
		</div>
		</div>
		
		<!--requried-jsfiles-for owl-->
		
		<!--requried-jsfiles-for owl -->
		<!--start content-slider-->
		
	<!--footer--><!--footer-->
		
</body>
</html>
