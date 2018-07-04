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
	<link rel="stylesheet" type="text/css" href="<%=basePath%>css/main.css">
	<link rel="stylesheet" type="text/css" href="<%=basePath%>css/new.css">
  </head>
  
  <body>
   <header>
    <ul>
      
      <li class="banner">Take Me Home</li>
      
    </ul>
  <nav>
      <ul>
        <li><a href="first.jsp">首页</a></li>
        <li class="active"><a href="dog/dog_queryDogs?keyWords=">热卖推荐</a></li>
        
        <c:if test="${customer.name !=null&&customer.name!='admin'}">

            <li><a href="order/order_showOrder?customer.name=${session.customer.name}">购物车</a></li>
            <li><a href="index.jsp">狗狗收容</a></li>    
        </c:if>
        
        
        <c:if test="${customer.name =='admin'}">
            <li><a href="index.jsp">添加狗</a></li>
            <li><a href="ddog/ddog_queryDdogs?keyWords=">待审核</a></li>
        </c:if>
         <li><a href="comments/comments_queryall">论坛</a></li>
        <li><a href="MyClass.jsp">小课堂</a></li>
        <li><a href="aboutus.jsp">关于我们</a></li>
      </ul>
    
     <ul class="account">
     			<c:choose>
		       <c:when test="${customer.name ==null}">
		         <li><a href="reg.jsp">注册</a></li>
		         <li><a href="login.jsp">登录</a></li>
		       </c:when>
		       <c:otherwise>
		       <a href="change.jsp">
		         <c:out value="${customer.name }"></c:out></a>, 欢迎您!
		           <li><a href="customer/customer_re">注销</a></li>
		       </c:otherwise>
		    </c:choose>						
          </ul>
          </nav>     
  </header>

     <main>
	    <s:form action="ddog/ddog_queryDdogs" method="post">
             <div class="form-inline search-box">
              <div class="form-group pull-right mr200">
                <input class="search-field form-control input-sm" title="关键词" name="keyWords" placeholder="输入关键词...">
                <button class="btn btn-info btn-sm" type="submit">搜  索</button>
              </div> 
            </div>
	      <ul>
	     
	          <s:iterator value="ddogList" status="status">
	          <li>
	             <img src="<%=basePath%><s:property value='filepath'/>">
	             <p>
	                <a href="ddog/ddog_showDetail?ddog.ddogid=<s:property value='ddogid'/>">
	                  <s:property value="ddogname"/>
	                </a>
	                <span class="price"> &yen;<s:property value="unitprice"/></span>
	                <a href="dog/dog_addDog?dog.dogid=<s:property value='ddogid'/>&dog.dogname=<s:property value='ddogname'/>&dog.unitprice=<s:property value='unitprice'/>&dog.filepath=<s:property value='filepath'/>" class="add">
	                  <i class="fa fa-cutlery">通过</i>
	                </a>
	             
	                <a href="ddog/ddog_deleteDdog?ddog.ddogid=${ddogid}">
	                <i class="fa fa-cutlery">不可通过</i>
	                </a>
	             </p>
	          </li>
	        </s:iterator>
	       
	      </ul>
	    </s:form>
	</main>

  </body>
</html>
