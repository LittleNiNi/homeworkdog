<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
	<link rel="shortcut icon"  href="images/logo.jpg">
	
	<link rel="stylesheet" type="text/css" href="<%=basePath%>css/modern.css">
<link rel="stylesheet" type="text/css" href="<%=basePath%>css/wp-specific.css">

<link rel="stylesheet" type="text/css" href="<%=basePath%>css/font-awesome.css">
	<link rel="stylesheet" type="text/css" href="<%=basePath%>css/button.css">
	<link rel="stylesheet" type="text/css" href="<%=basePath%>css/main.css">
	<link rel="stylesheet" type="text/css" href="<%=basePath%>css/new.css">


<script type="text/javascript" src="js/jquery.js"></script>
<script type="text/javascript" src="js/jquery.migrate.min.js"></script>
<script type="text/javascript" src="js/wp-embed.min.js"></script>
<script type="text/javascript" src="js/main-dotcom-core.js"></script>
<script type="text/javascript" src="js/main-dotcom-core-vendor.js"></script>
  </head>
  <body>
  <header>
 
 <a href="dog/dog_queryDogs?keyWords="><h2>返回</h2></a>

  </header>
  
  
<pfdc-pet-carousel class="petCarousel u-vr6x" animal-id="41893425" animal-status="adoptable">
         <a href="#Detail_Main" class="skipToContent pet_Carousel_skipLink">
            Skip carousel of pet photos and or videos
        </a>
        <p id="Pet_Carousel_Description" class="u-isVisuallyHidden">This is an inline carousel of images and or videos of this pet.</p>
        <div pfdc-pet-carousel-body="" class="petCarousel-body flickity-enabled is-draggable" tabindex="0">
   <div class="flickity-viewport" style="height: 375px; touch-action: pan-y;"><div class="flickity-slider" style="left: 0px; transform: translateX(33.33%);">
   <img pfdc-pet-carousel-slide="" draggable="false" src="<%=basePath%><s:property value='dog.filepath'/>" alt="Kendra 1" class="petCarousel-body-slide is-selected" aria-describedby="Pet_Carousel_Description" aria-hidden="false" tabindex="-1" style="position: absolute; left: 0%;"><img pfdc-pet-carousel-slide="" draggable="false" src="<%=basePath%><s:property value='dog.filepath'/>" width="570" height="570" alt="Kendra 2" class="petCarousel-body-slide" aria-describedby="Pet_Carousel_Description" aria-hidden="true" tabindex="-1" style="position: absolute; left: 33.33%;">
   <img pfdc-pet-carousel-slide="" draggable="false" src="<%=basePath%><s:property value='dog.filepath'/>" alt="Kendra 1" class="petCarousel-body-slide" aria-describedby="Pet_Carousel_Description" aria-hidden="true" tabindex="-1" style="position: absolute; left: 66.67%;">
   <img pfdc-pet-carousel-slide="" draggable="false" src="<%=basePath%><s:property value='dog.filepath'/>" alt="Kendra 2" class="petCarousel-body-slide" aria-describedby="Pet_Carousel_Description" aria-hidden="true" tabindex="-1" style="position: absolute; left: 100%;"><img pfdc-pet-carousel-slide="" draggable="false" src="<%=basePath%><s:property value='dog.filepath'/>" alt="Kendra 1" class="petCarousel-body-slide" aria-describedby="Pet_Carousel_Description" aria-hidden="true" tabindex="-1" style="position: absolute; left: -66.67%;">
   <img pfdc-pet-carousel-slide="" draggable="false" src="<%=basePath%><s:property value='dog.filepath'/>" width="50" height="50" alt="Kendra 2" class="petCarousel-body-slide" aria-describedby="Pet_Carousel_Description" aria-hidden="true" tabindex="-1" style="position: absolute; left: -33.33%;">
   </div></div><button class="flickity-prev-next-button previous" type="button" aria-label="previous"><svg viewBox="0 0 100 100"><path d="M 10,50 L 60,100 L 70,90 L 30,50  L 70,10 L 60,0 Z" class="arrow"></path></svg></button><button class="flickity-prev-next-button next" type="button" aria-label="next"><svg viewBox="0 0 100 100"><path d="M 10,50 L 60,100 L 70,90 L 30,50  L 70,10 L 60,0 Z" class="arrow" transform="translate(100, 100) rotate(180) ">
   </path></svg></button></div>
        <button type="button" pfdc-pet-carousel-expand="" class="petCarousel-expandBtn" aria-label="Activate full screen carousel">
            <svg role="img" focusable="false">
                <use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#icon-expand"></use>
            </svg>
        </button>
        <div pfdc-pet-carousel-nav="" class="petCarousel-nav">

                    <button type="button" aria-label="Go to image 1" class="isActive" disabled="true"></button>

                    <button type="button" aria-label="Go to image 2"></button></div>
        <p pfdc-pet-carousel-alert="" class="u-isVisuallyHidden" role="alert" aria-live="polite">Kendra 1</p>
    </pfdc-pet-carousel>
    


    
    
    
    
    
    
    
    
    
    
   <div class="tier tier_flush@maxLg u-vr8x u-vrTop6x">
        <div class="grid grid_gutterLg">
            <div class="grid-col grid-col_2/3@minLg">
                <div class="card card_divide">
                                        <div class="card-section">
    <div class="card-section-inner">
                <h1 class="txt txt_h1 u-vr3x" tabindex="-1" id="Detail_Main"><c:out value="${dog.dogname }"></c:out></h1>
                    <div class="hrTitle u-isHidden@minLg u-vr3x">
                <span class="hrTitle-body">
                    <span class="txt m-txt_bold m-txt_lg m-txt_colorPrimaryS2">
                        <ul class="hrArray hrArray_bulletDivided u-vr4x">
                                                            <li>
                                    Dog
                                </li>
                                                        <li>
                               <c:out value="${dog.dogname }"></c:out>
                            </li>
                        </ul>
                    </span>
                </span>
            </div>
                <ul class="hrArray hrArray_bulletDivided u-isHidden@maxLg u-vr4x" aria-label="Pet type">
                                        <li>
                    <span class="txt m-txt_bold m-txt_lg m-txt_colorPrimaryS2">
                       <c:out value="${dog.dogname }"></c:out>
                    </span>
                </li>
                                        <li>
                    <span class="txt m-txt_bold m-txt_lg m-txt_colorPrimaryS2">
                        单价:<c:out value="${dog.unitprice }"></c:out>
                    </span>
                </li>
                    </ul>
        <div class="hr u-isHidden@maxLg u-vr4x"></div>
        <ul class="hrArray hrArray_bulletDivided" aria-label="Pet physical characteristics">
                            <li>
                    <span class="txt m-txt_lg m-txt_colorPrimaryS2">
                       
                    </span>
                </li>
                                        <li>
                    <span class="txt m-txt_lg m-txt_colorPrimaryS2">
                        迎接狗狗要准备些什么才好？<br>如何让狗狗乖乖大小便？<br>不同阶段的幼犬该吃啥？<br>
