<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!doctype html>
<html lang="en">
<head>
<base href="<%=basePath%>">
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>购物车</title>
    <link rel="stylesheet" href="css/reset_order.css">
    <link rel="stylesheet" href="css/carts.css">
    <link rel="stylesheet" href="css/new.css">
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

    <section class="cartMain">
        <div class="cartMain_hd">
            <ul class="order_lists cartTop">
                <li>狗狗图片</li>
                <li class="list_con">狗狗品种</li>
                <li class="list_info">赠品</li>
                <li class="list_price">单价</li>
                <li class="list_amount">数量</li>
                <li class="list_sum">金额</li>
                <li class="list_op">操作</li>
            </ul>
        </div>

        <div class="cartBox">
       
            
             <s:form action="order/order_queryOrders" method="post">
            <div class="order_content">
            <s:iterator value="orderList" status="status">
                <ul class="order_lists">
                    
                    <li class="list_con">
                        <div class="list_img"><a href="javascript:;"><img src="<%=basePath%><s:property value='dog.filepath'/>" ></a></div>
                        <div class="list_text">&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;
                        <s:property value="dog.dogname"></s:property></div>
                    </li>
                    <li class="list_info">
                        <p>狗狗牵引绳</p>
                        <p>数量：一个</p>
                    </li>
                    <li class="list_price">
                        <p class="price"><s:property value="dog.unitprice"></s:property></p>
                    </li>
                    <li class="list_amount">
                        <div class="amount_box">
                            <a href="javascript:;" class="reduce reSty">-</a>
                            <input type="text" value="1" class="sum">
                            <a href="javascript:;" class="plus">+</a>
                        </div>
                    </li>
                    <li class="list_sum">
                        <p class="sum_price"><s:property value="dog.unitprice"></s:property></p>
                    </li>
                    <li class="list_op">
                        <p class="del"><a href="order/order_deleteOrder?order.orderid=${orderid}" class="delBtn">移除商品</a></p>
                    </li>
                </ul>
                
             </s:iterator>
            </div>
            </s:form>
        </div>

       

       
        <!--底部-->
        <div class="bar-wrapper">
            <div class="bar-right">
                <div class="piece">已选商品<strong class="piece_num">0</strong>件</div>
                <div class="totalMoney">共计: <strong class="total_text">0.00</strong></div>
                <div class="calBtn"><a href="javascript:;">结算</a></div>
            </div>
        </div>
    </section>
    <section class="model_bg"></section>
   <!--   <section class="my_model">
        <p class="title">删除宝贝<span class="closeModel">X</span></p>
        <p>您确认不带他回家了吗？</p>
        <div class="opBtn"><a href="order/order_deleteOrder?order.orderid=${orderid}" class="dialog-sure">确定</a><a href="javascript:;" class="dialog-close">关闭</a></div>
    </section>-->
    <script src="http://www.jq22.com/jquery/jquery-1.10.2.js"></script>
    <script src="<%=basePath%>js/carts.js"></script>
   
</body>
</html>
