
<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html lang="en">
  <head>
    <base href="<%=basePath%>">
    
    <title>直接跳转到显示所有Food的页面</title>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="shortcut icon" href="<%=basePath %>images/left.png">
	<!-- <link rel="stylesheet" type="text/css" href="<%=basePath%>css/main.css"> -->
	<link rel="stylesheet" type="text/css" href="<%=basePath%>css/font-awesome.css">
	<link rel="stylesheet" type="text/css" href="<%=basePath%>css/main.css">
	<link rel="stylesheet" type="text/css" href="<%=basePath%>css/new.css">
	
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	
   	<!-- <link rel="stylesheet" type="text/css" href="css/new.css"> -->
   
  </head>
  
  <body>
     <header>
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
		       <c:when test="${customer.name ==null}">
		         <li><a href="reg.jsp">注册</a></li>
		         <li><a href="login.jsp">登录</a></li>
		       </c:when>
		       <c:otherwise>
		         <c:out value="${customer.name }"></c:out> , 欢迎您!
		       </c:otherwise>
		    </c:choose>						
          </ul>
          </nav>
          
  </header>
  
<!--  <header>
       <div class="logo"><i class="fa fa-ul fa-cutlery"></i> Dog之家</div>
       <div class="account">
         <c:choose>
	       <c:when test="${customer.name ==null}">
	         <a href="reg.jsp">注册</a>
	         <a href="login.jsp">登录</a>
	       </c:when>
	       <c:otherwise>
	         <c:out value="${customer.name}"></c:out>, 欢迎您!
	       </c:otherwise>
	     </c:choose>
		    
       </div>
       </header>-->
      <main>
	    <s:form action="dog/dog_queryDogs" method="post">
	      <div class="search-box">
	     
	         <s:submit value="查 询" cssClass="search-go"></s:submit>
	          <input class="search" type="text" name="keyWords" placeholder="请输入关键词">
	      </div>
	      <br><br><br>
	      <ul>
	        <s:iterator value="dogList" status="status">
	          <li>
	             <img src="<%=basePath%><s:property value='filepath'/>">
	             <p>
	                <a href="dog/dog_showDetail?dog.dogid=<s:property value='dogid'/>">
	                  <s:property value="dogname"/>
	                </a>
	                <span class="price"> &yen;<s:property value="unitprice"/></span>
	                <a href="order/order_addOrder?dog.dogid=<s:property 
	                  value='dogid'/>&customer.name=<s:property value='#session.customer.name'/>" class="add">
	                  <i class="fa fa-cutlery"></i> 带回家
	                </a>
	             </p>
	          </li>
	        </s:iterator>
	      </ul>
	    </s:form>
	</main>
     
       

<!--  <s:form action="dog/dog_queryDogs" method="post">
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
   </s:form>  -->
  </body>
</html>
