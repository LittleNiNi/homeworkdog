<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>购物车</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="shortcut icon"  href="images/logo.jpg">
	<meta http-equiv="Refresh" content="1;url=order/order_showOrder?customer.name=${customer.name}">
	<!--<meta http-equiv="Refresh" content="1;url=order/order_showOrder?customer.name=${customer.name }">-->
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
  </head>
  
   <body style="background:url(images/matthew-henry-64794-unsplash.jpg) no-repeat 0% 0%/100% 100%">
  <div style="font-size:2.5em;line-height:1em; color:black; padding:380px 600px; height:50px; width:500px; ">
  <p>
  您可以带它回家了
  </p>
  </div>
  
    
  </body>
</html>