快到<a href="comments.jsp" target="_blank"><font color="blue">新宠大论坛</font></a>和大家交流吧<br>
科学养宠，为爱宠创建无限美好！
                    </span>
                </li>
                                        <li>
                    <span class="txt m-txt_lg m-txt_colorPrimaryS2">
                       
                    </span>
                </li>
                                </ul>
                    <div class="u-isHidden@minLg">
                <div class="hr u-vr4x u-vrTop4x"></div>
                <div class="media m-media_alignMiddle m-media_gutterMd m-media_inline">
                    <div class="media-img">
                        <span class="icon m-icon_colorPrimaryS2 m-icon_block">
                            <svg role="img">
                                <use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#icon-location"></use>
                            </svg>
                        </span>
                    </div>
                    <div class="media-bd">
                        <span class="txt m-txt_bold m-txt_lg m-txt_colorPrimaryS2">
                            Yigo, GU
                        </span>
                    </div>
                </div>
            </div>
               
    </div>
</div>                                        <pfdc-sticky class="u-isVisuallyHidden@minLg u-isSticky" style="min-height: 1px; height: 1px;">
    <pfdc-position-tracker>
        <nav class="slidingNav">
            <ul pfdc-position-tracker-nav="" class="slidingNav-nav">
                                <li class="slidingNav-nav-item">
                    <a pfdc-position-tracker-anchor="" data-anchor-id="details" href="#details" class="slidingNav-nav-item-btn">
                      关于我们
                    </a>
                </li>
                                                                <li class="slidingNav-nav-item">
                    <a pfdc-position-tracker-anchor="" data-anchor-id="organization" href="#organization" class="slidingNav-nav-item-btn isActive">
                        
                    </a>
                </li>
                                                <li class="slidingNav-nav-item">
                    <a pfdc-position-tracker-anchor="" data-anchor-id="other-pets" href="#other-pets" class="slidingNav-nav-item-btn">
                        更多宠物
                    </a>
                </li>
                            </ul>
                            <pf-element on-click="ui.activate" data-target="#Share_Pet_Modal">
                    <button class="slidingNav-shareBtn">
                        <svg role="img">
                            <use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#icon-share"></use>
                        </svg>
                        <span class="u-isVisuallyHidden">
                            分享
                        </span>
                    </button>
                </pf-element>
                    </nav>
    </pfdc-position-tracker>
