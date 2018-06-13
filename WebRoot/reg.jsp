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
    
    <title>注册</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	 <link href="css/reg.css" rel="stylesheet" type="text/css">
	 <link rel="shortcut icon"  href="images/logo.jpg">
	
  </head>
  <body style="background:url(images/1.jpg) no-repeat 0% 0%/100% 100% ">
  <div id="reg">
    <h1>Reg</h1>
  <s:form action="customer/customer_reg" method="post">
   <input type="text" required="required"  id="ha" placeholder="用户名" onblur="checkName()" name="customer.name">
   </input><br>
   <input type="password" required="required"  id="pa" placeholder="密码" onblur="checkPassword()" name="customer.password"></input><br>
   <input type="text" required="required" placeholder="地址" name="customer.address"></input>
    <button class="but" type="submit"  onclick="check()">提交</button> 
    <span id="tipun"></span>
  <!-- <s:submit value="提交"></s:submit>
   <s:reset value="重填"></s:reset> --> 
   </s:form>
   </div>
   <br>
    <script src="js/jquery.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/bootstrapValidator.js"></script>
    <script type="text/javascript">
       //验证用户名
       function checkName(){
           var span = document.getElementById("tipun");
           var cu = document.getElementById("ha");
           var cname = cu.value; 
           var request =new XMLHttpRequest();//创建XMLHttpRequest对象
           request.onreadystatechange = function press(){
              if(request.readyState < 4) {  //请求中
                 span.innerHTML="检测中";  
              }  
              if(request.readyState == 4) {  
                   if(request.status == 200) {  //成功接受请求
                        if(request.responseText == "no") {  
                             //span.innerHTML="用户名已存在!";  
                             alert("用户名已存在!");
                             
                        }else {              
                             //span.innerHTML="可以使用!"; 
                             alert("用户名可以使用!");
                        }              
                   }  
               }  
             
           };
           request.open("GET","customer/customer_quName?name="+cname,true);//新建一个请求，向action中发送name
           request.setRequestHeader("Content-type","application/x-www-form-urlencoded");
           request.send("");//发送请求
       }
       //验证密码
       function checkPassword() {
           var pa = document.getElementById("pa");
           var txt = pa.value;
           
           var tipun = document.getElementById('tipun');
           var message = '';
           
          
	       var patrn= /^[a-zA-Z0-9_\.]+$/;
	       if (!patrn.exec(txt)){
	          message += '密码仅能由数字和英文字母组成';
	       }
	       tipun.innerHTML = message;
       }
       
       function check() {
           var a = document.getElementById("tipun");	
           var b = document.getElementById("pa");	
           if (a.value!="" || b.value!="") {
	          alert("用户名已存在/密码格式不正确！无法注册！");
	       }
	      
	      
       }
    </script> 
  </body>
</html>
