<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html>
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>显示狗狗详情</title>
    <meta charset="utf-8">
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
		       <c:when test="${customer.name 

 ==null}">
		         <li><a href="reg.jsp">注册</a></li>
		         <li><a href="login.jsp">登录</a></li>
		       </c:when>
		       <c:otherwise>
		         <c:out value="${customer.name 

}"></c:out> , 欢迎您!
		       </c:otherwise>
		    </c:choose>						
          </ul>
          </nav>
          
  </header>
     <s:form action="dog/dog_editDog">
       <h1>编辑狗</h1>
       <s:hidden name="dog.dogid"></s:hidden>
       <s:textfield name="dog.dogname" label="美食名称"></s:textfield>
       <s:textfield name="dog.unitprice" label="单价"></s:textfield>
       <s:submit value="提交"></s:submit>
     </s:form>
  </body>
</html>
