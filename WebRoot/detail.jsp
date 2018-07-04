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
    
    <title>显示狗狗详情</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link href="<%=basePath%>css/detail_style.css" rel="stylesheet" type="text/css" media="all" />
	<link href="<%=basePath%>css/bootstrap.css" rel="stylesheet" type="text/css" media="all"/>
	<link rel="shortcut icon"  href="images/logo.jpg">
	
	
	<link rel="stylesheet" href="css/shouye.css">
	<link rel="stylesheet" type="text/css" href="<%=basePath%>css/new.css">
	
	<script src="http://www.jq22.com/jquery/jquery-1.10.2.js"></script>
	<script   src="js/modernizr-custom-v2.7.1.min.js"></script>
	<script>
		$(document).ready(function(){
	var $miaobian=$('.Xcontent08>div');
	var $huantu=$('.Xcontent06>img');
	
	$miaobian.mousemove(function(){miaobian(this);});
	$miaobian1.click(function(){miaobian1(this);});
	function miaobian(thisMb){
		for(var i=0; i<$miaobian.length; i++){
			$miaobian[i].style.borderColor = '#dedede';
		}
		thisMb.style.borderColor = '#cd2426';

		$huantu[0].src = thisMb.children[0].src;
	}
	function miaobian1(thisMb1){
		for(var i=0; i<$miaobian1.length; i++){
			$miaobian1[i].style.borderColor = '#dedede';
		}
//		thisMb.style.borderColor = '#cd2426';
		$miaobian.css('border-color','#dedede');
		thisMb1.style.borderColor = '#cd2426';
		$huantu[0].src = thisMb1.children[0].src;
	}
			$(".Xcontent33").click(function(){
			var value=parseInt($('.input').val())+1;
       		$('.input').val(value);
		})

		$(".Xcontent32").click(function(){	
			var num = $(".input").val()
			if(num>0){
				$(".input").val(num-1);
			}			
			
		})

		})
	
		
	</script>
	
  </head>
  
<body>

<div class="Xcontent">
 
		<ul class="Xcontent01">
			
				<div class="Xcontent06"><img src="<%=basePath%><s:property value='dog.filepath'/>" ></div>
				<ol class="Xcontent08">
					<div class="Xcontent07"><img src="<%=basePath%><s:property value='dog.filepath'/>" ></div>
					<div class="Xcontent09"><img src="images/detail/chaiquan1.jpg"></div>
					<div class="Xcontent10"><img src="images/detail/chaiquan2.jpg"></div>
					<div class="Xcontent11"><img src="images/detail/chaiquan3.jpg"></div>
					<div class="Xcontent12"><img src="images/detail/chaiquan4.jpg"></div>
				</ol>
				<ol class="Xcontent13">
					<div class="Xcontent14"><a href="#"><p><c:out value="${dog.dogname }"></c:out></p></a></div>
					
					<div class="Xcontent16"><p>“狗是唯一一种金钱能买到的爱”</p></div>
					<div class="Xcontent17">
						<p class="Xcontent18">售价</p>
						<p class="Xcontent19">￥<span>69.00</span></p>
						<div class="Xcontent20">
							<p class="Xcontent21"></p>
							
							<p class="Xcontent22"></p>
						</div>
						<div class="Xcontent23">
							<p class="Xcontent24">赠品</p>
							<p class="Xcontent25">狗狗牵引绳一条&nbsp;&nbsp;&nbsp;&nbsp;        &nbsp;&nbsp;&nbsp;&nbsp;        </p>
						</div>
						
					</div>
					
					<div class="Xcontent26">
						<p class="Xcontent27">性别</p>
						<div class="Xcontent28"><img src="<%=basePath%><s:property value='dog.sex'/>" ></div>
						<!-- 显示数据库狗性别 -->	
					</div>
					<div class="Xcontent30">
						<p class="Xcontent31">数量</p>
						<div class="Xcontent32"></div>
						<form>	
            <input class="input" value="1"></form>
						<div class="Xcontent33"></div>

					</div>
					<!-- <div class="Xcontent34"><a href="#"><img src="images/detail/X17.png"></a></div>
					<div class="Xcontent35"> <a href="order/order_addOrder?dog.dogid=<s:property 
	                  value='dogid'/>&customer.name=<s:property value='#session.customer.name'/>" class="add-order"><img src="images/detail/X18.png"></a></div>
				 -->
				
			</ol>
		
			
			
		</ul>
	
	</div>

  </body>
</html>
