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
		           <li class="active"><a href="#">题库管理</a></li>
		           <li><a href="/admin/zhaopingView">招聘信息管理</a></li>
		           <li><a href="/admin/shenheView">留言审核</a></li>
		           <li><a href="/admin/baomingView">报名管理</a></li>
                </ul>
            </div>
            <div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">
                <h1 class="page-header">题库管理</h1>

                <!--  <div class="row placeholders">
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
				<a class="btn btn-primary" href="/admin/SaveTiKuView" role="button">添加题材</a>
			 
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
			                <label for="inputEmail3" class="col-sm-2 control-label">题材标题</label>
			                <div class="col-sm-10">
			                  <input type="text" class="form-control" id="fileTtle">
			                </div>
			              </div>
			              <div class="form-group">
			                <label for="inputEmail3" class="col-sm-2 control-label">题材说明</label>
			                <div class="col-sm-10">
			                  <input type="text" class="form-control" id="fileDirections">
			                </div>
			              </div>
			              <div class="form-group">
			                <label for="inputEmail3" class="col-sm-2 control-label">题材详情</label>
			                <div class="col-sm-10">
			                  <input type="text" class="form-control" id="fileContent">
			                </div>
			              </div>
			              <div class="form-group">
			                <label for="inputEmail3" class="col-sm-2 control-label">题材地址</label>
			                <div class="col-sm-10">
			                  <input type="text" class="form-control" id="fileUrl"> 
			                </div>
			              </div>
			              <div class="form-group" hidden>
			                <label for="inputEmail3" class="col-sm-2 control-label">id</label>
			                <div class="col-sm-10">
			                  <input type="text" class="form-control" id="id">
			                </div>
			              </div>
			            </form>
			          </div>
			          <div class="modal-footer">
			            <button type="button" class="btn btn-secondary" data-dismiss="modal">关闭</button>
			            <button type="button" class="btn btn-primary" onclick="addData()">保存</button>
			          </div>
			        </div>
			      </div>
			    </div>
                <div class="table-responsive">
                    <table class="table table-striped">
                        <thead>
                            <tr>
                                <th>id</th>
                                <th>题材标题</th>
                                <th>题材说明</th>
                                <th>题材详情</th>
                                <th>题材添加时间</th>
                                <th>题材地址</th>
                            </tr>
                        </thead>
                        <tbody>
                          <c:forEach var="data" items="${dataList}">
                            <tr>
                                <td>${data.id }</td>
                                <td>${data.fileTtle }</td>
                                <td>${data.fileDirections }</td>
                                <td>${data.fileContent }</td>
                                <td>${data.fileAddtime }</td>
                                <td>${data.fileUrl }</td>
                                <td>
                               		<button type="button" class="btn-primary" id="${data.id}" onclick="delLeavemag(this)">
							      		删除
								    </button>
								    <button type="button" class="btn-primary" id="${data.id}" onclick="shouData(this)" data-toggle="modal" data-target="#exampleModal">
								      	修改
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
	<script type="text/javascript">
	function addData(){
    	var id =  $("#id").val().trim();
    	var fileTtle =  $("#fileTtle").val().trim();
    	var fileDirections =  $("#fileDirections").val().trim();
    	var fileContent =  $("#fileContent").val().trim();
    	var fileUrl =  $("#fileUrl").val().trim();
    	if(fileTtle == "" || fileDirections=="" || fileContent=="" || fileUrl==""){
    		alert("请填完整信息")
    	}else{
    		var data ={"id":id,"fileTtle": fileTtle, "fileDirections": fileDirections,"fileContent":fileContent,"fileUrl":fileUrl};
    		$.ajax({
    	        type: 'post',
    	        url: "/admin/saveTheme",
    	        data: JSON.stringify(data),
    	        datatype: 'json',
    	        contentType: "application/json; charset=utf-8",
    	        success: function (res) {
    	        	if(res.code==0){
    	        		window.location.href="/admin/tikuView"
    	        	}
    	        }, error:function(err){
    	        	console.log(err)
    	            alert("请求异常")
    	        }
    	    })
    	}
    }
    function delVideo(obj){
    	var flag = confirm("确定删除吗?");
    	if(flag){
    		$.ajax({
    	        type: 'get',
    	        url: "/admin/delTheme",
    	        data: {id:$(obj).attr("id")},
    	        datatype: 'json',
    	        success: function (res) {
    	        	if(res.code==0){
    	        		window.location.href="/admin/tikuView"
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
    
    function shouData(obj){
    	window.location.href="/admin/SaveTiKuView?id="+$(obj).attr("id")
    	/* $.ajax({
	        type: 'get',
	        url: "/admin/getTheme",
	        data: {id:$(obj).attr("id")},
	        datatype: 'json',
	        success: function (res) {
	        	if(res.code == 0){
	        		var video =res.data
	        		$("#id").val(video.id)
	            	$("#fileTtle").val(video.fileTtle)
	            	$("#fileDirections").val(video.fileDirections)
	            	$("#fileContent").val(video.fileContent)
	            	$("#fileUrl").val(video.fileUrl)
	        	}else{
	        		alert("请求失败")
	        	}
	        	console.log(res)
	        }, error:function(err){
	        	console.log(err)
	            alert("请求异常")
	        }
	    }) */
    }

	
	</script>
</body>

</html>