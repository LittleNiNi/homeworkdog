<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!doctype html>

<html>
  <head>
    <base href="<%=basePath%>">
    <meta charset="utf-8">
    <title>购物车</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	
	<link rel="stylesheet" href="<%=basePath%>css/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="<%=basePath%>css/font-awesome.css">
	<link rel="stylesheet" type="text/css" href="<%=basePath%>css/main.css">
	
	<link rel="shortcut icon"  href="images/logo.jpg">
	<link rel="stylesheet" type="text/css" href="<%=basePath%>css/new.css">
	<style type="text/css">
@import url("css/cart.css");
	

.like {

}

</style>
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
        <c:if test="${customer.name !=null}">
        <li><a href="order/order_showOrder?customer.name=${session.customer.name}">购物车</a></li>
        </c:if>
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
		    <s:form action="order/order_queryOrders" method="post">
		      <div class="panel panel-info">
	                 <div class="panel-heading">
	                    <h3 class="panel-title">我的订单</h3>
	                 </div>
	                 <div class="panel-body panel-body-table">
	                   <div class="table-responsive" style="overflow-x:hidden">
	                      <table class="table table-striped table-bordered table-hover" id="dataTables-example">
	                         <thead>
	                           <tr>
	                              <th>序号</th>  
							          <th>订单号</th>
							          <th>狗狗品种</th>
							          <th>价格</th>
	                              </tr>
	                          </thead>
	                          <tbody>
	                              <s:iterator value="orderList" status="status">
	                                  <tr>
	                                      <td><s:property value="#status.index+1"></s:property></td>
	                                      <td><s:a href="order/order_showDetail?order.orderid=%{orderid}">
		               <s:property value="orderid"></s:property></s:a></td>
	                                      <td><s:property value="dog.dogname"></s:property></td>
	                                      <td class="center"><s:property value="dog.unitprice"></s:property></td>
	                                  </tr>
	                              </s:iterator>
	                          </tbody>
	                        </table>
	                      </div>
	                    </div>
	                </div>
		       </s:form>
	       </div>
	   </div>
	</main>
	
	<script src="js/jquery.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/jquery.dataTables.js"></script>
    <script src="js/dataTables.bootstrap.js"></script>
    <script>
       $(document).ready(function () {
           $('#dataTables-example').dataTable({
			   "language": {
                 "lengthMenu": "每页 _MENU_ 条记录",
                 "zeroRecords": "没有找到记录",
                 "info": "第 _PAGE_ 页 ( 共 _PAGES_ 页 )",
                 "infoEmpty": "无记录",
                 "infoFiltered": "(从 _MAX_ 条记录过滤)",
				 "sInfoPostFix": "",
				 "sSearch": "搜 索 : ",
				 "sUrl": "",
				 "sEmptyTable": "表中数据为空",
				 "sLoadingRecords": "载入中...",
				 "sInfoThousands": ",",
				 "oPaginate": {
					"sFirst": "首页",
					"sPrevious": "上页",
					"sNext": "下页",
					"sLast": "末页"
				 },
				 "oAria": {
				 "sSortAscending": ": 以升序排列此列",
				 "sSortDescending": ": 以降序排列此列"
			     },
				 
             }
		   });
       });
    </script>
  <div class="wi">
<p class="like">-------------猜你喜欢------------</p>
</div>

<div class="ll">

<img src="images/19.jpg" width="150" height="150" alt="/" >

<img src="images/20.jpg" width="150" height="150" alt="/">

<img src="images/21.jpg" width="150" height="150" alt="/">

<img src="images/22.jpg" width="150" height="150" alt="/">



</div>
  </body>
</html>
