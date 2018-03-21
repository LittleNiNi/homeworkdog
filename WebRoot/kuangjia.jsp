<%@ page language="java" contentType="text/html; charset=GB18030" 
pageEncoding="GB18030"%> 

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
    <meta charset="utf-8">
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link href="css/kuangjia.css" rel="stylesheet" type="text/css">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
  </head>


<body>
<div class="container">
  <aside>
  <!--<img src="images/IMG_2031.JPG"   alt=""  />-->
<ul>
  <l>Dog之家</l>
  <p class="active"><a><strong ></strong></a></p><br>
  <p><strong><a href="file:main.jsp">首页</a></strong></p>
  <p><strong><a href="file:shipin.html">店家推荐</a></strong></p>
  <p><strong><a href="file:wenzhang.html">购物车</a></strong></p>
  <p><strong><a href="file:heian.html">我的订单</a></strong></p>
  <p><strong><a href="file:aboutus.html">关于我们</a><a href="#"></a></strong></p>
</ul>
  </aside>
  
  
  <section>
  <div id="login">
    <h1>注册</h1>

      <input type="text" required="required" placeholder="用户名" name="u"></input>
      <input type="password" required="required" placeholder="密码" name="p"></input> 
      <input type="text" required="required" placeholder="地址" name="p"></input> 
     
        <form method="post">
          <button class="but" type="submit">注册</button>
          <button class="no" type="submit">重置</button> 
        </form> 
   </div> 
   <!-- <div>
      <h1><a href="reg.jsp"> 注册</a>
        <a href="login.jsp">登录</a></h1>
    </div>
  <s:form action="dog/dog_queryDogs" method="post">
  <label>狗狗名称</label><input type="text" name="keyWords" placeholder="请输入关键词"><s:submit value="查询"></s:submit>
<table>
<tr>
<th>序号</th>
<th>名称</th>
<th>单价</th>
</tr>
   <c:forEach var="dog" items="${dogList }" varStatus="status">
   <tr>
   <td><c:out value="${status.index+1}"></c:out></td>
   <td><a href="dog/dog_showDetail?dog.dogid=${dog.dogid }"></a>
   <td><c:out value="${dog.dogname }"></c:out></td>
   <td><c:out value="${dog.unitprice }"></c:out></td>
    <td><a href="dog/dog_showEdit?dog.dogid=${dog.dogid }">编辑</a></td>
   <td><a href="dog/dog_deleteDog?dog.dogid=${dog.dogid }">删除</a></td>
   <td><a href="order/order_addOrder?dog.dogid=${dog.dogid }&customer.name=${customer.name}">来一份</a></td>
   </tr>
   </c:forEach>
   </table>
   </s:form>
  </section>
  -->
</div>
</body>
</html>

