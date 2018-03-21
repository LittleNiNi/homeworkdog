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
    
    <title>直接跳转到显示所有Food的页面</title>
    <meta charset="utf-8">
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="shortcut icon" href="<%=basePath %>images/left.png">
	<link rel="stylesheet" type="text/css" href="<%=basePath%>css/main.css">
	<link rel="stylesheet" type="text/css" href="<%=basePath%>css/font-awesome.css">
	
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
  </head>
  
  <body>
   <header>
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
       
		    
    </header>
    <s:if test="#session.customer.name=='admin'">
    <li>
    <div class="add"><a href="index.jsp"><i class="fa faplus"></i>添加狗狗</a></div>
    <p>点击上面的链接可以添加一种狗狗</p>
    </li>
    <s:iterator value="dogList" status="status">
    <li>
    <img src="<%=basePath %><s:property value='filepath'/>">
    <p>
    <a href="dog/dog_showDetail?dog.dogid=<s:property value='dogid'/>">
    <s:property value="dogname"/>
    </a>
    <span class="price">&yen;<s:property value="unitprice"/></span>
    <a href="dog/dog_showEdit?dog.dogid=<s:property value='dogid'/>">
    <i class="fa fa-trash"></i>
    </a>
    </p>
    </li>
    </s:iterator>
    </s:if>
    <s:else>
    <s:iterator value="dogList" status="status">
    <li>
    <img src="<%=basePath %><s:property value='filepath'/>">
    <p>
    <a href="dog/dog_showDetail?dog.dogid=<s:property value='dogid'/>">
    <s:property value="dogname"/>
    </a>
    <span class="price">&yen;<s:property value="unitprice"/></span>
    <a href="dog/dog_showEdit?dog.dogid=<s:property value='dogid'/>">
    <i class="fa fa-trash"></i>来一份
    </a>
    </p>
    </li>
    </s:iterator>
    </s:else>
    </body>
    </html>