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
  <l>Dog֮��</l>
  <p class="active"><a><strong ></strong></a></p><br>
  <p><strong><a href="file:main.jsp">��ҳ</a></strong></p>
  <p><strong><a href="file:shipin.html">����Ƽ�</a></strong></p>
  <p><strong><a href="file:wenzhang.html">���ﳵ</a></strong></p>
  <p><strong><a href="file:heian.html">�ҵĶ���</a></strong></p>
  <p><strong><a href="file:aboutus.html">��������</a><a href="#"></a></strong></p>
</ul>
  </aside>
  
  
  <section>
  <div id="login">
    <h1>ע��</h1>

      <input type="text" required="required" placeholder="�û���" name="u"></input>
      <input type="password" required="required" placeholder="����" name="p"></input> 
      <input type="text" required="required" placeholder="��ַ" name="p"></input> 
     
        <form method="post">
          <button class="but" type="submit">ע��</button>
          <button class="no" type="submit">����</button> 
        </form> 
   </div> 
   <!-- <div>
      <h1><a href="reg.jsp"> ע��</a>
        <a href="login.jsp">��¼</a></h1>
    </div>
  <s:form action="dog/dog_queryDogs" method="post">
  <label>��������</label><input type="text" name="keyWords" placeholder="������ؼ���"><s:submit value="��ѯ"></s:submit>
<table>
<tr>
<th>���</th>
<th>����</th>
<th>����</th>
</tr>
   <c:forEach var="dog" items="${dogList }" varStatus="status">
   <tr>
   <td><c:out value="${status.index+1}"></c:out></td>
   <td><a href="dog/dog_showDetail?dog.dogid=${dog.dogid }"></a>
   <td><c:out value="${dog.dogname }"></c:out></td>
   <td><c:out value="${dog.unitprice }"></c:out></td>
    <td><a href="dog/dog_showEdit?dog.dogid=${dog.dogid }">�༭</a></td>
   <td><a href="dog/dog_deleteDog?dog.dogid=${dog.dogid }">ɾ��</a></td>
   <td><a href="order/order_addOrder?dog.dogid=${dog.dogid }&customer.name=${customer.name}">��һ��</a></td>
   </tr>
   </c:forEach>
   </table>
   </s:form>
  </section>
  -->
</div>
</body>
</html>

