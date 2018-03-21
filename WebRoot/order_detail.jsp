<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!doctype html>

<html>

<head>
<base href="<%=basePath%>">
<meta charset="utf-8">
<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
<title>shopcard</title>
<style type="text/css">
@import url("css/cart 2.css");

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
<div class="pd">
<p>订单号：<s:property value="order.orderid"></s:property></p>
     <p>下单顾客：<s:property value="order.customer.customername"></s:property></p>
     <p>狗狗：<s:property value="order.dog.dogname"></s:property></p>
     <p>单价：<s:property value="orderdog.unitprice"></s:property></p>
     <p>数量：<s:property value="order.dognum"></s:property></p>
     <p>总价：<s:property value="order.total"></s:property></p>
</div>
 <img alt="/" src="images/8.jpg" >
</body>
</html>
