<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href='http://fonts.useso.com/css?family=Open+Sans:300,400,600,700' rel='stylesheet' type='text/css'>
    <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="css/templatemo-style.css">
    <title>课堂</title>
</head>

<body>
<div class="t-floor clearfix">
<div class="floorphoto ftc">
<a><img src="images/class2.png" class="db ct" width="100%"></a>
</div>
</div>

    <div class="container">
        <section class="col-md-12 content" id="home">
           <div class="col-lg-6 col-md-6 content-item">
               <img src="images/class_21.png" alt="Image" class="tm-image">
           </div>
           <div class="col-lg-6 col-md-6 content-item content-item-1 background">
               <h1 class="main-title text-center dark-blue-text" style="font-weight:bold;">狗粮为狗生第一大事</h1>
               <h3 class="section-text">&emsp; 吃乃狗生第一大事，所以当然要先准备狗狗喜欢的食物!但因为饭菜不符合狗狗的营养需求，而且含有的调料对狗狗皮肤、内脏等器官有危害，饭渣残留在狗狗的口腔也容易造成口腔疾病。

                </h3>
                 <h4 class="section-text">从便利性及营养配比来说，狗粮才是最适合狗狗的食物。对于刚到家的幼犬来说，幼犬配方粮是最佳的选择，因为幼犬跟成犬的营养需求不同，相比成犬老犬，对钙和蛋白质需要量更高，吃错了狗粮可对狗狗生长发育有影响哦! </h4>
               
           </div>
       </section>

       <section class="col-md-12 content padding" id="services">
        <div class="col-lg-6 col-md-6 col-md-push-6 content-item">
           <img src="images/class_22.png" alt="Image" class="tm-image">
       </div>
       <div class="col-lg-6 col-md-6 col-md-pull-6 content-item background flexbox">
           <h2 class="section-title">特别的需求给特别的它</h2>
           <h4 class="section-text">狗狗也会过敏，过敏会引起狗狗不明原因的瘙痒、腹泻、呕吐，对狗狗危害
非常大。所以为狗狗选择狗粮时，
要避开狗狗过敏物质，
如狗狗对
鸡肉过敏，就不要选择鸡肉配方。
如果不知道狗狗对何种物质过敏，
心
低敏粮就是过敏体质宝宝的最佳选择!

  低敏粮因其原料种类少，不使用容易过敏的原料，如牛肉、鱼肉、谷物等，而是采用不常见的原料，  如袋鼠肉，大大降低了接触到过敏原的可能性。
</h4>
          
          
           
       </div>

   </section>
   
   <div class="copyrights">Collect from <a href="http://www.cssmoban.com/" >浼佷笟缃戠珯妯℃澘</a></div>


   <section class="col-md-12 content" id="clients">
       <div class="col-lg-6 col-md-6 content-item">
           <img src="images/class_23.png" alt="Image" class="tm-image">
       </div>
       <div class="col-lg-6 col-md-6 content-item background flexbox">
           <h2 class="section-title">选颗粒，纠正坏习惯</h2>
           <p class="section-text">不同体型和年龄的狗狗咬合力不一样，会设计不同的狗粮颗粒大小。颗粒会影响进食速度，颗粒大小不合适狗狗可能
就不爱吃~  
</p>
           <p class="section-text">如果有暴食习惯的狗狗E博士提醒各位铲屎官- -定要给选择大颗粒的狗粮，咀嚼就会变慢，就能有效纠正进食过猛的状况啦!</p>
       </div>
   </section>








<script src="js/jquery.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/jquery.singlePageNav.min.js"></script>

<script>

// Check scroll position and add/remove background to navbar
function checkScrollPosition() {
    if($(window).scrollTop() > 50) {
      $(".fixed-header").addClass("scroll");
  } else {        
      $(".fixed-header").removeClass("scroll");
  }
}

$(document).ready(function () {   
    // Single page nav
    $('.fixed-header').singlePageNav({
        offset: 59,
        filter: ':not(.external)',
        updateHash: true        
    });

    checkScrollPosition();

    // nav bar
    $('.navbar-toggle').click(function(){
        $('.main-menu').toggleClass('show');
    });

    $('.main-menu a').click(function(){
        $('.main-menu').removeClass('show');
    });
});

$(window).on("scroll", function() {
    checkScrollPosition();    
});
</script>
</body>
</html>
