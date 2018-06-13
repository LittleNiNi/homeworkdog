<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html>
<html lang="en">
  <head>
    <base href="<%=basePath%>">
    
    <title>直接跳转到显示所有dog的页面</title>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="shortcut icon"  href="images/logo.jpg">
	
	<link rel="stylesheet" type="text/css" href="<%=basePath%>css/font-awesome.css">
	<link rel="stylesheet" type="text/css" href="<%=basePath%>css/button.css">
	<link rel="stylesheet" type="text/css" href="<%=basePath%>css/main.css">
	<link rel="stylesheet" type="text/css" href="<%=basePath%>css/new.css">
	
	<link href="<%=basePath%>css/bootstrap.css" rel="stylesheet" type="text/css" media="all"/><!-- 显示搜索 -->
  </head>
  
  <body>
  <header>
    <ul>
      
      <li class="banner">Take Me Home</li>
      
    </ul>
  <nav>
      <ul>
         <li><a href="zhuyao.jsp">首页</a></li>
        <li class="active"><a href="dog/dog_queryDogs?keyWords=">热卖推荐</a></li>
        <c:if test="${customer.name !=null}">
        <li><a href="order/order_showOrder?customer.name=${session.customer.name}">购物车</a></li>
        </c:if>
        <li><a href="index.jsp">狗狗收容</a></li>
        <li><a href="aboutus.jsp">关于我们</a></li>
      <li><a href="comments.jsp">论坛</a></li>
      <li><a href="MyClass.jsp">小课堂</a></li>
      
       
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
  </header>
  
     <main>
	    <ul>
	    <li><a href="class1.jsp" target="_blank" alt="狗流眼泪"><img src=images/class1.png style="width:590px;height:330.39px"></a></li>
	    <li><a href="class2.jsp" target="_blank" alt="狗流鼻涕"><img src=images/class2.png style="width:590px;height:330.39px"></a></li>
	    <li><a href="class3.jsp" target="_blank" alt="狗流鼻涕"><img src=images/class3.png style="width:590px;height:330.39px"></a></li>
	    <li><a href="class4.jsp" target="_blank" alt="狗流鼻涕"><img src=images/class4.png style="width:590px;height:330.39px"></a></li>
	    </ul>
	</main>
	
  </body>
</html>
