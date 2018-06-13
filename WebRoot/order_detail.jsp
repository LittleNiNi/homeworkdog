<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
	<link rel="shortcut icon"  href="images/logo.jpg">
	<link href="<%=basePath%>css/style.css" rel="stylesheet" type="text/css" media="all" />
	<link href="<%=basePath%>css/bootstrap.css" rel="stylesheet" type="text/css" media="all"/>
<title>shopcard</title>


</head>

<body>

 <!--<header>

 
    <nav>

      <ul>
        <li><a href="zhuyao.jsp">首页</a></li>
        <li class="active"><a href="dog/dog_queryDogs?keyWords=">热卖推荐</a></li>
     <c:if test="${customer.name !=null}">
        <li><a href="order/order_showOrder?customer.name=${session.customer.name}">购物车</a></li>
        </c:if>
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
		         <li><c:out value="${customer.name }"></c:out> , 欢迎您!</li>
		         <li><a href="customer/customer_re">注销</a></li>
		       </c:otherwise>
		    </c:choose>							

          </ul>

          </nav>
  </header>-->

  <div class="banner-section">
			<div class="container">
				<div class="banner-grids">
					<div class="34" style="background:url(images/kuang.png) no-repeat 0% 0%/100% 100% ; height:700px;width:500px; float:left;"><br><br><br><br><br><br><br>
					
						<h2>订单号：<s:property value="order.orderid"></s:property></h2>
     <h2>    下单顾客：<s:property value="order.customer.name"></s:property></h2>
     <h2>狗狗：<s:property value="order.dog.dogname"></s:property></h2>
     <h2>单价：<s:property value="order.dog.unitprice"></s:property></h2>
     <h2>数量：<s:property value="order.dognum"></s:property></h2>
     <h2>总价：<s:property value="order.total"></s:property></h2>
                        
                         
					</div>
					<div style="float:right;">
					<img src="images/20.jpg" width="570" height="700" alt="/">
					</div>
				<div class="col-md-6 banner-grid1" ">
				</div>
			
				
		</div>
		</div>
		</div>


</body>
</html>
