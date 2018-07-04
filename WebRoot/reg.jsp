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
    
    <title>My JSP 'index.jsp' starting page</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	 <link href="css/reg.css" rel="stylesheet" type="text/css">
	 <script type="text/javascript" src="js/ajax.js"></script>
	 <link rel="shortcut icon"  href="images/logo.jpg">

  </head>
  <body style="background:url(images/1.jpg) no-repeat 0% 0%/100% 100% ">
  <div id="reg">
    <h1>Reg</h1>
  <s:form action="customer/customer_reg" method="post">
   <input type="text" required="required" placeholder="用户名" name="customer.name"></input><br>
   <input type="password" required="required" placeholder="密码" name="customer.password"></input><br>
   <input type="text" required="required" placeholder="地址" name="customer.address"></input>
    <button class="but" type="submit" >提交</button> 

   </s:form>
   </div>
   <br>
   <script type="text/javascript">  
    /** 
    * validate(val) 光标离开后触发事件 
    * @param string val 输入的文本 
    * @return string 返回验证是否成功 
    */  
    function validate(val) {  
        var userText = document.getElementById('userText'); // 获取 SPAN 对象  
        // 如果为空或者输入空格执行  
        if (!(val.match(/^\S+$/))) {  
            userText.innerHTML = '<font color="red">请输入用户名！</font>';  
        } else {  
            if (val.length<2) {  
                userText.innerHTML = '<font color="red">用户名个数必须大于两位！</font>';  
            } else {  
                var ajax = Ajax(); // 创建 Ajax 对象  
                // 通过 Ajax POST 方法把用户名提交到 validate.php 进行验证用户名是否存在，并返回结果  
                ajax.post('validate.php', {username:val}, function(data){  
                    userText.innerHTML = data; // Ajax 返回的值显示在 SPAN 标签上    
                });  
            }  
        }  
    }  
</script>  


  </body>
</html>
