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
    
    <title>显示狗狗详情</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link href="<%=basePath%>css/style.css" rel="stylesheet" type="text/css" media="all" />
	<link href="<%=basePath%>css/bootstrap.css" rel="stylesheet" type="text/css" media="all"/>
	<link rel="shortcut icon"  href="images/logo.jpg">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
  </head>
  
  <body style="background:url(images/222.jpg) no-repeat 0% 0%/100% 100%" >
  <div class="banner-section">
			<div class="container">
				<div class="banner-grids">
					<div class="col-md-6 banner-grid">
						
						<h2>狗狗名称:<c:out value="${dog.dogname }"></c:out></h2>
                        <h2>单价:<c:out value="${dog.unitprice }"></c:out></h2>
						
					</div>
				<div class="col-md-6 banner-grid1" ">
				</div>
				
		</div>
		</div>
		</div>
  
  </body>
</html>
