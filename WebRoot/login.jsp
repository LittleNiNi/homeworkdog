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
    
    <title>��¼</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	 <link href="css/login.css" rel="stylesheet" type="text/css">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
  </head>
  
  <body style="background:url(images/4.jpg) no-repeat 0% 0%/100% 100% "> 
  <div id="login">
    <h1>Login</h1>
    
    <s:form action="customer/customer_login" method="post">
      <input type="text" required="required" placeholder="�û���" name="customer.name"></input>
      <input type="password" required="required" placeholder="����" name="customer.password"></input> 
      <button class="hi" type="submit" >��¼</button> 
    </s:form> 
   </div> 


   <!--  <s:form action="customer/customer_login" method="post">
      <s:textfield name="customer.name" label="�û���" cssClass="input"></s:textfield>
      <s:password name="customer.password" label="����" cssClass="input"></s:password>
      <s:submit value="��¼" cssClass="but"></s:submit>
    </s:form> -->
    <br>
  </body>
</html>
