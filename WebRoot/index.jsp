<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML >
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>狗狗热卖</title>
    <meta charset="utf-8">
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	
	<link href="<%=basePath%>css/bootstrap.min.css" rel="stylesheet">
    <link href="<%=basePath%>css/ie10-viewport-bug-workaround.css" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="css/font-awesome.css">
    <link href="css/main.css" rel="stylesheet" type="text/css" />
    <link href="<%=basePath%>css/signin.css" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="css/new.css"/>
   
    <link rel="shortcut icon"  href="images/logo.jpg">
  
    
    <script  type="text/javascript" src="${pageContext.request.contextPath }/js/jquery.min.js"></script>
    <script  type="text/javascript" src="${pageContext.request.contextPath }/js/bootstrap.min.js"></script>
	<script  type="text/javascript" src="${pageContext.request.contextPath }/js/bootstrap-fileupload.js"></script>
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
		         <c:out value="${customer.name }"></c:out> </a>, 欢迎您!
		           <li><a href="customer/customer_re">注销</a></li>
		       </c:otherwise>
		    </c:choose>						
          </ul>
          </nav>     
  </header>

  <main class="container-fluid">
	 <div class="row">
	     <div class="col-md-10">
		      <s:form action="ddog/ddog_addDdog" cssClass="form-horizontal" enctype="multipart/form-data">
		      <!--  <s:hidden name="dog.dogid"/>-->
			<div class="panel panel-success">
				<div class="panel-heading">
						<h4 class="panel-title"><i class="fa fa-cutlery"></i>添加狗狗</h4>
				</div>
				<div class="panel-body">
				       <div class="form-group">
						   <label class="control-label col-md-3">狗狗名称</label>			
				           <div class="col-md-4">
					            <input type="text" name="ddog.ddogname" value="<s:property value='ddog.ddogname'/>"  class="form-control input-sm" required>
				           </div>
				       </div>
				       <div class="form-group">
						     <label class="control-label col-md-3">狗狗单价</label>
				             <div class="col-md-2">
					            <input type="text" name="ddog.unitprice" value="<s:property value='ddog.unitprice'/>" class="form-control input-sm" placeholder="&yen;" required>
				             </div>
				       </div>
				       <div class="form-group">
     				         <label class="control-label col-md-3">狗狗图片</label>				
     	 	 	             <div class="col-md-4">
     	 	 	
				                  <div class="fileupload fileupload-new" data-provides="fileupload">
				                        <div class="fileupload-new thumbnail" style="width: 200px;height:150px;">
						                      <img src="<%=basePath%><s:property value='ddog.filepath'/>" alt=""/>
				                        </div>
				                        <div class="fileupload-preview fileupload-exists thumbnail" style="max-width: 200px;max-height: 150px;line-height: 20px;">
				                        </div>
				
				                        <div>
					                         <span class="btn btn-file btn-primary"><span class="fileupload-new">浏览</span>				
					                         <span class="fileupload-exists"> 浏览</span><input type="file" name="ddogPhoto"></span>
					                         <a href="#" class="btn btn-danger fileupload-exists" data-dismiss="fileupload">取消</a>	
					                        
				                        </div>
				                  </div>
				
				             </div>
				
				         </div>
				         <div class="form-group col-md-3">
					           <button type="submit" class="btn btn-success pull-right">提交</button>	
				         </div>
				   </div>
		      </div>
				   
			
		   </s:form>
		</div>
  </div>
		
			</main>
			</body>
			</html>
			

