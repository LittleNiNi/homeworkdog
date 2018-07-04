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
	
	
	<link rel="stylesheet" type="text/css" href="<%=basePath%>css/main.css">
	<link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="css/comment.css">
	
	<link href="<%=basePath%>css/bootstrap.css" rel="stylesheet" type="text/css" media="all"/><!-- 显示搜索 -->
	<link rel="stylesheet" type="text/css" href="<%=basePath%>css/new.css">
	
 <style>
 .container{
		width: 1000px;
	}
	.commentbox{
		width: 900px;
		margin: 20px auto;
	}
	.mytextarea {
	    width: 100%;
	    overflow: auto;
	    word-break: break-all;
	    height: 100px;
	    color: #000;
	    font-size: 1em;
	    resize: none;
	}
	.comment-list{
		width: 900px;
		margin: 20px auto;
		clear: both;
		padding-top: 20px;
	}
	.comment-list .comment-info{
		position: relative;
		margin-bottom: 20px;
		margin-bottom: 20px;
		border-bottom: 1px solid #ccc;
	}
	.comment-list .comment-info header{
		width: 10%;
		position: absolute;
	}
	.comment-list .comment-info header img{
		width: 100%;
		border-radius: 50%;
		padding: 5px;
	}
	.comment-list .comment-info .comment-right{
		padding:5px 0px 5px 11%; 
	}
	.comment-list .comment-info .comment-right h3{
		margin: 5px 0px;
	}
	.comment-list .comment-info .comment-right .comment-content-header{
		height: 25px;
	}
	.comment-list .comment-info .comment-right .comment-content-header span,.comment-list .comment-info .comment-right .comment-content-footer span{
		padding-right: 2em;
		color: #aaa;
	}
	.comment-list .comment-info .comment-right .comment-content-header span,.comment-list .comment-info .comment-right .comment-content-footer span.reply-btn,.send,.reply-list-btn{
		cursor: pointer;
	}
	.comment-list .comment-info .comment-right .reply-list {
		border-left: 3px solid #ccc;
		padding-left: 7px;
	}
	.comment-list .comment-info .comment-right .reply-list .reply{
		border-bottom: 1px dashed #ccc;
	}
	.comment-list .comment-info .comment-right .reply-list .reply div span{
		padding-left: 10px;
	}
	.comment-list .comment-info .comment-right .reply-list .reply p span{
		padding-right: 2em;
		color: #aaa;
	}

 
 </style>
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
  <br> <br>
  <div class="announcement">
  <marquee dir="right" scrolldelay=时间 onmouseover=this.stop() onmouseout=this.start()>本论坛只用于爱狗人士进行交流经验</marquee>
  </div>
  
</head>
<body>

<div class="container">
	<div class="commentbox">
		<textarea cols="80" rows="50" placeholder="来说几句吧......" class="mytextarea" id="content"></textarea>
		<div class="btn btn-info pull-right" id="comment">评论</div>
	</div>
	<div class="comment-list">	
	</div>
</div>

<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript" src="js/jquery.comment.js" ></script>
<script type="text/javascript" src="js/bootstrap.min.js"></script>

<s:hidden value="comments.id" id="id"></s:hidden>
<s:hidden value="comments.filepath" id="filepath"></s:hidden>
<s:hidden value="comments.replyname" id="replyname"></s:hidden>
<s:hidden value="comments.time" id="time"></s:hidden>
<s:hidden value="comments.content" id="content"></s:hidden>
<s:hidden value="comments.address" id="address"></s:hidden>
<s:hidden value="comments.osname" id="osname"></s:hidden>


<script type="text/javascript">
	//初始化数据
	var arr = [<c:forEach items="${clist}" var="comments">
                               {id:"${comments.id}",
                                  img:"${comments.filepath}",
                                  replyName:"${comments.replyname}",
                                  beReplyName:"",
                                  content:"${comments.content}",
                                  time:"${comments.time}",
                                  address:"${comments.address}",
                                  osname:"${comments.osname}",
                                  browse:"谷歌",
                                  replyBody:[]},</c:forEach>];
	/*var arr = [
		{id:1,img:"./images/user1.jpg",replyName:"帅大叔",beReplyName:"匿名",content:"他家的狗特别可爱，当时没买，现在心里后悔极了。",time:"2018-5-19 11:42:53",address:"北京",osname:"",browse:"谷歌",replyBody:[]},
		{id:2,img:"./images/user2.jpg",replyName:"小萝莉",beReplyName:"",content:"对啊，上次看到就直接买了，回去之后狗狗真的很可爱，等狗养大了再买一只！",time:"2017-10-17 11:42:53",address:"北京",osname:"",browse:"谷歌",replyBody:[{id:3,img:"",replyName:"帅大叔",beReplyName:"小萝莉",content:"好巧啊，我也是，我们一起交流一下经验吧！",time:"2018-5-20 15:42:53",address:"",osname:"",browse:"谷歌"}]},
		{id:3,img:"./images/user3.jpg",replyName:"小可爱",beReplyName:"匿名",content:"求问，他家的狗狗好养吗？容易生病吗？",time:"2018-5-22 20:42:53",address:"北京",osname:"win10",browse:"谷歌",replyBody:[]}
	];*/
	$(function(){
		$(".comment-list").addCommentList({data:arr,add:""});
		
		$("#comment").click(function(){
			var obj = new Object();
			obj.img="./images/user1.jpg";
			obj.replyName="${session.customer.name}";
			obj.content=$("#content").val();
			obj.browse="Beijing";
			obj.osname="win10";
			obj.replyBody="";
			var tt = new Date();
			var request =new XMLHttpRequest();
			
            request.open("GET","comments/comments_add?replyname="+obj.replyName+"&filepath="+obj.img+"&content="+obj.content+"&time="+tt+"&address="+obj.browse+"&osname="+obj.osname,true); 
            request.setRequestHeader("Content-type","application/x-www-form-urlencoded;charset=GBK");
            request.send("");
			
			$(".comment-list").addCommentList({data:[],add:obj});
		});
	})
</script>
   </body>
   
   
</html>
  