<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>  
<html lang="en">  
<head>  
    <meta charset="UTF-8">  
    <title>Title</title> 
   
    <base href="<%=basePath%>">
    
    <title>直接跳转到显示所有dog的页面</title>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="shortcut icon"  href="images/logo.jpg">
	
	<link rel="stylesheet" href="css/reset_barrage.css">
    <link rel="stylesheet" href="css/video.css">
    <link rel="stylesheet" type="text/css" href="<%=basePath%>css/main.css">
	<link rel="stylesheet" type="text/css" href="<%=basePath%>css/new.css">
	
</head>  
<style type="text/css">  
    .mainBody{  
        margin: 50px auto;  
        text-align: center;  
        font-family: arial;  
        position:relative;  
    }  
    .send{  
       width:700px;  
        margin:0px auto;  
        text-align:left;  
    }  
     .my-msg{  
         width:85%;  
         height:35px;  
     }  
    .my-btn{  
        background-color: #ccd0d7;  
        border-radius: 8px;  
        width: 50px;  
        height: 35px;  
        margin-left:30px;  
        border:1px solid  #00a1d6;  
    }  
    .my-list{  
        display:inline-block;  
        vertical-align: top;  
        border:1px solid #ccd0d7;  
        width:200px;  
        height:450px;  
        overflow: auto;  
    }  
    .my-tm{  
        position:absolute;  
        top:0px;  
        height:366px;  
        width: 710px;  
        overflow:hidden;  
    }  
    .rtol{  
        position:absolute;  
        display: inline-block;  
        height:28px;  
        overflow: hidden;  
        font-size:24px;  
        color:#fff;  
        left:720px;  
        -moz-transition:left 4s linear;  
        -webkit-transition:left 4s linear;  
        -o-transition:left 4s linear;  
    }  
    }  
</style>  
<body> 
<header>
    <ul>
      
      <li class="banner">Take Me Home</li>
      
    </ul>
  <nav>
      <ul>
         <li><a href="MyClass.jsp">更多视频</a></li> 
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
<div>  

    <div class="mainBody">  
        <div style="display:inline-block">  
        <video src='video/1.mp4'  height="400" controls></video>  
        <div class="send">  
        <input type="text" name="barrage.btext" class="my-msg" id="msgcc" placeholder="发送弹幕~">
        <input type="button" class="my-btn"  id="sendcc" value="发送">
       
        </div>  
        </div><div class="my-list">  
            <span style="color: #00a1d6">弹幕</span>  
            <hr style="border-top:2px solid #185598"/>  
            <ul id="msg">  
            </ul>  
        </div>  
        <div class="my-tm" id="tmbox">  
        </div>  
    </div>  
</div>  
<script>
  function add(){
  var a = document.getElementById("sendcc");
  a
  }
</script>
<script>  
    var tm=document.getElementById('tmbox');  
    var btn=document.getElementById('sendcc');  
    var video=document.getElementsByTagName('video')[0];  
    var list=document.getElementById('msg');  
    var msg=document.getElementById('msgcc');  
    var infor=[];  
  
    window.onload=function()  
    {  
        //设置位置  
       tm.style.left=(document.body.offsetWidth-911)/2+'px';  
    }  
    window.onresize=function(){  
        tm.style.left=(document.body.offsetWidth-911)/2+'px';  
    }  
    //获取当前日期  
    function getNowFormatDate() {  
        var date = new Date();  
        var seperator1 = "-";  
        var seperator2 = ":";  
        var month = date.getMonth() + 1;  
        var strDate = date.getDate();  
        if (month >= 1 && month <= 9) {  
            month = "0" + month;  
        }  
        if (strDate >= 0 && strDate <= 9) {  
            strDate = "0" + strDate;  
        }  
        var currentdate = month + seperator1 + strDate  
            + " " + date.getHours() + seperator2 + date.getMinutes();  
        return currentdate;  
    }  
  
    //按下发送键  
    btn.onclick=function(){  
        var value=msg.value;
        
        var request =new XMLHttpRequest();
        request.open("GET","barrage/barrage_add?bar="+msg.value,true);  
        request.setRequestHeader("Content-type","application/x-www-form-urlencoded;charset=utf-8");
        request.send("");
         
        if(value&&value!='')  
        {  
            var itemInfor={};  
            itemInfor.value=value;  
            itemInfor.showTime=video.currentTime;  //时间  
            itemInfor.sendTime=getNowFormatDate();     //发送时间  
  
  
            //弹幕列表  
            var li=document.createElement('li');  
            li.className='my-li';  
            li.innerHTML="<span> > "+value+"</span>";  
            list.appendChild(li);  
  
            //当前弹幕  
            var text=document.createElement('span');  
            text.className='rtol';  
            text.style.top=Math.floor( Math.random()*12 )*30+'px';  
            text.innerHTML=value;  
            tm.appendChild(text);  
  
            //左边位置  
            setTimeout(function(){  
                text.style.left=-value.length*25+'px';  
            },200);  
  
            //之后把不显示的span删除  
            setTimeout(function(){  
                    tm.removeChild(text)  
                     //防止已有弹幕和当前发送的显示冲突，在这里加入到数组中  
                    infor.push(itemInfor);  
                },5000  
            )  
        }  
    }  
  
    //显示已有弹幕  
  setInterval(function(){  
      if(video.paused==false)  
      {  
          infor.forEach(function(item){  
              var currentTime=video.currentTime;  
              if(item.showTime<video.currentTime&&item.showTime>=(video.currentTime-0.5))  
              {  
                  var text=document.createElement('span');  
                  text.className='rtol';  
                  text.style.top=Math.floor( Math.random()*12 )*30+'px';  
                  text.innerHTML=item.value;  
                  tm.appendChild(text);  
  
                  //左边位置  
                  setTimeout(function(){  
                      text.style.left=-(item.value.length*25)+'px';  
                  },200);  
  
                  //之后把不显示的span删除  
                  setTimeout(function(){  
                          tm.removeChild(text);  
                      },5000  
                  )  
  
              }  
          });  
      }  
    },500)  
