<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!doctype html>

<html>
  <head>
    <base href="<%=basePath%>">
    <meta charset="utf-8">
    <title>购物车</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<style type="text/css">
@import url("css/cart.css");

.like {

}

</style>
  </head>
  
  <body>
   <header>

    <nav>

      <ul>
        <li><a href="zhuyao.jsp">首页</a></li>
        <li class="active"><a href="main.jsp">热卖推荐</a></li>
        <li><a href="order_main.jsp">购物车</a></li>
        <li><a href="index.jsp">狗狗收容</a></li>
        <li><a href="aboutus.jsp">关于我们</a></li>
      </ul>
   <ul class="account">

     			<c:choose>

		       <c:when test="${customer.name ==null}">

		         <li><a href="reg.jsp">注册</a></li>

		         <li><a href="login.jsp">登录</a></li>

		       </c:when>

		       <c:otherwise>

		         <c:out value="${customer.name}"></c:out> 

		       </c:otherwise>

		    </c:choose>						

          </ul>

          </nav>
  </header>
  <center>
<table>
<tr>
<th>序号</th>
<th>订单号</th>
<th>狗狗名称</th>
<th>狗狗价钱</th>
<th>狗狗数量</th>
<th>总价</th>
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
  </center>
  <div class="wi">
<p class="like">-------------猜你喜欢------------</p>
</div>

<div class="ll">

<img src="images/19.jpg" width="150" height="150" alt="/" >

<img src="images/20.jpg" width="150" height="150" alt="/">

<img src="images/21.jpg" width="150" height="150" alt="/">

<img src="images/22.jpg" width="150" height="150" alt="/">



</div>
  </body>
</html>
