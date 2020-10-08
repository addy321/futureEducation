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

    <title>Dashboard Template for Bootstrap</title>

    <!-- Bootstrap core CSS -->
    <link href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">

    <link href="/static/houtai/dashboard.css" rel="stylesheet">

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
		         <li><a href="/admin/videoView">视频管理</a></li>
		         <li><a href="/admin/tikuView">题库管理</a></li>
		         <li><a href="/admin/zhaopingView">招聘信息管理</a></li>
		         <li><a href="/admin/shenheView">留言审核</a></li>
		         <li class="active"> <a href="#">报名管理</a></li>
            </ul>
        </div>
        <div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">
            <h1 class="page-header">报名管理</h1>
          <!--   <div class="row placeholders">
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
            </div> -->
            
     <!--        <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModal">
		      	添加视频
		    </button> -->
		 
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
		                   <select class="form-control" id="videoType">
						      <option value="1">首页视频</option>
						      <option value="2">列表视频</option>
						      <option value="3">热门视频</option>
						    </select>
		                </div>
		              </div>
		              <div class="form-group">
		                <label for="inputEmail3" class="col-sm-2 control-label">id</label>
		                <div class="col-sm-10">
		                  <input type="text" class="form-control" id="id">
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
                            <th>id</th>
                            <th>用户名</th>
                            <th>用户昵称</th>
                            <th>招聘主键</th>
                            <th>招聘标题</th>
                            <th>报名时间</th>
                        </tr>
                    </thead>
                    <tbody>
                     <c:forEach var="data" items="${dataList}">
                        <tr>
                            <td>${data.id }</td>
                            <td>${data.userName }</td>
                            <td>${data.nickname }</td>
                            <td>${data.recruitmentId }</td>
                            <td>${data.recruitmentName }</td>
                            <td>${data.addTime }</td>
                            <td>
                            	<button type="button" class="btn-primary" id="${data.id}" onclick="delData(this)">
							      	删除
							    </button>
							   <%--  <button type="button" class="btn-primary" id="${video.id}" onclick="shouVideo(this)" data-toggle="modal" data-target="#exampleModal">
							      	修改
							    </button> --%>
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
                            href="<c:url value="/admin/baomingView?pageIndex=${loop.index}&PageRows=${PageRows}"/>">${loop.index}</a>
                    </li>
                </c:forEach>
                <c:set var="hidden" value="${totalPages<=1?'':'display: none;'}"/>
                <li style="${hidden}"><a href='/admin/baomingView?pageIndex=1&PageRows=10'>1</a></li>
		     </ul>
		   </nav>
        </div> 
    </div>

    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="https://cdn.bootcss.com/jquery/1.12.4/jquery.min.js"></script>
    <script>window.jQuery || document.write('<script src="../../assets/js/vendor/jquery.min.js"><\/script>')</script>
    <script src="https://cdn.bootcss.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <script>
    function delData(obj){
    	var flag = confirm("确定删除吗?");
    	if(flag){
    		$.ajax({
    	        type: 'get',
    	        url: "/admin/delApply",
    	        data: {id:$(obj).attr("id")},
    	        datatype: 'json',
    	        success: function (res) {
    	        	if(res.code==0){
    	        		window.location.href="/admin/baomingView"
    	        	}else{
    	        		alert("删除失败")
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