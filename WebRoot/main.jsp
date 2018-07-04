<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>热卖推荐</title>
  <base href="<%=basePath%>">
<link rel="shortcut icon"  href="images/logo.jpg">
  <link rel="stylesheet" href="css/main_reset_first.css">
  <link rel="stylesheet" href="css/main_index_first.css">
  <link rel="stylesheet" href="<%=basePath%>css/bootstrap.min.css">
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

<div class="main">
	    <s:form action="dog/dog_queryDogs" method="post">
            <div class="form-inline search-box">
              <div class="form-group pull-right mr200">
                <input class="search-field form-control input-sm" title="关键词" name="keyWords" placeholder="输入关键词...">
                <button class="button button-glow button-border button+-rounded button-primary" type="submit" >搜  索</button>
                
              </div> 
            </div>
            <br><br>
            <p></p>
            <div>
            </div>
  
 
    <div class="main-inner body-width">
    
      
      <div class="main-cont main-recommend">
        
        <ul class="main-cont__list clearfix" >
        <s:if test="#session.customer.name =='admin'">
	        <s:iterator value="dogList" status="status">
	          <li class="item">	          
	          <a class="pic" >
	           <img src="<%=basePath%><s:property value='filepath'/>" height="224px" width="224px">
	           </a>
	                 
	          <div class="info">
              <a href="dog/dog_showDetail?dog.dogid=<s:property value='dogid'/>" class="title">
              <s:property value="dogname"/> 
              </a>
              <span >&yen;<s:property value="unitprice"/></span>
              <a href="dog/dog_showEdit?dog.dogid=<s:property 
	                  value='dogid'/>" class="icon-text__pink purchase">
	                  <i>编辑</i> 
	                </a>
	                &nbsp;&nbsp;<a href="dog/dog_deleteDog?dog.dogid=<s:property 
	                  value='dogid'/>" class="icon-text__pink purchase">
	                  <i>删除</i> 
	                </a>
            </div>
	          </li>
	        </s:iterator>
	        </s:if>
	        <s:else>
	          <s:iterator value="dogList" status="status">
	           <li class="item">
	            <a class="pic" href="dog/dog_showDetail?dog.dogid=<s:property value='dogid'/>">
	           <img src="<%=basePath%><s:property value='filepath'/>" height="224px" width="224px">
	           </a>
	           <div class="info">
              <a href="dog/dog_showDetail?dog.dogid=<s:property value='dogid'/>" class="title"><s:property value="dogname"/> </a>
              <span >&yen;<s:property value="unitprice"/></span>
              <a href="order/order_addOrder?dog.dogid=<s:property 
	                  value='dogid'/>&customer.name=<s:property value='#session.customer.name'/>" class="icon-text__pink purchase">
	                  <i >带回家</i>
	                </a>
            </div>
	             
	          </li>
	        </s:iterator>
	        </s:else>
          
        </ul>
      </div>
      
     
    </div>
   
  </div>
<!--  <s:form action="dog/dog_queryDogs" method="post">
            <div class="form-inline search-box">
              <div class="form-group pull-right mr200">
                <input class="search-field form-control input-sm" title="关键词" name="keyWords" placeholder="输入关键词...">
                <button class="button button-glow button-border button+-rounded button-primary" type="submit" >搜  索</button>
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
	                  <i class="fa fa-pencil"></i> 
	                </a>
	             </p>
	          </li>
	        </s:iterator>
	        </s:if>
	        <s:else>
	          <s:iterator value="dogList" status="status">
	          <li class="item">
	            <a href="dog/dog_showDetail?dog.dogid=<s:property value='dogid'/>">
	           <img src="<%=basePath%><s:property value='filepath'/>" >
	           </a>
	           <div class="info">
              <a href="#" class="title"><s:property value="dogname"/> </a>
              <span class="price">&yen;<s:property value="unitprice"/></span>
              <a href="order/order_addOrder?dog.dogid=<s:property 
	                  value='dogid'/>&customer.name=<s:property value='#session.customer.name'/>" class="add-order">
	                  <i >带回家</i>
	                </a>
            </div>
	             
	          </li>
	        </s:iterator>
	        </s:else>
	      </ul>
	    </s:form> -->
  


  <script src="http://www.jq22.com/jquery/jquery-1.10.2.js"></script>
  <script src="js/script.first.js"></script>
</s:form>
</main>
</body>
</html>
