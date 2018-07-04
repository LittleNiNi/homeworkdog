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
  <title>首页</title>
  <base href="<%=basePath%>">

  <link rel="stylesheet" href="css/reset_first.css">
  <link rel="stylesheet" href="css/index_first.css">
  <link rel="stylesheet" href="css/new_first.css">
  <link rel="stylesheet" type="text/css" href="css/main.css"/>
  <link rel="stylesheet" type="text/css" href="css/new.css"/>
    <link rel="shortcut icon"  href="images/logo.jpg">
    
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
		         <c:out value="${customer.name }"></c:out></a>,欢迎您!
		           <li><a href="customer/customer_re">注销</a></li>
		       </c:otherwise>
		    </c:choose>						
          </ul>
          </nav>     
  </header>

 
  <div class="main" >
 
    <div class="main-inner body-width">
      
      
      
      
      <div class="banner clearfix">
        
        
        
        
        <div class="slider" id="slider">
          <ul class="slider-wrapper">
            <li class="item" data-title="狗狗需要你的宠爱，快带TA回家~">
              <img src="images/10.jpg" alt="#">
            </li>
            <li class="item" data-title="第一次养狗束手无策？小课堂帮你解决" data-author="by 二狗">
              <img src="images/8.jpg" alt="#">
            </li>
            <li class="item" data-title="狗狗需要你的宠爱，快带TA回家~" data-author="by Liv">
              <img src="images/8.jpg" alt="#">
            </li>
            <li class="item" data-title="狗狗需要你的宠爱，快带TA回家~" data-author="by 郑南音">
              <img src="images/9.jpg" alt="#">
            </li>
            <li class="item" data-title="狗狗需要你的宠爱，快带TA回家~">
              <img src="images/5.jpg" alt="#">
            </li>
          </ul>
          <a href="javascript:;" class="slider-prev"></a>
          <a href="javascript:;" class="slider-next"></a>
          <div class="slider-title">
            <h2></h2>
            <span></span>
          </div>
          <div class="slider-btns">
            <span class="item"></span>
            <span class="item"></span>
            <span class="item"></span>
            <span class="item"></span>
            <span class="item"></span>
          </div>
        </div>
        
        
        
        
        <div class="banner-info">
          <div class="news body-border">
            <ul>
              <li class="title">社区热点</li>
              <li class="link">
                <a href="MyClass.jsp">狗狗课堂</a>
                <span></span>
                <a href="order/order_showOrder?customer.name=${session.customer.name}">购物车</a>
                <span></span>
                <a href="dog/dog_queryDogs?keyWords=">热卖推荐</a>
                <span></span>
                <a href="#">蠢萌蠢萌的狗狗</a>
                <span></span>
                <a href="#">论坛</a>
                <span></span>
                <a href="aboutus">关于我们</a>
                <span></span>
                <a href="game.jsp">小游戏</a>
                <span></span>
              </li>
              <li class="choose">
                <a href="MyClass.jsp" target="_blank">第一次养狗</a>
              </li>
              <li class="assistant">
                <p>狗狗论坛:  <a href="#">与大家一起讨论</a></p>
              </li>
            </ul>
          </div>
          <div class="app body-border"><a href="first.jsp"></a></div>
        </div>
      
      
      
      
      
      </div>
     
     
     
     
     
     
      <div class="main-cont main-album">
        <div class="main-cont__title">
          <h3>学习养狗小技巧</h3>
          <a href="MyClass.jsp" class="more" target="_blank">小课堂></a>
        </div>
        <ul class="main-cont__list clearfix">
          <li class="item">
            <a href="#" class="pic"><img src="images/class_23.png" alt="#"></a>
            <div class="info">
              <a href="#" class="title" target="_blank"> 敲黑板！养狗需要注意这些哦~</a>
              <p> 2255人收藏</p>
              <p>by <a href="#" class="author">Liv</a></p>
            </div>
          </li>
          <li class="item">
            <a href="class1.jsp" class="pic" target="_blank"><img src="images/b4.jpg" alt="#"></a>
            <div class="info">
              <a href="class1.jsp" class="title" target="_blank">第一次养狗，该准备些什么好呢？</a>
              <p>1998人收藏</p>
              <p>by <a href="#" class="author">Liv</a></p>
            </div>
          </li>
          <li class="item">
            <a href="class3.jsp" class="pic" target="_blank"><img src="images/b2.jpg" alt="#"></a>
            <div class="info">
              <a href="class3.jsp" class="title" target="_blank">消毒很重要，病菌哪里逃？</a>
              <p>2048人收藏</p>
              <p>by <a href="#" class="author">Liv</a></p>
            </div>
          </li>
          <li class="item">
            <a href="class4.jsp" class="pic" target="_blank"><img src="images/b1.jpg" alt="#"></a>
            <div class="info">
              <a href="class4.jsp" class="title" target="_blank">那么多玩具，TA都适合？</a>
              <p>2376人收藏</p>
              <p>by <a href="#" class="author">Liv</a></p>
            </div>
          </li>
          <li class="item">
            <a href="class2.jsp" class="pic" target="_blank"><img src="images/a1.jpg" alt="#"></a>
            <div class="info">
              <a href="class2.jsp" class="title" target="_blank">TA的狗粮，选对了吗？</a>
              <p>7896人收藏</p>
              <p>by <a href="#" class="author">Liv</a></p>
            </div>
          </li>
        </ul>
      </div>
      
      
      
      
      
      
     <!-- <div class="main-cont main-recommend">
        <div class="main-cont__title">
          <h3>可爱的狗狗们</h3>
         <a href="dog/dog_queryDogs?keyWords=" class="more">更多狗狗></a>
        </div>
        <ul class="main-cont__list clearfix">
         <s:form action="dog/dog_queryDogs" method="post">
          <li class="item">
            <a href="#" class="pic"><img src="<%=basePath%><s:property value='dog.filepath'/>" alt="#"></a>
            <div class="info">
              <a href="#" class="title">夹克</a>
              <span>18739人在逛</span>
              <a href="#" class="icon-text__pink purchase">带回家</a>
            </div>
          </li>
          <li class="item">
            <a href="#" class="pic"><img src="images/cont/main_img7.jpg" alt="#"></a>
            <div class="info">
              <a href="#" class="title">夹克</a>
              <span>18739人在逛</span>
              <a href="#" class="icon-text__pink purchase">带回家</a>
            </div>
          </li>
          <li class="item">
            <a href="#" class="pic"><img src="images/cont/main_img8.jpg" alt="#"></a>
            <div class="info">
              <a href="#" class="title">夹克</a>
              <span>18739人在逛</span>
              <a href="#" class="icon-text__pink purchase">带回家</a>
            </div>
          </li>
          <li class="item">
            <a href="#" class="pic"><img src="images/cont/main_img9.jpg" alt="#"></a>
            <div class="info">
              <a href="#" class="title">夹克</a>
              <span>18739人在逛</span>
              <a href="#" class="icon-text__pink purchase">带回家</a>
            </div>
          </li>
          <li class="item">
            <a href="#" class="pic"><img src="images/cont/main_img10.jpg" alt="#"></a>
            <div class="info">
              <a href="#" class="title">夹克</a>
              <span>18739人在逛</span>
              <a href="#" class="icon-text__pink purchase">带回家</a>
            </div>
          </li>
          </s:form>
        </ul>
      </div> --> 
     
    
    
    </div>
   
  </div> 

  <footer class="footer">
    <div class="footer-container">
      <div class="footer-link">
        <div class="footer-link__item">
          <h4 class="footer-title">关于我们</h4>
          <ul class="footer-list">
            <li class="item"><a href="aboutus.jsp">关于我们</a></li>
            <li class="item">帮助中心</li>
            <li class="item">加入我们</li>
            <li class="item"><a href="#">联系我们</a></li>
            <li class="item">标签集</li>
            <li class="item">商务合作</li>
            <li class="item">免责声明</li>
          </ul>
        </div>
        <div class="footer-link__item">
          <h4 class="footer-title"></h4>
          <ul class="footer-list">
            <li class="item">关于我们</li>
            <li class="item">帮助中心</li>
            <li class="item">加入我们</li>
          </ul>
        </div>
        <div class="footer-link__item">
          <div class="footer-orcode"><img src="images/logo.jpg" alt="#"></div>
          <div class="orcode-text">
            
          </div>
        </div>
        <div class="footer-link__item">
          <h4 class="footer-title">关注我们</h4>
          <ul class="footer-list">
            <li class="item"><a href="#">关于我们</a></li>
            <li class="item"><a href="#">帮助中心</a></li>
          </ul>
        </div>
        <div class="footer-link__item">
          <h4 class="footer-title">友情链接</h4>
          <ul class="footer-list">
            <li class="item"><a href="#">关于我们</a></li>
            <li class="item"><a href="#">狗狗论坛</a></li>
            <li class="item"><a href="#">关于我们</a></li>
            <li class="item"><a href="#">狗狗论坛</a></li>
            <li class="item"><a href="#">关于我们</a></li>
            <li class="item"><a href="#">狗狗论坛</a></li>
            <li class="item"><a href="#">关于我们</a></li>
            <li class="item"><a href="#">狗狗论坛</a></li>
          </ul>
        </div>
      </div>
      <div class="fopter-copyright">
        <p>©2018 四小帮版权所有。</p>
      </div>
    </div>
  </footer>


  <script src="http://www.jq22.com/jquery/jquery-1.10.2.js"></script>
  <script src="js/script.first.js"></script>

</body>
</html>
