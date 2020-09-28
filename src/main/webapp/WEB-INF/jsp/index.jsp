<%@ page language="java" contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
 	<meta http-equiv="Content-type" content="text/html; charset=UTF-8">
 	<meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>首页</title>

    <!-- Bootstrap core CSS -->
    <link href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
    <link rel="icon" href="/static/img/bitbug_favicon.ico">

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="https://cdn.bootcss.com/html5shiv/3.7.3/html5shiv.min.js"></script>
      <script src="https://cdn.bootcss.com/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
    <style>
        .btn-default{
            margin-left: 40px;
        }
    </style>
  </head>

  <body>

    <nav class="navbar navbar-inverse navbar-fixed-top">
      <div class="container">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="navbar-brand" href="/user/index">首页</a>
          <a class="navbar-brand" href="/user/videoListView">视频</a>
          <a class="navbar-brand" href="/user/index">题库</a>
          <a class="navbar-brand" href="/user/index">招聘</a>
          <a class="navbar-brand" href="/user/index">报名</a>
          <a class="navbar-brand" href="/user/index">留言</a>
        </div>
        <div id="navbar" class="navbar-collapse collapse">
           <form class="navbar-form navbar-right">
           <a class="btn btn-primary" href="/user/loginView" role="button">登陆</a>
           <a class="btn btn-primary" href="/user/registeredView" role="button">注册</a>
          </form>
        </div><!--/.navbar-collapse --> 
      </div>
    </nav>

    <!-- Main jumbotron for a primary marketing message or call to action -->
    <div class="jumbotron">
      <div class="container">
        <h1>毕业设计</h1>
        <p>未来教师网为考生精心打造一款适用于参加教师资格证、教师招聘考试的备考学习网站。该网站提供教师资格证笔试面试、
            教师招聘考试笔试面试、报名及公告资讯查询，题库练习、直播辅导课程、面试实战点评、错题纠错。它的出现不仅可以方便
            备考学生查阅资料、报名信息等，还能为备考生提供交流的平台</p>
        <p><a class="btn btn-primary btn-lg" href="#" role="button"> 在线报名 &raquo;</a></p>
      </div>
    </div>

    

    <div class="container">
        <div class="carousel slide" id="carousel-example-generic" data-ride="carousel" data-interval="1500" style="margin-bottom: 50px;">
            <ol class="carousel-indicators">
                <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
                <li data-target="#carousel-example-generic" data-slide-to="1"></li>
            </ol>
            <div class="carousel-inner " id="hxp_lunbo">
                <div class="item active ">
                    <img src="/static/img/tupian.jpg">
                </div>
                <div class="item">
                    <img src="/static/img/tupian.jpg">
                </div>
            </div>
            <a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
                <span class="glyphicon glyphicon-chevron-left"></span>
            </a>
            <a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
                <span class="glyphicon glyphicon-chevron-right"></span>
            </a>
        </div>
        <div class="bs-example" data-example-id="thumbnails-with-custom-content">
            <div class="row">
              <div class="col-sm-6 col-md-4">
                <div class="thumbnail">
                  <img data-src="holder.js/100%x200" alt="100%x200" src="https://www.17sucai.com/preview/855854/2019-06-19/xueyuan/images/index15.jpg" data-holder-rendered="true" style="height: 200px; width: 100%; display: block;">
                  <div class="caption">
                    <h3>大苏打撒 大苏打撒</h3>
                    <p>未来教师网为考生精心打造一款适用于参加教师资格证、教师招聘考试的备考学习网站。该网站提供教师资格证笔试面试、 教师招聘考试笔试面试、报名及公告资讯查询，题库练习、直播辅导课程、面试实战点评、错题纠错。它的出现不仅可以方便 备考学生查阅资料、报名信息等，还能为备考生提供交流的平台</p>
                  </div>
                </div>
              </div>
              <div class="col-sm-6 col-md-4">
                <div class="thumbnail">
                  <img data-src="holder.js/100%x200" alt="100%x200" src="https://www.17sucai.com/preview/855854/2019-06-19/xueyuan/images/index14.jpg" data-holder-rendered="true" style="height: 200px; width: 100%; display: block;">
                  <div class="caption">
                    <h3>大苏打撒 大苏打撒</h3>
                    <p>未来教师网为考生精心打造一款适用于参加教师资格证、教师招聘考试的备考学习网站。该网站提供教师资格证笔试面试、 教师招聘考试笔试面试、报名及公告资讯查询，题库练习、直播辅导课程、面试实战点评、错题纠错。它的出现不仅可以方便 备考学生查阅资料、报名信息等，还能为备考生提供交流的平台</p>
                  </div>
                </div>
              </div>
              <div class="col-sm-6 col-md-4">
                <div class="thumbnail">
                  <img data-src="holder.js/100%x200" alt="100%x200" src="https://www.17sucai.com/preview/855854/2019-06-19/xueyuan/images/index16.jpg" data-holder-rendered="true" style="height: 200px; width: 100%; display: block;">
                  <div class="caption">
                    <h3>大苏打撒 大苏打撒</h3>
                    <p>未来教师网为考生精心打造一款适用于参加教师资格证、教师招聘考试的备考学习网站。该网站提供教师资格证笔试面试、 教师招聘考试笔试面试、报名及公告资讯查询，题库练习、直播辅导课程、面试实战点评、错题纠错。它的出现不仅可以方便 备考学生查阅资料、报名信息等，还能为备考生提供交流的平台</p>
                  </div>
                </div>
              </div>
            </div>
          </div>
      <!-- Example row of columns -->
      <div class="row">
        <div class="col-md-4">
          <h2>视频课程<a class="btn btn-default" href="/user/videoListView" role="button">在线课堂 &raquo;</a></h2>
          <p>你还在教室？在听老师上课？还在慢慢记笔记？还要举手发言？
            还在为没时间学习而苦恼吗？
            还在为找不到好的学习方式烦恼吗？......
            OH! MY GOD!
            你落伍啦！
            现在我们都在线啦！
            还等什么！
            快来加入吧！</p>
        </div>
        <div class="col-md-4">
          <h2>招聘信息<a class="btn btn-default" href="#" role="button">查看招聘 &raquo;</a></h2>
          <p>××中学创建于1997年9月，座落于高新技术产业开发区。学校将为其办理入郑户口及工作调动等手续，按规定解决优秀教师住房，并给予 优厚待遇。
            只要您德才兼备，××中学欢迎您加盟！</p>
       </div>
        <div class="col-md-4">
          <h2>题库信息<a class="btn btn-default" href="#" role="button">深入学习 &raquo;</a></h2>
          <p>为提高教师质量我们会及时更新课件资料，为用户们成就美好的明天</p>
          
        </div>
      </div>
      <hr>
      <h3><a href="/user/videoListView">视频教学专区</a></h3>
      <div class="bs-example" data-example-id="thumbnails-with-custom-content">
        <div class="row">
          <div class="col-sm-6 col-md-4">
            <div class="thumbnail">
              <img data-src="holder.js/100%x200" alt="100%x200" src="https://www.17sucai.com/preview/855854/2019-06-19/xueyuan/images/index15.jpg" data-holder-rendered="true" style="height: 200px; width: 100%; display: block;">
              <div class="caption">
                 <h3><a href="/user/videoView">视频教学 </a></h3>
                <p>网上在线教学成就未来美好优秀的你</p>
              </div>
            </div>
          </div>
          <div class="col-sm-6 col-md-4">
            <div class="thumbnail">
              <img data-src="holder.js/100%x200" alt="100%x200" src="https://www.17sucai.com/preview/855854/2019-06-19/xueyuan/images/index14.jpg" data-holder-rendered="true" style="height: 200px; width: 100%; display: block;">
              <div class="caption">
                 <h3><a href="/user/videoView">视频教学 </a></h3>
                <p>网上在线教学成就未来美好优秀的你</p>
              </div>
            </div>
          </div>
          <div class="col-sm-6 col-md-4">
            <div class="thumbnail">
              <img data-src="holder.js/100%x200" alt="100%x200" src="https://www.17sucai.com/preview/855854/2019-06-19/xueyuan/images/index16.jpg" data-holder-rendered="true" style="height: 200px; width: 100%; display: block;">
              <div class="caption">
                <h3><a href="/user/videoView">视频教学 </a></h3>
                <p>网上在线教学成就未来美好优秀的你</p>
              </div>
            </div>
          </div>
               <div class="col-sm-6 col-md-4">
            <div class="thumbnail">
              <img data-src="holder.js/100%x200" alt="100%x200" src="https://www.17sucai.com/preview/855854/2019-06-19/xueyuan/images/index16.jpg" data-holder-rendered="true" style="height: 200px; width: 100%; display: block;">
              <div class="caption">
                <h3><a href="/user/videoView">视频教学 </a></h3>
                <p>网上在线教学成就未来美好优秀的你</p>
              </div>
            </div>
          </div>
               <div class="col-sm-6 col-md-4">
            <div class="thumbnail">
              <img data-src="holder.js/100%x200" alt="100%x200" src="https://www.17sucai.com/preview/855854/2019-06-19/xueyuan/images/index16.jpg" data-holder-rendered="true" style="height: 200px; width: 100%; display: block;">
              <div class="caption">
                <h3><a href="/user/videoView">视频教学 </a></h3>
                <p>网上在线教学成就未来美好优秀的你</p>
              </div>
            </div>
          </div>
               <div class="col-sm-6 col-md-4">
            <div class="thumbnail">
              <img data-src="holder.js/100%x200" alt="100%x200" src="https://www.17sucai.com/preview/855854/2019-06-19/xueyuan/images/index16.jpg" data-holder-rendered="true" style="height: 200px; width: 100%; display: block;">
              <div class="caption">
                <h3><a href="/user/videoView">视频教学 </a></h3>
                <p>网上在线教学成就未来美好优秀的你</p>
              </div>
            </div>
          </div>
        </div>
      </div>

      <hr>

      <footer>
        <p>&copy; 2020/9/26 Company, Inc.</p>
      </footer>
    </div> <!-- /container -->


    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="https://cdn.bootcss.com/jquery/1.12.4/jquery.min.js"></script>
    <script>window.jQuery || document.write('<script src="../../assets/js/vendor/jquery.min.js"><\/script>')</script>
    <script src="https://cdn.bootcss.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
  </body>
</html>