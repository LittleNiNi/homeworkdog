<%@ page language="java" contentType="text/html; charset=GB18030" 
pageEncoding="GB18030"%> 
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
    
    <title>µÇÂ¼</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	 <link href="css/login.css" rel="stylesheet" type="text/css">
	 <link rel="shortcut icon"  href="images/logo.jpg">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
  </head>
  
  <body style="background:url(images/4.jpg) no-repeat 0% 0%/100% 100% "> 
  <div id="login">
    <h1>Login</h1>
    
    <s:form action="customer/customer_login" method="post">
      <input type="text" required="required" placeholder="ÓÃ»§Ãû" name="customer.name"></input>
      <input type="password" required="required" placeholder="ÃÜÂë" name="customer.password"></input> 
      <button class="hi" type="submit" >µÇÂ¼</button> 
    </s:form> 
   </div> 



    <br>
  </body>
</html>
