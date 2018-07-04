<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>

<%

String path = request.getContextPath();

String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";

%>



<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">

<html>

  <head>

    <base href="<%=basePath%>">

    

    <title>退出登陆</title>

    

	<meta http-equiv="pragma" content="no-cache">

	<meta http-equiv="cache-control" content="no-cache">

	<meta http-equiv="expires" content="0">    

	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">

	<meta http-equiv="Refresh" content="0;url=dog/dog_queryDogs?keyWords=">

	<meta http-equiv="description" content="This is my page">

	<!--

	<link rel="stylesheet" type="text/css" href="styles.css">

	-->



  </head>

  

  <body>

   欢迎光临！ <br>

   <div class="col-md-6 banner-grid1" >

				<img src="images/matthew-henry-64794-unsplash.jpg" class="img-responsive" alt=""/>

				

				</div>

  </body>

</html>