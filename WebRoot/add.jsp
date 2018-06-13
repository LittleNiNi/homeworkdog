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
    <link href="<%=basePath%>css/signin.css" rel="stylesheet">
    <link rel="shortcut icon"  href="images/logo.jpg">
     <script src="<%=basePath%>js/ie-emulation-modes-warning.js"></script>
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
  <main class="container-fluid">
	<div class="row">
		<div class="col-md-12">
			<s:form action="dog/dog_addDog" cssClass="form-horizontal" enctype="multipart/form-data">
				<s:hidden name="dog.dogid"/>
				<div class="panel panel-success">
					<div class="panel-heading">
						<h4 class="panel-title"><i class="fa fa-cutlery"></i>添加狗狗</h4>
					</div>
					<div class="panel-body">
						<div class="form-group">
							<label class="control-label col-md-3">狗狗名称</label>
							<div class="col-md-4">
								<input type="text" name="dog.dogname" value="<s:property value='dog.dogname'/>"  class="form-control input-sm" required>
							</div>
						</div>
						<div class="form-group">
							<label class="control-label col-md-3">狗狗单价</label>
							<div class="col-md-2">
								<input type="text" name="dog.unitprice" value="<s:property value='dog.unitprice'/>" class="form-control input-sm" placeholder="&yen;" required>
							</div>
						</div>
						<div class="form-group">
							<label class="control-label col-md-3">狗狗图片</label>
							<div class="col-md-5">
								<div class="fileupload fileupload-new" data-provides="fileupload">
									<div class="fileupload-new thumbnail" style="width: 200px;height:150px;">
										<img src="<%=basePath%><s:property value='dog.filepath'/>" alt=""/>
									</div>
									<div class="fileupload-preview fileupload-exists thumbnail" style="max-width: 200px;max-height: 150px;line-height: 20px;"></div>
								</div>
								<span class="btn btn-file btn-primary">
									<span class="fileupload-new">浏览</span>
									<span class="fileupload-exists"> 浏览</span>
									<input type="file" name="dogPhoto">
								</span>
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
	<script src="<%=basePath%>js/jquery.min.js"></script>
    <script src="<%=basePath%>js/bootstrap.min.js"></script>
	<script src="<%=basePath%>js/bootstrap-fileupload.js"></script>
			</body>
  <!--<body style="background:url(images/18.jpg) no-repeat 0% 0%/100% 100% ">
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
		         <c:out value="${customer.name }"></c:out> , 欢迎您!
		       </c:otherwise>
		    </c:choose>						
          </ul>
          </nav>
          
  </header>-->
  <!--  <div class="container">

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
      </s:form>-->

   
  <!--   <script src="<%=basePath%>js/ie10-viewport-bug-workaround.js"></script> -->
    <!-- <s:textfield name="dog.dogname" label="狗狗"></s:textfield>
     <s:textfield name="dog.unitprice" label="价钱"></s:textfield>
     <s:submit value="保存"></s:submit> --> 
</html>
