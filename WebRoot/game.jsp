<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" />
<title>CoreBall</title>
<meta name="viewport" content="width=device-width,initial-scale=1,maximum-scale=1,user-scalable=no" />
<link rel="stylesheet" type="text/css" href="<%=basePath%>css/font-awesome.css">
<link rel="stylesheet" type="text/css" href="<%=basePath%>css/bootstrap.css">

	

<style type="text/css">
    body {
        background-color: #c8c8c8;
        overflow: hidden;
        padding: 0;
        margin: 0;
        /*font-family:Helvetica;*/
        /*font-family: 'Open Sans', sans-serif, Helvetica;*/
        font-family: Lato;
    }
    .center-box {
        text-align: center;
        position: absolute;
        width: 300px;
        height: 400px;
        margin: -200px 0 0 -150px;
        left: 50%;
        top: 50%;
    }
    .title {
        font-size: 50px;
        /*font-family: sans-serif;*/
    }
    .button {
        position: absolute;
        width: 100px;
        height: 100px;
        left: 50%;
        top: 50%;
        margin: -100px 0 0 -50px;
        border: 2px solid #666;
        color: #666;
        -moz-border-radius: 15px;
        -webkit-border-radius: 15px;
        border-radius: 15px;
        font-size: 55px;
    }
    .button .text {
        font-size: 10px;
        padding: 0 10px;
        width: 80px
    }
    .op {
        position: absolute;
        width: 200px;
        height: 100px;
        left: 50%;
        top: 70%;
        margin: -50px 0 0 -100px;
    }
    </style>
</head>
<body>

  
<canvas style="display:none;" id="stage"></canvas>
<div id="begin">
<section class="center-box">
<span class="title">Core Ball</span>
<div class="button">
<div id="txtAr" style="margin-top: 5px;"></div>
<div class="text"></div>
</div>
<div class="op">
<a id="btnFW" href="javascript:;"><img data-capture="1" src="images/btn_fw.png" />
</a>
<span id="btnReset" style="display:inline-block;margin-left: 30px;color:#666">RESET</span>
<div id="tip" style="font-size:14px;color:#555;margin-top: 15px;display:none;">关卡重置完毕</div>
</div>
</section>
<section id="wxArrow" style="display: none;">
<div style="position:absolute;width:100%;height:100%;opacity: 0.7;background-color:#000">
</div>
<img style="position: absolute;right:25px;" src="images/arrow.png" />
</section>

</div>
<script src="js/jweixin-1.0.0.js"></script>
<script type="text/javascript" src="<%=basePath%>js/index.js"></script>

</body>
</html>