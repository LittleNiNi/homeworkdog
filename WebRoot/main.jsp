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
	    <s:form action="dog/dog_queryDogs" method="post">
            <div class="form-inline search-box">
              <div class="form-group pull-right mr200">
                <input class="search-field form-control input-sm" title="关键词" name="keyWords" placeholder="输入关键词...">
                <button class="button button-glow button-border button-rounded button-primary" type="submit" >搜  索</button>
              </div> 
            </div>
            <p></p>
            <div>
            </div>
	      <ul>
	      <s:if test="#session.customer.name =='admin'">
	        <li>		        
		            <div class="add"><a href="index.jsp"><i class="fa fa-plus"></i> 添加狗</a></div>
		              <p>点击上面的链接可以添加一种狗</p>		        
	        </li>
	        <s:iterator value="dogList" status="status">
	          <li>
	             <img src="<%=basePath%><s:property value='filepath'/>">
	             <p>
	                <a href="dog/dog_showDetail?dog.dogid=<s:property value='dogid'/>">
	                  <s:property value="dogname"/>
	                </a>
	                <span class="price"> &yen;<s:property value="unitprice"/></span>
	                <a href="dog/dog_showEdit?dog.dogid=<s:property 
	                  value='dogid'/>">
	                  <i class="fa fa-pencil"></i> 
	                </a>
	                &nbsp;&nbsp;<a href="dog/dog_deleteDog?dog.dogid=<s:property 
	                  value='dogid'/>">
	                  <i class="fa fa-trash"></i> 
	                </a>
	             </p>
	          </li>
	        </s:iterator>
	        </s:if>
	        <s:else>
	          <s:iterator value="dogList" status="status">
	          <li>
	             <img src="<%=basePath%><s:property value='filepath'/>">
	             <p>
	                <a href="dog/dog_showDetail?dog.dogid=<s:property value='dogid'/>">
	                  <s:property value="dogname"/>
	                </a>
	                <span class="price"> &yen;<s:property value="unitprice"/></span>
	                <a href="order/order_addOrder?dog.dogid=<s:property 
	                  value='dogid'/>&customer.name=<s:property value='#session.customer.name'/>" class="add-order">
	                  <i class="fa fa-cutlery"></i>带回家
	                </a>
	             </p>
	          </li>
	        </s:iterator>
	        </s:else>
	      </ul>
	    </s:form>
	</main>
	<!-- 
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
	 -->
  </body>
</html>
