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
	<link href="<%=basePath%>css/bootstrap.min.css" rel="stylesheet">
    <link href="<%=basePath%>css/ie10-viewport-bug-workaround.css" rel="stylesheet">
    <link href="<%=basePath%>css/signin.css" rel="stylesheet">
     <script src="<%=basePath%>js/ie-emulation-modes-warning.js"></script>
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
  </head>
  
  <body style="background:url(images/18.jpg) no-repeat 0% 0%/100% 100% ">
  <!--  <header>
    <ul>
      
      <li class="banner">Take Me Home</li>
      
    </ul>
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
		       <c:when test="${customer.name 

 ==null}">
		         <li><a href="reg.jsp">注册</a></li>
		         <li><a href="login.jsp">登录</a></li>
		       </c:when>
		       <c:otherwise>
		         <c:out value="${customer.name }"></c:out> , 欢迎您!
		       </c:otherwise>
		    </c:choose>						
          </ul>
          </nav>
          
  </header>-->
  <div class="container">

     <s:form action="dog/dog_addDog" method="post" class="form-signin">
        <h2 class="form-signin-heading">添加狗狗</h2>
        <label for="inputdogname" class="sr-only">Email address</label>
        <input type="text"  class="form-control" name="dog.dogname"  placeholder="dog" required autofocus>
        <label for="inputnitprice" class="sr-only">dog</label>
        <input type="text"  class="form-control" name="dog.unitprice"  placeholder="unitprice" required>
        <div class="checkbox">
          <label>
            <input type="checkbox" value="remember-me"> Remember me
          </label>
        </div>
        <button class="btn btn-lg btn-primary btn-block" type="submit">添加</button>
      </s:form>

    </div> 
   <script src="<%=basePath%>js/ie10-viewport-bug-workaround.js"></script> 
    <!-- <s:textfield name="dog.dogname" label="狗狗"></s:textfield>
     <s:textfield name="dog.unitprice" label="价钱"></s:textfield>
     <s:submit value="保存"></s:submit> --> 
   
  </body>
</html>
