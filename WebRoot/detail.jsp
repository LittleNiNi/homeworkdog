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
  </head>
  
<body >
  <div class="banner-section">
			<div class="container">
				<div class="banner-grids">
					<div class="34" style="background:url(images/kuang.png) no-repeat 0% 0%/100% 100% ; height:700px;width:500px; float:left;">
					<br>
					<br>
						<h2>狗狗名称:<c:out value="${dog.dogname }"></c:out></h2>
                        <h2>单价:<c:out value="${dog.unitprice }"></c:out></h2><br><br><br>
                       迎接狗狗要准备些什么才好？<br>如何让狗狗乖乖大小便？<br>不同阶段的幼犬该吃啥？<br>
快到<a href="comments.jsp" target="_blank"><font color="blue">新宠大论坛</font></a>和大家交流吧<br>
科学养宠，为爱宠创建无限美好！
             
					</div>
					<div style="float:right;">
					<img src="<%=basePath%><s:property value='dog.filepath'/>" width="570" height="570" alt="/">
					</div>
				<div class="col-md-6 banner-grid1" ">
				</div>
			
				
		</div>
		</div>
		</div>
  
  </body>
</html>
