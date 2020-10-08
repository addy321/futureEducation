<%@ page language="java" contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>
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

  <title>后台</title>

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
        <form class="navbar-form navbar-right">
          <input type="text" class="form-control" placeholder="Search...">
        </form>
      </div>
    </div>
  </nav>

  <div class="container-fluid">
    <div class="row">
      <div class="col-sm-3 col-md-2 sidebar">
        <ul class="nav nav-sidebar">
          <li class="active"><a href="#">首页管理 <span class="sr-only">(current)</span></a></li>
          <li><a href="/admin/videoView">视频管理</a></li>
          <li><a href="/admin/tikuView">题库管理</a></li>
          <li><a href="/admin/zhaopingView">招聘信息管理</a></li>
          <li><a href="/admin/shenheView">留言审核</a></li>
          <li><a href="/admin/baomingView">报名管理</a></li>
        </ul>
      </div>
      <div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">
        <h1 class="page-header">首页统计</h1>
        <div class="row placeholders">
          <div class="col-xs-6 col-sm-3 placeholder">
            <h4>留言数</h4>
            <span class="text-muted">100</span>
          </div>
          <div class="col-xs-6 col-sm-3 placeholder">
            <h4>视频课程</h4>
            <span class="text-muted">100</span>
          </div>
          <div class="col-xs-6 col-sm-3 placeholder">
            <h4>招聘信息</h4>
            <span class="text-muted">100</span>
          </div>
          <div class="col-xs-6 col-sm-3 placeholder">
            <h4>题库量</h4>
            <span class="text-muted">100</span>
          </div>
        </div>
      </div>
    </div>
  </div>

  <!-- Bootstrap core JavaScript
    ================================================== -->
  <!-- Placed at the end of the document so the pages load faster -->
  <script src="https://cdn.bootcss.com/jquery/1.12.4/jquery.min.js"></script>
  <script>window.jQuery || document.write('<script src="../../assets/js/vendor/jquery.min.js"><\/script>')</script>
  <script src="https://cdn.bootcss.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

</body>

</html>