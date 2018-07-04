<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <!-- 重置文件 -->
  <link rel="stylesheet" href="css/normalize.css">
  <link rel="stylesheet" href="css/style.css">
  <link rel="stylesheet" type="text/css" href="<%=basePath%>css/new.css">
	
  <title>注册</title>
</head>
<body>
  <div class="reg_div">
    <p>完善用户信息</p>
     <s:form action="customer/customer_edit" method="post">
    <s:hidden name="customer.name" value="%{#session.customer.name}"></s:hidden>
      <s:hidden name="customer.password" value="%{#session.customer.password}"></s:hidden>
      <s:hidden name="customer.address" value="%{#session.customer.address}"></s:hidden>
      <s:hidden name="customer.customerid" value="%{#session.customer.customerid}"></s:hidden>
    <ul class="reg_ul">
      <li>
          <span>Sex：</span>
          <input type="text" name="customer.sex" value="" placeholder="性别" >
          <span class="confirm_hint"></span>
      </li>
      <li>
         <span>&emsp;&nbsp;&nbsp;Email：</span>
          <input type="email" name="customer.email" value="" placeholder="邮箱" class="reg_email">
          <span class="email_hint"></span>
      </li>
      <li>
          <span>Mobile：</span>
          <input type="text" name="customer.telephone" value="" placeholder="手机号" class="reg_mobile">
          <span class="mobile_hint"></span>
      </li>
      <li>
        <s:submit type="button" name="button" class="red_button">提交</s:submit>
      </li>
    </ul>
    </s:form>
  </div>
  <script src="http://www.jq22.com/jquery/jquery-1.10.2.js"></script>
  <script src="js/JavaScript.js"></script>
</body>
</html>


