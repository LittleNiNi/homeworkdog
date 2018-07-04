<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">


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
<link rel="shortcut icon"  href="images/logo.jpg">

<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Swim Wear Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />


</head>
<body >

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

		
</body>
</html>
