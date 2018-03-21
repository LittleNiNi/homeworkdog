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
	 <link href="css/reg.css" rel="stylesheet" type="text/css">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
  </head>
   <!-- <input type="password" required="required" placeholder="密码" name="customer.password"></input>  -->
  <body style="background:url(images/1.jpg) no-repeat 0% 0%/100% 100% ">
  <div id="reg">
    <h1>Reg</h1>
  <s:form action="customer/customer_reg" method="post">
   <input type="text" required="required" placeholder="用户名" name="customer.name"></input><br>
   <input type="password" required="required" placeholder="密码" name="customer.password"></input><br>
   <input type="text" required="required" placeholder="地址" name="customer.address"></input>
    <button class="but" type="submit" >提交</button> 
     <button class="no" type="reset" >重置</button> 
  <!-- <s:submit value="提交"></s:submit>
   <s:reset value="重填"></s:reset> --> 
   </s:form>
   </div>
   <br>
  </body>
</html>
