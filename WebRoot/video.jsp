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
  <meta charset="UTF-8">
  <title>Demo</title>
  <link rel="icon" href="favicons/1.png">

  <link rel="stylesheet" href="css/reset.css">
  <link rel="stylesheet" href="css/video.css">
  <link href="<%=basePath%>css/myclass.css" rel="stylesheet">
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


  <!-- 热门歌单 -->
  <div class="main" id="hotSong">
    <div class="main-inner">
      
      <div class="main-slider">
        <ul class="slider-wrapper">
          <li>
            <a href="barrage.jsp" class="img">
              <img src="images/a1.jpg" alt="#">
              <span class="mask"></span>
              <i class="icon-play"></i>
            </a>
            <div class="info">
              <div class="title">
                <a href="barrage.jsp">蝴蝶犬</a>
                <i class="icon-sprite"></i>
              </div>
              <a href="barrage.jsp" class="author">播放量：179.7万</a>
            </div>
          </li>
          <li>
            <a href="#" class="img">
              <img src="images/a2.jpg" alt="#">
              <span class="mask"></span>
              <i class="icon-play"></i>
            </a>
            <div class="info">
              <div class="title">
                <a href="#">比熊</a>
                <i class="icon-sprite"></i>
              </div>
              <a href="#" class="author">播放量：179.7万</a>
            </div>
          </li>
          <li>
            <a href="#" class="img">
              <img src="images/a3.jpg" alt="#">
              <span class="mask"></span>
              <i class="icon-play"></i>
            </a>
            <div class="info">
              <div class="title">
                <a href="#">贵宾犬</a>
                <i class="icon-sprite"></i>
              </div>
              <a href="#" class="author">播放量：179.7万</a>
            </div>
          </li>
          <li>
            <a href="#" class="img">
              <img src="images/a4.jpg" alt="#">
              <span class="mask"></span>
              <i class="icon-play"></i>
            </a>
            <div class="info">
              <div class="title">
                <a href="#">田园犬</a>
                <i class="icon-sprite"></i>
              </div>
              <a href="#" class="author">播放量：179.7万</a>
            </div>
          </li>
          <li>
            <a href="#" class="img">
              <img src="images/b1.jpg" alt="#">
              <span class="mask"></span>
              <i class="icon-play"></i>
            </a>
            <div class="info">
              <div class="title">
                <a href="#">博美</a>
                <i class="icon-sprite"></i>
              </div>
              <a href="#" class="author">播放量：179.7万</a>
            </div>
          </li>
          <li>
            <a href="#" class="img">
              <img src="images/b2.jpg" alt="#">
              <span class="mask"></span>
              <i class="icon-play"></i>
            </a>
            <div class="info">
              <div class="title">
                <a href="#">田园犬</a>
                <i class="icon-sprite"></i>
              </div>
              <a href="#" class="author">播放量：179.7万</a>
            </div>
          </li>
          <li>
            <a href="#" class="img">
              <img src="images/b3.jpg" alt="#">
              <span class="mask"></span>
              <i class="icon-play"></i>
            </a>
            <div class="info">
              <div class="title">
                <a href="#">柯基</a>
                <i class="icon-sprite"></i>
              </div>
              <a href="#" class="author">播放量：179.7万</a>
            </div>
          </li>
          <li>
            <a href="#" class="img">
              <img src="images/b4.jpg" alt="#">
              <span class="mask"></span>
              <i class="icon-play"></i>
            </a>
            <div class="info">
              <div class="title">
                <a href="#">金毛</a>
                <i class="icon-sprite"></i>
              </div>
              <a href="#" class="author">播放量：179.7万</a>
            </div>
          </li>
        </ul>
        <div class="slider-btns">
          <span class="cur"><i></i></span>
          <!-- <span><i></i></span> -->
          <span><i></i></span>
        </div>
      </div>
    </div>
    <div class="main-operate">
      <a href="javascript:;" class="slider-prev"><i class="icon-sprite"></i></a>
      <a href="javascript:;" class="slider-next"><i class="icon-sprite"></i></a>
    </div>
  </div>


  <script src="http://www.jq22.com/jquery/jquery-1.10.2.js"></script>
  <script src="js/script.js"></script>
  <div class="wenzhang">
  <div class="htmleaf-container">
                    <div class="single-member effect-2">
                        <div class="member-image">
                            <img src="images/class1.png" alt="Member">
                        </div>
                        <div class="member-info">
                            <h3>迎接汪小主</h3>
                            <h5>要准备些什么？大小便怎么教？如何呵护小主？</h5>
                            <p>可爱的汪小主来啦，铲屎官你做好准备了吗？ <br>刚到家的我需要你的细心呵护，你准备好了吗？赶紧来学习一下吧。</p>
                            <div class="social-touch">
                                <a class="fb-touch" href="class1.jsp">GO</a>
                                <a class="tweet-touch" href="class1.jsp"></a>
                                <a class="linkedin-touch" href="class1.jsp"></a>
                            </div>
                        </div>
                    </div>
                    
                    <div class="single-member effect-2">
                        <div class="member-image">
                            <img src="images/class2.png" alt="Member">
                        </div>
                        <div class="member-info">
                            <h3>吃乃人生第一大事</h3>
                            <h5>选粮要适龄；体型有别要应对；纠正换习惯；</h5>
                            <p>吃乃汪生第一大事，只有根据狗子自身来选才对，适合狗子的粮是最棒的，<br>才会让它保持健康活力。
                            </p>
                            <div class="social-touch">
                                <a class="fb-touch" href="class2.jsp">GO</a>
                                <a class="tweet-touch" href="class2.jsp"></a>
                                <a class="linkedin-touch" href="class2.jsp"></a>
                            </div>
                        </div>
                    </div>
                    
                    <div class="single-member effect-2">
                        <div class="member-image">
                            <img src="images/class3.png" alt="Member">
                        </div>
                        <div class="member-info">
                            <h3>消毒不简单</h3>
                            <h5>全方位贯彻消毒；选对消毒液</h5>
                            <p>看似萌蠢的汪星人身上会携带成千上万种细菌，并且随着狗狗的步伐，<br>遍布在经过的各个角落,  甚至感染至人身。<br>快来看看如何全方位消毒，看那七七四十九变的病菌往哪里逃!

</p>
                            <div class="social-touch">
                                <a class="fb-touch" href="class3.jsp">GO</a>
                                <a class="tweet-touch" href="class3.jsp"></a>
                                <a class="linkedin-touch" href="class3.jsp"></a>
                            </div>
                        </div>
                    </div>
                    
                    <div class="single-member effect-2">
                        <div class="member-image">
                            <img src="images/class4.png" alt="Member">
                        </div>
                        <div class="member-info">
                            <h3>啃咬玩具作用大</h3>
                            <h5>独处玩具解解闷；互动玩具助减肥；新奇玩具很有料</h5>
                            <p> 玩具是狗狗汪生必不可少的，各式各样的玩具也让铲屎官挑花眼!其实在不同的年龄阶段，玩具需求不一样。再大的狗狗，内心也是小宝宝。
                            </p>
                            <div class="social-touch">
                                <a class="fb-touch" href="class4.jsp">GO</a>
                                <a class="tweet-touch" href="class4.jsp"></a>
                                <a class="linkedin-touch" href="class4.jsp"></a>
                            </div>
                        </div>
                    </div>
</div>
</div>

</body>
</html>