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
<a><img src="images/class1.png" class="db ct" width="100%"></a>
</div>
</div>

    <div class="container">
        <section class="col-md-12 content" id="home">
           <div class="col-lg-6 col-md-6 content-item">
               <img src="images/class_1.png" alt="Image" class="tm-image">
           </div>
           <div class="col-lg-6 col-md-6 content-item content-item-1 background">
               <h1 class="main-title text-center dark-blue-text" style="font-weight:bold;">主食最重要</h1>
               <h3 class="section-text">&emsp; 吃乃狗生第一大事，所以当然要先准备狗狗喜欢的食物!但因为饭菜不符合狗狗的营养需求，而且含有的调料对狗狗皮肤、内脏等器官有危害，饭渣残留在狗狗的口腔也容易造成口腔疾病。

                </h3>
                 <h4 class="section-text">从便利性及营养配比来说，狗粮才是最适合狗狗的食物。对于刚到家的幼犬来说，幼犬配方粮是最佳的选择，因为幼犬跟成犬的营养需求不同，相比成犬老犬，对钙和蛋白质需要量更高，吃错了狗粮可对狗狗生长发育有影响哦! </h4>
               
           </div>
       </section>

       <section class="col-md-12 content padding" id="services">
        <div class="col-lg-6 col-md-6 col-md-push-6 content-item">
           <img src="images/class_3.png" alt="Image" class="tm-image">
       </div>
       <div class="col-lg-6 col-md-6 col-md-pull-6 content-item background flexbox">
           <h2 class="section-title">防病保健品</h2>
           <h4 class="section-text">.狗狗刚来到一个陌生的环境，极有可能会出现食欲不振、厌食、腹泻等水土不服的情况，铲屎官最好提前为狗狗准备一些保健品，来帮助它们尽快的适应新环境，减少不适现象，有备无患。
            环境的更换会影响狗狗消化系统的正常功能，有一个小秘招~在狗粮中拌食一点益生菌，就可以帮助狗狗充分的消化和吸收食物中的营养。而且当狗狗出现呕吐、腹泻等肠胃问题时，益生菌还可以辅助治疗肠胃问题以及维护肠胃健康哦。

</h4>
          
          
           
       </div>

   </section>
   
   <div class="copyrights">Collect from <a href="http://www.cssmoban.com/" >浼佷笟缃戠珯妯℃澘</a></div>


   <section class="col-md-12 content" id="clients">
       <div class="col-lg-6 col-md-6 content-item">
           <img src="images/class_2.png" alt="Image" class="tm-image">
       </div>
       <div class="col-lg-6 col-md-6 content-item background flexbox">
           <h2 class="section-title">窝</h2>
           <p class="section-text">在狗狗的意识里，“家”和“窝”的概念是不一样的，家=领地，窝才是休息的地方。
</p>
           <p class="section-text">如果狗狗在家里自由活动，没有固定地方睡觉，会让狗狗在家里有“居无定所”的感觉，而狗窝可以让狗狗有个安心休息的场所，让它养成良好的睡眠习惯。而且直接睡地.上可是容易着凉的，尤其是幼犬，一个舒适的窝窝对它们来说是必备的哦。</p>
       </div>
   </section>


   <section class="col-md-12 content" id="contact">
       <div class="col-lg-6 col-md-6 col-md-push-6 content-item">
           <img src="images/class_4.png" alt="Image" class="tm-image">
       </div>
       <div class="col-lg-6 col-md-6 col-md-pull-6 content-item background flexbox">
           <h2 class="section-title">比心提示</h2>
          
<p class="section-text">除了以_上紧急用品外，狗狗也是需要其他用品来保持自己的美色哦~譬如梳洗用品(如浴液、梳子、指甲剪)、外出工具(牵引绳、身份牌)、美毛和补钙的营养品。但由于狗狗刚到新的环境，对新主人新环境还不是很适应，在适应期内都是不建议给狗狗进行洗澡、外出以及补充过多的营养，否则容易加重狗狗的应激反应，使狗狗更容易生病。所以这些东西可以等狗狗适应环境以后再慢慢购买。

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
