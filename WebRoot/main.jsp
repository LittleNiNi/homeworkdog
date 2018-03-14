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
  <a href="login.jsp">登录</a>
   <a href="reg.jsp">注册</a>
  <s:form action="dog/dog_queryDogs" method="post">
  <label>狗狗名称</label><input type="text" name="keyWords" placeholder="请输入关键词"><s:submit value="查询"></s:submit>
<table>
<tr>
<th>序号</th>
<th>名称</th>
<th>单价</th>
</tr>
   <c:forEach var="dog" items="${dogList }" varStatus="status">
   <tr>
   <td><c:out value="${status.index+1}"></c:out></td>
   <td><a href="dog/dog_showDetail?dog.dogid=${dog.dogid }"></a>
   <td><c:out value="${dog.dogname }"></c:out></td>
   <td><c:out value="${dog.unitprice }"></c:out></td>
    <td><a href="dog/dog_showEdit?dog.dogid=${dog.dogid }">编辑</a></td>
   <td><a href="dog/dog_deleteDog?dog.dogid=${dog.dogid }">删除</a></td>
   <td><a href="order/order_addOrder?dog.dogid=${dog.dogid }&customer.name=${customer.name}">来一份</a></td>
   </tr>
   </c:forEach>
   </table>
   </s:form>
  </body>
</html>
