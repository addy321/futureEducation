<%@ page language="java" contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %><%--核心标签--%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %><%--格式化标签--%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %><%--函数标签--%>
<!DOCTYPE html>
<html>
<head>
 <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
  <meta name="description" content="">
  <meta name="author" content="">
  <link rel="icon" href="/static/img/bitbug_favicon.ico">
  <link href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
  <link href="/static/liuyan/non-responsive.css" rel="stylesheet">
<title>网站留言</title>
</head>
<body>

 	<nav class="navbar navbar-inverse navbar-fixed-top">
      <div class="container">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
            <span class="sr-only"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="navbar-brand" href="/user/index">首页</a>
          <a class="navbar-brand" href="/user/videoListView">视频</a>
          <a class="navbar-brand" href="/user/index">题库</a>
          <a class="navbar-brand" href="/user/index">招聘</a>
          <a class="navbar-brand" href="/user/index">报名</a>
          <a class="navbar-brand" href="/user/liuyanView">留言</a>
        </div>
        <div id="navbar" class="navbar-collapse collapse">
      <!--      <form class="navbar-form navbar-right">
           <a class="btn btn-primary" href="/user/loginView" role="button">登陆</a>
           <a class="btn btn-primary" href="/user/registeredView" role="button">注册</a>
          </form> -->
        </div><!--/.navbar-collapse --> 
      </div>
    </nav>
    
    
	  <div class="container">
	      <div class="page-header">
	        <h1>我的报名</h1>
	        <p class="lead">美好高薪工作<a href="http://getbootstrap.com/getting-started/#disable-responsive">工资高</a> 工资高</p>
	      </div>
		  <c:forEach var="data" items="${list}">
		      <h4>报名时间： ${data.addTime }</h4>
		      <p>招聘标题： ${data.recruitment.title}</p>
		      <p>招聘说明：${data.recruitment.wageText }</p>
		      <p>招聘内容：${data.recruitment.labelText }</p>
		      <p>招聘发布时间：${data.recruitment.addTime }</p>
		      <hr>
		  </c:forEach>
    </div> <!-- /container -->
	<script src="https://cdn.bootcss.com/jquery/1.12.4/jquery.min.js"></script>
    <script>window.jQuery || document.write('<script src="../../assets/js/vendor/jquery.min.js"><\/script>')</script>
    <script src="https://cdn.bootcss.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <script>
    	function addLiuYan(){
    		var content = $("#content").val().trim();
    	    $.ajax({
	            type: 'post',
	            url: "/user/AddLeavemag",
	            data: {content:content},
	            datatype: 'json',
	            success: function (res) {
	            	if(res.code == 0){
	            		window.location.href="/user/liuyanView"
	            	}else{
	            		alert(res.msg)
	            	}
	            }, error:function(err){
	            	console.log(err)
	                alert("请求异常")
	            }
	        })
    	}
    </script>
</body>
</html>