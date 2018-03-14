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
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
  </head>
  
  <body>
<table>
<tr>
<th>序号***</th>
<th>order序号***</th>
<th>狗狗名称***</th>
<th>狗狗价钱***</th>
<th>狗狗数量***</th>
<th>总价***</th>
   <s:iterator value="orderList" status="status">
   <tr>
   <td><s:property value="#status.index+1"></s:property></td>
   <td><s:a href="order/order_showDetail?order.orderid=%{orderid}">
        <s:property value="orderid"></s:property></s:a>
   </td>
  <td><s:property value="dog.dogname"></s:property></td>
  <td><s:property value="dog.unitprice"></s:property></td>
  <td><s:property value="dognum"></s:property></td>
  <td><s:property value="total"></s:property></td>
   </tr>
   </s:iterator>
  </tr>
  </table>
  
  </body>
</html>
