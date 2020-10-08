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
    <link rel="icon" href="/static/img/bitbug_favicon.ico">

    <title>Off</title>

    <!-- Bootstrap core CSS -->
    <link href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">


    <!-- Custom styles for this template -->
    <link href="/static/video/list/offcanvas.css" rel="stylesheet">

</head>

<body>
    <nav class="navbar navbar-fixed-top navbar-inverse">
        <div class="container">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar"
                    aria-expanded="false" aria-controls="navbar">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="#">视频专区</a>
            </div>
            <div id="navbar" class="collapse navbar-collapse">
                <ul class="nav navbar-nav">
                    <li class="active"><a href="/user/index">回到首页</a></li>
                </ul>
            </div><!-- /.nav-collapse -->
        </div><!-- /.container -->
    </nav><!-- /.navbar -->

    <div class="container">

        <div class="row row-offcanvas row-offcanvas-right">

            <div class="col-xs-12 col-sm-9">
                <p class="pull-right visible-xs">
                    <button type="button" class="btn btn-primary btn-xs" data-toggle="offcanvas">Toggle nav</button>
                </p>
                <div class="jumbotron">
                    <h1>视频专区</h1>
                    <p>网上教学成就未来优秀的你网上教学成就未来优秀的你网上教学成就未来优秀的你网上教学成就未来优秀的你网上教学成就未来优秀的你网上教学成就未来优秀的你网上教学成就未来优秀的你</p>
                </div>
                <div class="bs-example" data-example-id="thumbnails-with-custom-content">
                    <div class="row">
	                    <c:forEach var="video" items="${videos}">
	                        <div class="col-sm-6 col-md-4">
	                            <div class="thumbnail">
	                                <img data-src="holder.js/100%x200" alt="100%x200"
	                                    src="${video.videoImgUrl}"
	                                    data-holder-rendered="true" style="height: 200px; width: 100%; display: block;">
	                                <div class="caption">
	                                    <h3>${video.videoTitle }</h3>
	                                    <p>${video.videoManual }</p>
	                                    <p><a href="/user/videoView/${video.id }" class="btn btn-primary" role="button">播放</a> </p>
	                                </div>
	                            </div>
	                        </div>
	                     </c:forEach>
                    </div>
                </div>
            </div>
            <!--/.col-xs-12.col-sm-9-->

            <div class="col-xs-6 col-sm-3 sidebar-offcanvas" id="sidebar">
                <div class="list-group">
                 	<a href="#" class="list-group-item active">热门视频</a>
                  <c:forEach var="video" items="${videos}"> 
                    <a href="/user/videoView/${video.id }" class="list-group-item">${video.videoTitle }</a>
                   </c:forEach>
                </div>
            </div>
            <!--/.sidebar-offcanvas-->
        </div>
        <!--/row-->

        <hr>

        <footer>
            <p>&copy; Company 2020</p>
        </footer>

    </div>
    <!--/.container-->


    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="https://cdn.bootcss.com/jquery/1.12.4/jquery.min.js"></script>
    <script>window.jQuery || document.write('<script src="../../assets/js/vendor/jquery.min.js"><\/script>')</script>
    <script src="https://cdn.bootcss.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <script>
        $(document).ready(function () {
            $('[data-toggle="offcanvas"]').click(function () {
                $('.row-offcanvas').toggleClass('active')
            });
        });
    </script>
</body>

</html>