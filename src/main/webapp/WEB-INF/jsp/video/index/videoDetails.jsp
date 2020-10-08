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
    <!-- 视频播放css -->
    <link href="/static/video/index/main-css.css" rel="stylesheet">
</head>

<title>播放视频</title>

<!-- Bootstrap core CSS -->
<link href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
<style>
    html,
    body {
        width: 100%;
        height: 100%;
    }

    * {
        padding: 0;
        margin: 0;
    }

    #videoContainer {
        width: 800px;
        height: 500px;
        margin-left: auto;
        margin-right: auto;
    }
</style>
</head>

<body>

    <!-- Static navbar -->
    <nav class="navbar navbar-default navbar-static-top" style="background-color: black;">
        <div class="container">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar"
                    aria-expanded="false" aria-controls="navbar">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="#">视频教学</a>
            </div>
            <div id="navbar" class="navbar-collapse collapse">
                <ul class="nav navbar-nav">
                    <li><a href="/user/index">首页</a></li>
                    <li><a href="/user/videoListView">视频播放专区</a></li>
                </ul>
            </div>
            <!--/.nav-collapse -->
        </div>
    </nav>

    <div class="container">

        <!-- Main component for a primary marketing message or call to action -->
        <div class="jumbotron">
            <h1>${video.videoTitle }</h1>
            <p>${video.videoManual }</p>
            <p>${video.videocontent }</p>
            <noscript>
                <strong>We're sorry but soucecode doesn't work properly without JavaScript enabled. Please enable it to
                    continue. 
                </strong>
            </noscript>
            <div id="videoContainer"></div>
        </div>


    </div> <!-- /container -->

<input type = 'hidden' id ='videoUrl' name = 'value' value = '${video.videoUrl}'></input>
    <!-- 视频播放插件 -->
    <script type="text/javascript" src="http://v.bootstrapmb.com/2020/7/ti6i78438/superVideo.js"></script>
</body>
<!-- Bootstrap core JavaScript
    ================================================== -->
<!-- Placed at the end of the document so the pages load faster -->
<script src="https://cdn.bootcss.com/jquery/1.12.4/jquery.min.js"></script>
<script>window.jQuery || document.write('<script src="../../assets/js/vendor/jquery.min.js"><\/script>')</script>
<script src="https://cdn.bootcss.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script>
    const nextControl = new Super.NextControl() // 实例化“下一个”按钮控件
    const Dbspeen = new Super.DbspeenControl() // 倍速控件
    const BarrageControl = new Super.BarrageControl() // 弹幕控件
    const fullScreenControl = new Super.FullScreenControl() // 实例化“全屏”控件
    const video = new Super.Svideo('videoContainer', {
        source: new Super.VideoSource({ // 引入视频资源
            src: $('#videoUrl').val()
        }),
        leftControls: [nextControl], // 控件栏左槽插入控件
        rightControls: [Dbspeen, fullScreenControl], // 控件栏右槽插入控件
        centerControls: [BarrageControl] // 弹幕控件插入中间插槽
    })
    video.addEventListener('change', (event) => { // 监听video各属性变化
        //  console.log(event)
    })
    nextControl.addEventListener('click', () => { // 监听“下一个”按钮控件点击事件
        alert('click next menu !!!')
    })
    fullScreenControl.addEventListener('fullscreen', () => { // 监听进入全屏
        console.log('is fullscreen !!!')
    })
    fullScreenControl.addEventListener('cancelfullscreen', () => { // 监听退出全屏
        console.log('cancel fullscreen !!!')
    })
    video.addEventListener('fullscreen', () => {
        console.log('is fullscreen !!!')
    })
    video.addBarrage(new Super.Barrage('6666666666', {
        color: 'red'
    }))
    video.addBarrage('冲鸭~~~~~~')
    video.addBarrage('奥里给！！！！！！')
</script>
</body>

</html>