</pfdc-sticky>
                    
                    <!-- Top Ad  -->
                    <pf-ad class="ad u-vr6x u-vrTop6x u-isHidden@minLg" id="PetDetail4" targeting="{&quot;Pet_ID&quot;:&quot;41477102&quot;,&quot;Pet_Name&quot;:&quot;Robyn&quot;,&quot;Type&quot;:&quot;Dog&quot;,&quot;Species&quot;:&quot;Dog&quot;,&quot;Primary_Breed&quot;:&quot;Affenpinscher&quot;,&quot;Secondary_Breed&quot;:&quot;&quot;,&quot;Mixed_Breed&quot;:false,&quot;Age&quot;:&quot;Baby&quot;,&quot;Gender&quot;:&quot;Female&quot;,&quot;Characteristics&quot;:&quot;Shots Current&quot;,&quot;Size&quot;:&quot;Large&quot;,&quot;Primary_color&quot;:&quot;&quot;,&quot;Secondary_color&quot;:&quot;&quot;,&quot;Coat_length&quot;:&quot;&quot;,&quot;Shelter_Name&quot;:&quot;Guam Animals In Need&quot;,&quot;Shelter_ID&quot;:&quot;GU01&quot;,&quot;Zip_Code&quot;:&quot;96929&quot;,&quot;Number_of_photos_in_profile&quot;:1,&quot;Good_with_children&quot;:&quot;&quot;,&quot;Good_with_cats&quot;:&quot;&quot;,&quot;Good_with_dogs&quot;:&quot;&quot;,&quot;Good_with_other_animals&quot;:&quot;&quot;,&quot;Adoption_fee&quot;:&quot;&quot;,&quot;Adoption_fee_waived&quot;:false}" data-google-query-id="CKChrvqB4NsCFRcklgodwuAE8w"><div id="google_ads_iframe_/46267414/Petfinder/Pet_Details_0__container__" style="border: 0pt none; display: inline-block; width: 320px; height: 100px;"><iframe frameborder="0" src="https://tpc.googlesyndication.com/safeframe/1-0-29/html/container.html" id="google_ads_iframe_/46267414/Petfinder/Pet_Details_0" title="3rd party ad content" name="" scrolling="no" marginwidth="0" marginheight="0" width="320" height="100" data-is-safeframe="true" style="border: 0px; vertical-align: bottom;"></iframe></div></pf-ad>
                    
                                                                <div class="card-section">
    <h2 class="txt txt_h2 u-vr3x">
        <div id="details" class="slidingNavTarget" pfdc-position-tracker-section="" data-section-id="details"></div>
                关于我们
    </h2>
    <div class="grid grid_gutterLg u-vr4x">
        <div class="grid-col grid-col_1/2@minMd grid-col_1/1@minLg">
            <dl>
                                                                                    <dt class="txt m-txt_lg m-txt_bold m-txt_uppercase">健康</dt>
                    <dd class="txt">加入我们.</dd>
                            </dl>
        </div>
        <div class="grid-col grid-col_1/2@minMd grid-col_1/1@minLg">
            <dl>
                                                                            </dl>
        </div>
    </div>