</script>  
  
   <!-- MV -->
  <div class="main" id="mv">
    <div class="main-inner">
      
      <a href="#" class="readAll">全部<i class="icon-sprite"></i></a>
      <div class="main-tab tab-title">
        
      </div>
      <ul class="mv-list tab-cont">
        <li class="item">
          <a href="video/1.mp4" class="img"><img src="images/2.jpg" alt="#"><i class="icon-play"></i></a>
          <div class="info">
            <a href="#" class="title">happy</a>
            <a href="#" class="author">讲师</a>
            <span class="play-total"><i class="icon-sprite"></i>18.8万</span>
          </div>
        </li>
        <li class="item">
          <a href="#" class="img"><img src="images/1.jpg" alt="#"><i class="icon-play"></i></a>
          <div class="info">
            <a href="#" class="title">可爱的狗</a>
            <a href="#" class="author">讲师</a>
            <span class="play-total"><i class="icon-sprite"></i>18.8万</span>
          </div>
        </li>
        <li class="item">
          <a href="#" class="img"><img src="images/3.jpg" alt="#"><i class="icon-play"></i></a>
          <div class="info">
            <a href="#" class="title">比熊</a>
            <a href="#" class="author">讲师</a>
            <span class="play-total"><i class="icon-sprite"></i>18.8万</span>
          </div>
        </li>
        <li class="item">
          <a href="#" class="img"><img src="images/4.jpg" alt="#"><i class="icon-play"></i></a>
          <div class="info">
            <a href="#" class="title">松狮</a>
            <a href="#" class="author">讲师</a>
            <span class="play-total"><i class="icon-sprite"></i>18.8万</span>
          </div>
        </li>
        <li class="item">
          <a href="#" class="img"><img src="images/5.jpg" alt="#"><i class="icon-play"></i></a>
          <div class="info">
            <a href="#" class="title">泰迪</a>
            <a href="#" class="author">讲师</a>
            <span class="play-total"><i class="icon-sprite"></i>18.8万</span>
          </div>
        </li>
        <li class="item">
          <a href="#" class="img"><img src="images/6.jpg" alt="#"><i class="icon-play"></i></a>
          <div class="info">
            <a href="#" class="title">玩具展示</a>
            <a href="#" class="author">讲师</a>
            <span class="play-total"><i class="icon-sprite"></i>18.8万</span>
          </div>
        </li>
        <li class="item">
          <a href="#" class="img"><img src="images/7.jpg" alt="#"><i class="icon-play"></i></a>
          <div class="info">
            <a href="#" class="title">喂食教学</a>
            <a href="#" class="author">讲师</a>
            <span class="play-total"><i class="icon-sprite"></i>18.8万</span>
          </div>
        </li>
        <li class="item">
          <a href="#" class="img"><img src="images/8.jpg" alt="#"><i class="icon-play"></i></a>
          <div class="info">
            <a href="#" class="title">洗澡教学</a>
            <a href="#" class="author">讲师</a>
            <span class="play-total"><i class="icon-sprite"></i>18.8万</span>
          </div>
        </li>
      </ul>
    </div>
  </div>
  
</body>  
</html>   