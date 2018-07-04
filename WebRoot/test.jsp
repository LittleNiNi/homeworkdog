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
  <meta charset="UTF-8">
  <title>Demo</title>
  <link rel="icon" href="favicons/1.png">
   <link rel="stylesheet" href="css/new_first.css">
 <link rel="stylesheet" href="css/index_first_test.css">
 <link rel="stylesheet" href="css/new.css">

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
            <c:if test="${customer.name !=null&&customer.name!='admin'}">

        <li><a href="order/order_showOrder?customer.name=${session.customer.name}">购物车</a></li>

        </c:if>
        <li><a href="index.jsp">狗狗收容</a></li>
        <li><a href="aboutus.jsp">关于我们</a></li>
     <c:if test="${customer.name =='admin'}">

        <li><a href="ddog/ddog_queryDdogs?keyWords=">待审核</a></li>

        </c:if>
        <li><a href="MyClass.jsp">小课堂</a></li>
       <li><a href="change.jsp">修改个人信息</a></li>
       <li><a href="game.jsp">游戏</a></li>
       <li><a href="first.jsp">test</a></li>
      </ul>
    
     <ul class="account">
     			<c:choose>
		       <c:when test="${customer.name ==null}">
		         <li><a href="reg.jsp">注册</a></li>
		         <li><a href="login.jsp">登录</a></li>
		       </c:when>
		       <c:otherwise>
		       <a href="change.jsp">
		         <c:out value="${customer.name }"></c:out> </a>, 欢迎您!
		           <li><a href="customer/customer_re">注销</a></li>
		       </c:otherwise>
		    </c:choose>						
          </ul>
          </nav>     
  </header>


</body>
</html>