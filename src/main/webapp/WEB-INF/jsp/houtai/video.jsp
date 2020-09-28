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
        <div class="col-sm-3 col-md-2 sidebar">
            <ul class="nav nav-sidebar">
               <li><a href="/admin/index">首页管理 <span class="sr-only">(current)</span></a></li>
         <li class="active"><a href="#">视频管理</a></li>
         <li><a href="/admin/tikuView">题库管理</a></li>
         <li><a href="/admin/zhaopingView">招聘信息管理</a></li>
         <li><a href="/admin/shenheView">留言审核</a></li>
            </ul>
        </div>
        <div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">
            <h1 class="page-header">视频管理</h1>
            <div class="row placeholders">
                <form class="navbar-form navbar-left">
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
                </form>
            </div>
            
            <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModal">
		      	添加视频
		    </button>
		 
		    <!-- Modal -->
		    <div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
		      aria-hidden="true">
		      <div class="modal-dialog" role="document">
		        <div class="modal-content">
		          <div class="modal-header">
		            <h5 class="modal-title" id="exampleModalLabel">添加视频</h5>
		            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
		              <span aria-hidden="true">&times;</span>
		            </button>
		          </div>
		          <div class="modal-body">
		            <form class="form-horizontal">
		              <div class="form-group">
		                <label for="inputEmail3" class="col-sm-2 control-label">视频名</label>
		                <div class="col-sm-10">
		                  <input type="text" class="form-control" id="videoTitle">
		                </div>
		              </div>
		              <div class="form-group">
		                <label for="inputEmail3" class="col-sm-2 control-label">视频说明</label>
		                <div class="col-sm-10">
		                  <input type="text" class="form-control" id="videoManual">
		                </div>
		              </div>
		              <div class="form-group">
		                <label for="inputEmail3" class="col-sm-2 control-label">视频内容</label>
		                <div class="col-sm-10">
		                  <input type="text" class="form-control" id="videocontent">
		                </div>
		              </div>
		              <div class="form-group">
		                <label for="inputEmail3" class="col-sm-2 control-label">视频链接</label>
		                <div class="col-sm-10">
		                  <input type="text" class="form-control" id="videoUrl">
		                </div>
		              </div>
		              <div class="form-group">
		                <label for="inputEmail3" class="col-sm-2 control-label">视频图</label>
		                <div class="col-sm-10">
		                  <input type="text" class="form-control" id="videoImgUrl">
		                </div>
		              </div>
		              <div class="form-group">
		                <label for="inputEmail3" class="col-sm-2 control-label">视频状态</label>
		                <div class="col-sm-10">
					    <select class="form-control" id="videoStatus">
					      <option value="1">停用</option>
					      <option value="2">启用</option>
					    </select>
		                </div>
		              </div>
		              <div class="form-group">
		                <label for="inputEmail3" class="col-sm-2 control-label">视频类型</label>
		                <div class="col-sm-10">
		                   <select class="form-control" id="VideoType">
						      <option value="1">首页视频</option>
						      <option value="2">列表视频</option>
						      <option value="3">热门视频</option>
						    </select>
		                </div>
		              </div>
		            </form>
		          </div>
		          <div class="modal-footer">
		            <button type="button" class="btn btn-secondary" data-dismiss="modal">关闭</button>
		            <button type="button" class="btn btn-primary" onclick="addVideo()">保存</button>
		          </div>
		        </div>
		      </div>
		    </div>
            <div class="table-responsive">
                <table class="table table-striped">
                    <thead>
                        <tr>
                            <th>#</th>
                            <th>Header</th>
                            <th>Header</th>
                            <th>Header</th>
                            <th>Header</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>1,001</td>
                            <td>Lorem</td>
                            <td>ipsum</td>
                            <td>dolor</td>
                            <td>sit</td>
                            <td><span class="label label-danger">删除</span>
                                <span class="label label-default">修改</span>
                            </td>
                        </tr>
                        <tr>
                            <td>1,002</td>
                            <td>amet</td>
                            <td>consectetur</td>
                            <td>adipiscing</td>
                            <td>elit</td>
                            <td><span class="label label-danger">删除</span>
                                <span class="label label-default">修改</span>
                            </td>
                        </tr>
                        <tr>
                            <td>1,003</td>
                            <td>Integer</td>
                            <td>nec</td>
                            <td>odio</td>
                            <td>Praesent</td>
                            <td><span class="label label-danger">删除</span>
                                <span class="label label-default">修改</span>
                            </td>
                        </tr>
                        <tr>
                            <td>1,003</td>
                            <td>libero</td>
                            <td>Sed</td>
                            <td>cursus</td>
                            <td>ante</td>
                            <td><span class="label label-danger">删除</span>
                                <span class="label label-default">修改</span>
                            </td>
                        </tr>
                    </tbody>
                </table>
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
    	
    function addVideo(){
    	var videoTitle =  $("#videoTitle").val().trim();
    	var videoManual =  $("#videoManual").val().trim();
    	var videocontent =  $("#videocontent").val().trim();
    	var videoUrl =  $("#videoUrl").val().trim();
    	var videoImgUrl =  $("#videoImgUrl").val().trim();
    	var videoStatus =  $("#videoStatus").val();
    	var VideoType =  $("#VideoType").val();
    	if(videoTitle == "" || videoManual=="" || videocontent=="" || videoUrl=="" || videoImgUrl==""){
    		alert("请填完整信息")
    	}else{
    		var data ={ "videoTitle": videoTitle, "videoManual": videoManual,"videocontent":videocontent,"videoUrl":videoUrl,"videoImgUrl":videoImgUrl,"videoStatus":videoStatus,"VideoType":VideoType };
    		$.ajax({
    	        type: 'post',
    	        url: "/admin/saveVideo",
    	        data: JSON.stringify(data),
    	        datatype: 'json',
    	        contentType: "application/json; charset=utf-8",
    	        success: function (res) {
    	        	if(res.code==0){
    	        		alert(res.msg)
    	            	$("#videoManual").val("");
    	            	$("#videocontent").val("");
    	        		$("#videoTitle").val("");
    	            	$("#videoUrl").val("");
    	            	$("#videoImgUrl").val("");
    	            	$("#videoStatus").val("");
    	            	$("#VideoType").val("");
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