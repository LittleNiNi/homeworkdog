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
    <link rel="stylesheet" type="text/css" href="css/style_class.css">
    <title>课堂</title>
</head>

<body>
<div class="t-floor clearfix">
<div class="floorphoto ftc">
<a><img src="images/class3.png" class="db ct" width="100%"></a>
</div>
</div>

    <div class="container">
        <section class="col-md-12 content" id="home">
           <div class="col-lg-6 col-md-6 content-item">
               <img src="images/class_31.png" alt="Image" class="tm-image">
           </div>
           <div class="col-lg-6 col-md-6 content-item content-item-1 background">
               <h1 class="main-title text-center dark-blue-text" style="font-weight:bold;">日常小用品</h1>
               <h3 class="section-text">&emsp; 水盆、食盆、玩具、梳子等直接与狗
狗接触的小用品，可以用消毒液进行
浸泡，每周至少消毒1次。
狗厕所是最容易滋生细菌和病毒的地方，除了每天及时将狗狗的排泄物清理干净外，还需要进行消毒，每隔2-3周一一次，用消毒液清洗喷洒。

                </h3>
               <!--  <h4 class="section-text">从便利性及营养配比来说，狗粮才是最适合狗狗的食物。对于刚到家的幼犬来说，幼犬配方粮是最佳的选择，因为幼犬跟成犬的营养需求不同，相比成犬老犬，对钙和蛋白质需要量更高，吃错了狗粮可对狗狗生长发育有影响哦! </h4>-->
               
           </div>
       </section>

       <section class="col-md-12 content padding" id="services">
        <div class="col-lg-6 col-md-6 col-md-push-6 content-item">
           <img src="images/class_32.png" alt="Image" class="tm-image">
       </div>
       <div class="col-lg-6 col-md-6 col-md-pull-6 content-item background flexbox">
           <h2 class="section-title">狗窝</h2>
           <h4 class="section-text">最容易滋生细菌和病毒的地方，除了每天及时将狗狗的排泄物清理干净外，还需要进行消毒，每隔2-3周一一次，用消毒液清洗喷洒。
</h4>
          
          
           
       </div>

   </section>
   
   <div class="copyrights">Collect from <a href="http://www.cssmoban.com/" >浼佷笟缃戠珯妯℃澘</a></div>


   <section class="col-md-12 content" id="clients">
       <div class="col-lg-6 col-md-6 content-item">
           <img src="images/class_33.png" alt="Image" class="tm-image">
       </div>
       <div class="col-lg-6 col-md-6 content-item background flexbox">
           <h2 class="section-title">家庭环境</h2>
           <p class="section-text">  大量的细菌病原会藏匿在家庭环境中，为了避免狗狗感染，家庭环境应该定期进行消毒。喷洒消毒液，或者使用消毒液拖地进行环境消毒即可。
</p>
          
       </div>
   </section>


   <section class="col-md-12 content" id="contact">
       <div class="col-lg-6 col-md-6 col-md-push-6 content-item">
           <img src="images/class_34.png" alt="Image" class="tm-image">
       </div>
       <div class="col-lg-6 col-md-6 col-md-pull-6 content-item background flexbox">
           <h2 class="section-title">铲屎官自己</h2>
          
<p class="section-text">铲屎官外出后也同样需要注意哦!衣物、鞋子、手等与外界接触的地
方难免会沾染各种细菌病毒，所以在爱抚狗狗前，先把自身打理干净。

</p>

          
        <div id="msgSubmit" class="h3 text-center hidden">Message Submitted!</div>

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
