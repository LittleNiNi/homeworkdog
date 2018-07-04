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
<a><img src="images/class4.png" class="db ct" width="100%"></a>
</div>
</div>

    <div class="container">
        <section class="col-md-12 content" id="home">
           <div class="col-lg-6 col-md-6 content-item">
               <img src="images/class_41.png" alt="Image" class="tm-image">
           </div>
           <div class="col-lg-6 col-md-6 content-item content-item-1 background">
               <h1 class="main-title text-center dark-blue-text" style="font-weight:bold;">第1步 &emsp;  缩小活动范围</h1>
               <h3 class="section-text">&emsp; 找到TA的地儿
家里活动范围大，狗狗不能快速找到指定排泄地点，便会方便解决，随地就拉。为了帮助狗狗快速找到排
泄地点，学会定点大小便，缩小活动范围是很有必要的。缩小范围还可以防止狗狗在训练期间在家到处乱尿，特别是对刚到家的幼犬来说，由于不熟悉环境，找不
到排泄地点儿乱尿，缩小范围就可以规范一点啦。 <br> 铲屎官可以利用围栏给狗狗圈出一块范围，这块范围就是你想要狗狗定点排泄的区域。
  在围栏范围内打造三个生活区域:休息区(放置航空箱/狗窝和玩具)饮食区  (放置食盆和水盆)、排泄区(尿垫/狗厕所)，三个区域不要重叠，并且保持一定距离。

                </h3>
                
           </div>
       </section>

       <section class="col-md-12 content padding" id="services">
        <div class="col-lg-6 col-md-6 col-md-push-6 content-item">
           <img src="images/class_43.png" alt="Image" class="tm-image">
       </div>
       <div class="col-lg-6 col-md-6 col-md-pull-6 content-item background flexbox">
        <h1 class="main-title text-center dark-blue-text" style="font-weight:bold;">第2步 &emsp;  开启训练模式</h1>
           <h4 class="section-text">训练时机
狗狗在进食后约10-20分钟内，较容易想上厕所。因此，
每当狗狗吃完饭后就可以抓住时机开始引导啦!当狗狗出现原地转圈的时候引导狗狗到指定的地方，鼓励它大小便，如重复“乖乖过来”。
  当狗狗有排泄意图或动作表现时，请不要有肢体上的打扰，但请在第一时间给予言语上的奖励。如“好棒或是Good!。
  狗狗在厕所或是尿片，上结束排泄的行为后，用手抚摸它的头及背部，并喂点零食进行奖励。
  当狗狗开始习惯在指定位置大小便之后，就可以扩大狗狗的活动范围，撤除围栏了。
</h4>
          
          
           
       </div>

   </section>
   
   <div class="copyrights">Collect from <a href="http://www.cssmoban.com/" >浼佷笟缃戠珯妯℃澘</a></div>


   <section class="col-md-12 content" id="clients">
       <div class="col-lg-6 col-md-6 content-item">
           <img src="images/class_45.png" alt="Image" class="tm-image">
       </div>
       <div class="col-lg-6 col-md-6 content-item background flexbox">
           <h1 class="main-title text-center dark-blue-text" style="font-weight:bold;">铲屎官训练注意</h1>
           <p class="section-text">不要催促狗狗排便
狗狗只会在放松的情况下排泄，所以把狗狗关进厕所强制便便是不靠谱的，要是看着又不停地催它，它感
到紧张和不安，就更不愿意排便了。铲屎官语言责怪和动作，反而让狗狗注意力不集中，还以为你要和它
玩呢。
</p>
           <p class="section-text">  不要惩罚狗狗
  如果狗狗还没有学会正确大小便，一不小心就拉在了“厕所”范围之外，铲屎官就要耐心点了，狗狗还小会控制不好自己便便行为(泌尿系统尚未健全)。如果对狗狗加之打骂，狗狗会把可怕的经历和便便联系起来，习惯培养就更加难了。
  狗狗乱尿的时候，  记得一定要用尿液专用清洁剂及时处理，因为狗狗尿液中含有尿酸的盐晶，会留存尿液气味，影响狗狗的判断，让它不知道正确排泄的地点。</p>
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
