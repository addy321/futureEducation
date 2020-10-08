<%@ page language="java" contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %><%--核心标签--%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %><%--格式化标签--%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %><%--函数标签--%>
<!DOCTYPE html>
<html lang="zh-CN">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="../../favicon.ico">

    <title>Dashboard Template for Bootstrap</title>

    <!-- Bootstrap core CSS -->
    <link href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">



    <!-- Custom styles for this template -->
    <link href="/static/houtai/dashboard.css" rel="stylesheet">

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="https://cdn.bootcss.com/html5shiv/3.7.3/html5shiv.min.js"></script>
      <script src="https://cdn.bootcss.com/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
    <style>
        .placeholder {
            background-color: aqua;
        }
    </style>
</head>

<body>

    <nav class="navbar navbar-inverse navbar-fixed-top">
        <div class="container-fluid">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar"
                    aria-expanded="false" aria-controls="navbar">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="#">管理后台</a>
            </div>
            <div id="navbar" class="navbar-collapse collapse">
                <ul class="nav navbar-nav navbar-right">
                    <li><a href="#">Admin</a></li>
                    <li><a href="/admin/quit">退出后台</a></li>
                </ul>
            </div>
        </div>
    </nav>

    <div class="container-fluid">
        <div class="row">
            <div class="col-sm-3 col-md-2 sidebar">
                <ul class="nav nav-sidebar">
                   <li><a href="/admin/index">首页管理 <span class="sr-only">(current)</span></a></li>
		           <li><a href="/admin/videoView">视频管理</a></li>
		           <li><a href="/admin/tikuView">题库管理</a></li>
		           <li><a href="/admin/zhaopingView">招聘信息管理</a></li>
		           <li class="active"><a href="#">留言审核</a></li>
		           <li><a href="/admin/baomingView">报名管理</a></li>
                </ul>
            </div>
            <div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">
                <h1 class="page-header">留言审核</h1>

                <div class="row placeholders">
                 <!--    <form class="navbar-form navbar-left">
                        <div class="form-group">
                            <input type="text" class="form-control" placeholder="Search">
                        </div>
                        <div class="form-group">
                            <input type="text" class="form-control" placeholder="Search">
                        </div>
                        <div class="form-group">
                            <input type="text" class="form-control" placeholder="Search">
                        </div>
                        <button type="submit" class="btn btn-default">查询</button>
                    </form> -->
                </div>
                <div class="table-responsive">
                    <table class="table table-striped">
                        <thead>
                            <tr>
                                <th>id</th>
                                <th>用户名</th>
                                <th>添加时间</th>
                                <th>状态</th>
                                <th>内容</th>
                                <th>昵称</th>
                            </tr>
                        </thead>
                        <tbody>
                       	 <c:forEach var="Leavemag" items="${leavemags}">
                            <tr>
                                <td>${Leavemag.id }</td>
                                <td>${Leavemag.userName }</td>
                                <td>${Leavemag.addTime }</td>
                                <td>
                                	<c:out value="${Leavemag.status==1 ? '未通过审核': '通过审核'}"/>
                                </td>
                                <td>${Leavemag.content }</td>
                                <td>${Leavemag.nickname }</td>
                                <td>
                               		<button type="button" class="btn-primary" id="${Leavemag.id}" onclick="delLeavemag(this)">
							      	删除
								    </button>
								    <button type="button" class="btn-primary" id="${Leavemag.id}" onclick="tongguoLeavemag(this)">
								      	通过
								    </button>
                                </td>
                            </tr>
                          </c:forEach>
                        </tbody>
                    </table>
                </div>
                <nav aria-label="...">
			      <ul class="pagination" style="float: right;">
			        <c:forEach begin="1" end="${totalPages}" varStatus="loop">
	                    <c:set var="active" value="${loop.index==pageIndex?'active':''}"/>
	                    <li class="${active}"><a
	                            href="<c:url value="/admin/videoView?pageIndex=${loop.index}&PageRows=${PageRows}"/>">${loop.index}</a>
	                    </li>
	                </c:forEach>
	                <c:set var="hidden" value="${totalPages<=1?'':'display: none;'}"/>
	                <li style="${hidden}"><a href='/admin/videoView?pageIndex=1&PageRows=10'>1</a></li>
			     </ul>
			   </nav>
            </div>
        </div>
    </div>

    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="https://cdn.bootcss.com/jquery/1.12.4/jquery.min.js"></script>
    <script>window.jQuery || document.write('<script src="../../assets/js/vendor/jquery.min.js"><\/script>')</script>
    <script src="https://cdn.bootcss.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	<script>
		function delLeavemag(obj){
	    	var flag = confirm("确定删除吗?");
	    	if(flag){
	    		$.ajax({
	    	        type: 'get',
	    	        url: "/admin/delLeavemag",
	    	        data: {id:$(obj).attr("id")},
	    	        datatype: 'json',
	    	        success: function (res) {
	    	        	if(res.code==0){
	    	        		window.location.href="/admin/shenheView"
	    	        	}else{
	    	        		alert(res.mag)
	    	        	}
	    	        }, error:function(err){
	    	        	console.log(err)
	    	            alert("请求异常")
	    	        }
	    	    })
	    	}
	    }
		
		function tongguoLeavemag(obj){
	    	var flag = confirm("确定通过吗?");
	    	if(flag){
	    		$.ajax({
	    	        type: 'get',
	    	        url: "/admin/upLeavemag",
	    	        data: {id:$(obj).attr("id")},
	    	        datatype: 'json',
	    	        success: function (res) {
	    	        	if(res.code==0){
	    	        		window.location.href="/admin/shenheView"
	    	        	}else{
	    	        		alert(res.mag)
	    	        	}
	    	        }, error:function(err){
	    	        	console.log(err)
	    	            alert("请求异常")
	    	        }
	    	    })
	    	}
	    }
	</script>
</body>

</html>