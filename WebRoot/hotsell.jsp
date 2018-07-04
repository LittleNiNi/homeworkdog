<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html>
<html lang="en-US" prefix="og:http://ogp.me/ns#" class="fontsAreLoaded">
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'hotsell.jsp' starting page</title>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="shortcut icon"  href="images/logo.jpg">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

	<link rel="stylesheet" type="text/css" href="<%=basePath%>css/font-awesome.css">
	<link rel="stylesheet" type="text/css" href="<%=basePath%>css/button.css">
	<link rel="stylesheet" type="text/css" href="<%=basePath%>css/main.css">
	
	
	<link href="<%=basePath%>css/bootstrap.css" rel="stylesheet" type="text/css" media="all"/><!-- 显示搜索 -->
<!---css--->
<link href="css/bootstrap1.css" rel='stylesheet' type='text/css' />
<link href="css/style1.css" rel='stylesheet' type='text/css' />

<!---css--->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!---js--->
<script src="js/jquery-1.12.0.min.js"></script>
<script src="js/bootstrap.js"></script>
<!---js--->
<!--JS for animate-->
	<link href="css/animate.css" rel="stylesheet" type="text/css" media="all">
	<script src="js/wow.min.js"></script>
		<script>
			new WOW().init();
		</script>
	<!--//end-animate-->
<!---webfont--->
<link href='https://fonts.googleapis.com/css?family=Ubuntu+Condensed' rel='stylesheet' type='text/css'>
<link href='https://fonts.googleapis.com/css?family=Open+Sans:400,300,300italic,400italic,600,600italic,700,700italic,800,800italic' rel='stylesheet' type='text/css'>
<!---webfont--->
<link rel="stylesheet" type="text/css" href="css/style_common.css" />
 <link rel="stylesheet" type="text/css" href="css/style9.css" />   
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
         <li><a href="video.jsp">小课堂</a></li>
     <c:if test="${customer.name =='admin'}">

        <li><a href="ddog/ddog_queryDdogs?keyWords=">待审核</a></li>

        </c:if>
         
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
 

	<!---welcome-->
	<main>
	<s:form action="dog/dog_queryDogs" method="post">
	 <div class="form-inline search-box">
              <div class="form-group pull-right mr200">
                <input class="search-field form-control input-sm" title="关键词" name="keyWords" placeholder="输入关键词...">
                <button class="button button-glow button-border button-rounded button-primary" type="submit" >搜  索</button>
              </div> 
            </div>
       	</s:form>
</main>    
<!---product-->
		<div class="product-section">
			<div class="container">
				<h3>Popular Products</h3>
				<div class="product-grids">
					<div class="col-md-6 product-grid wow fadeInLeft animated" data-wow-delay=".5s">
						<div class="product-left">
						<img src="images/p.jpg" class="img-responsive" alt=""/>	
						</div>
						<div class="product-right">
							<h4>Dolor Sit</h4>
							<p>Nsatolernatur auts oditaut miertase vertas.Measnseqe ustur magni dolores eoqus ratione voluptate.</p>
							<a href="gallery.html"><i class="glyphicon glyphicon-circle-arrow-right" aria-hidden="true"></i></a>
						</div>
						<div class="clearfix"></div>
					</div>
					<div class="col-md-6 product-grid wow fadeInRight animated" data-wow-delay=".5s">
						<div class="product-left">
						<img src="images/p1.jpg" class="img-responsive" alt=""/>	
						</div>
						<div class="product-right">
							<h4>Consequat</h4>
							<p>Nsatolernatur auts oditaut miertase vertas.Measnseqe ustur magni dolores eoqus ratione voluptate.</p>
							<a href="gallery.html"><i class="glyphicon glyphicon-circle-arrow-right" aria-hidden="true"></i></a>
						</div>
						<div class="clearfix"></div>
					</div>
					<div class="clearfix"></div>
				</div>
				<div class="product-grids">
					<div class="col-md-6 product-grid1 wow fadeInLeft animated" data-wow-delay=".5s">
						<div class="product1-left">
							<h4>Dolores Btrs</h4>
							<p>Nsatolernatur auts oditaut miertase vertas.Measnseqe ustur magni dolores eoqus ratione voluptate.</p>
							<a href="gallery.html"><i class="glyphicon glyphicon-circle-arrow-right" aria-hidden="true"></i></a>
						</div>
						<div class="product1-right">
							<img src="images/p2.jpg" class="img-responsive" alt=""/>	
						</div>
						<div class="clearfix"></div>
					</div>
					<div class="col-md-6 product-grid1 wow fadeInRight animated" data-wow-delay=".5s">
						<div class="product1-left">
							<h4>Nam aliquam</h4>
							<p>Nsatolernatur auts oditaut miertase vertas.Measnseqe ustur magni dolores eoqus ratione voluptate.</p>
							<a href="gallery.html"><i class="glyphicon glyphicon-circle-arrow-right" aria-hidden="true"></i></a>
						</div>
						<div class="product1-right">
							<img src="images/p3.jpg" class="img-responsive" alt=""/>	
						</div>
						<div class="clearfix"></div>
					</div>
					<div class="clearfix"></div>
				</div>
			</div>
		</div>
		
		<!---product-->

	
	
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
	            <a href="dog/dog_showDetail?dog.dogid=<s:property value='dogid'/>">
	           <img src="<%=basePath%><s:property value='filepath'/>" >
	           </a>
	             <p>
	                  <s:property value="dogname"/> 
	                <span class="price"> &yen;<s:property value="unitprice"/></span>
	                <a href="order/order_addOrder?dog.dogid=<s:property 
	                  value='dogid'/>&customer.name=<s:property value='#session.customer.name'/>" class="add-order">
	                  <i >带回家</i>
	                </a>
	             </p>
	          </li>
	        </s:iterator>
	        </s:else>
	      </ul>
	    </s:form>
	
	

</body>
</html>