</div>                                                        </div>            </div>
            <div class="grid-col grid-col_1/3@minLg">
                              
                <!-- Top Ad Sidebar -->
                <pf-ad class="ad ad_petDetail1 u-vr8x" id="PetDetail1" targeting="{&quot;Pet_ID&quot;:&quot;41477102&quot;,&quot;Pet_Name&quot;:&quot;Robyn&quot;,&quot;Type&quot;:&quot;Dog&quot;,&quot;Species&quot;:&quot;Dog&quot;,&quot;Primary_Breed&quot;:&quot;Affenpinscher&quot;,&quot;Secondary_Breed&quot;:&quot;&quot;,&quot;Mixed_Breed&quot;:false,&quot;Age&quot;:&quot;Baby&quot;,&quot;Gender&quot;:&quot;Female&quot;,&quot;Characteristics&quot;:&quot;Shots Current&quot;,&quot;Size&quot;:&quot;Large&quot;,&quot;Primary_color&quot;:&quot;&quot;,&quot;Secondary_color&quot;:&quot;&quot;,&quot;Coat_length&quot;:&quot;&quot;,&quot;Shelter_Name&quot;:&quot;Guam Animals In Need&quot;,&quot;Shelter_ID&quot;:&quot;GU01&quot;,&quot;Zip_Code&quot;:&quot;96929&quot;,&quot;Number_of_photos_in_profile&quot;:1,&quot;Good_with_children&quot;:&quot;&quot;,&quot;Good_with_cats&quot;:&quot;&quot;,&quot;Good_with_dogs&quot;:&quot;&quot;,&quot;Good_with_other_animals&quot;:&quot;&quot;,&quot;Adoption_fee&quot;:&quot;&quot;,&quot;Adoption_fee_waived&quot;:false}" data-google-query-id="CO6TsPqB4NsCFcI6lgodpfUCbA"><div id="google_ads_iframe_/46267414/Petfinder/Pet_Details_1__container__" style="border: 0pt none;"><iframe id="google_ads_iframe_/46267414/Petfinder/Pet_Details_1" title="3rd party ad content" name="google_ads_iframe_/46267414/Petfinder/Pet_Details_1" width="300" height="250" scrolling="no" marginwidth="0" marginheight="0" frameborder="0" srcdoc="" style="border: 0px; vertical-align: bottom;"></iframe></div></pf-ad>

                                <div class="card card_org">
    <a href="https://www.petfinder.com/member/us/gu/yigo/guam-animals-in-need-gu01/" class="card_org-logo" aria-label="Organization Home Page"></a>
    <div class="card-section card-section_constrained u-textCenter">
        <h2 class="txt txt_h2">
            <a href="https://www.petfinder.com/member/us/gu/yigo/guam-animals-in-need-gu01/">
                <div id="organization" class="slidingNavTarget" pfdc-position-tracker-section="" data-section-id="organization"></div>
                <pf-truncate line-count="3"><div line-clamp="" style="overflow-wrap: break-word; word-wrap: break-word; display: inline;">Guam Animals In Need</div></pf-truncate>
            </a>
        </h2>
                    <span class="txt m-txt_bold">
                Yigo, GU
            </span>
            </div>
                        <div class="card-section card-section_media">
                <pfdc-lazy-load element="iframe" allowfullscreen="" title="Map" height="200" frameborder="0" style="display: block; border:0; width:100%;" src="https://www.google.com/maps/embed/v1/place?key=AIzaSyDlF7RL7Ik0dbsbmRQw_YAOsB3gXB_Ravk&amp;q=1%2F2+mile+North+of+Our+Lady+of+Lourdes+Catholic+Church+Yigo%2C+GU+96929+US"><iframe allowfullscreen="" title="Map" height="200" frameborder="0" style="display: block; border:0; width:100%;" src="https://www.google.com/maps/embed/v1/place?key=AIzaSyDlF7RL7Ik0dbsbmRQw_YAOsB3gXB_Ravk&amp;q=1%2F2+mile+North+of+Our+Lady+of+Lourdes+Catholic+Church+Yigo%2C+GU+96929+US"></iframe></pfdc-lazy-load>
            </div>
                <div class="card-section card-section_constrained">
        <ul class="iconList u-vr4x">
                            <li class="iconList-item">
                    <div class="iconList-item-media">
                        <span class="icon icon_md m-icon_colorDark">
                            <svg role="img">
                                <use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#icon-location"></use>
                            </svg>
                        </span>
                    </div>
                    <div class="iconList-item-body">
                        <p class="txt m-txt_bold">
                            Location Address
                            	</p><div itemprop="address" itemscope="" itemtype="http://schema.org/PostalAddress">
					<div class="txt" itemprop="streetAddress">
				                    <div class="txt">
                        1/2 mile North of Our Lady of Lourdes Catholic Church
                    </div>
                				                    <div class="txt">
                        Just North of Yigo Gym
                    </div>
                			</div>
																	            <span class="txt" itemprop="addressLocality">Yigo, </span>
							<span class="txt" itemprop="addressRegion">GU</span>
							<span class="txt" itemprop="postalCode">96929</span>
					</div>

                        <p></p>
                                                    <div class="get-directions" data-location-name="" data-latitude="13.5344" data-longitude="144.8856">
                                <pf-ensighten on-click="Consumer157_168_185" shelter-id="GU01" animal-status="adoptable">
                                                                            <a href="https://www.google.com/maps/dir/current+location/1%2F2+mile+North+of+Our+Lady+of+Lourdes+Catholic+Church%2C+Yigo%2C+GU%2C+US+96929" class="txt txt_link m-txt_bold">
                                            Get directions
                                        </a>
                                                                    </pf-ensighten>
                            </div>
                                            </div>
                </li>
                                                    <li class="iconList-item">
                    <div class="iconList-item-media">
                        <span class="icon icon_md m-icon_colorDark">
                            <svg role="img">
                                <use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#icon-phone"></use>
                            </svg>
                        </span>
                    </div>
                    <div class="iconList-item-body">
                        <pf-ensighten on-click="Consumer159_175_229" shelter-id="GU01" animal-status="adoptable">
                            <a href="tel: (671) 653-4246" class="txt txt_link m-txt_bold">
                                (671) xxxxxxxx
                            </a>
                        </pf-ensighten>
                    </div>
                </li>
                                </ul>
        <pf-ensighten on-click="Consumer160_176_230" shelter-id="GU01" "="" animal-id="41477102" animal-status="adoptable">
            <a href="https://www.petfinder.com/member/us/gu/yigo/guam-animals-in-need-gu01/" class="btn btn_borderDark m-btn_full">
               关于我们
            </a>
        </pf-ensighten>
    </div>
</div>            </div>        </div>    </div> 
    
    
    
    
    </body>