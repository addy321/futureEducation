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

    <title>添加视频</title>

    <!-- Bootstrap core CSS -->
    <link href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
    
    <link rel="stylesheet" type="text/css" href="/static/webuploader-0.1.5/webuploader.css">


    <!-- Custom styles for this template -->
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
         <li class="active"><a href="#">视频管理</a></li>
         <li><a href="/admin/tikuView">题库管理</a></li>
         <li><a href="/admin/zhaopingView">招聘信息管理</a></li>
         <li><a href="/admin/shenheView">留言审核</a></li>
         <li><a href="/admin/baomingView">报名管理</a></li>
            </ul>
        </div>
        <div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">
            <h1 class="page-header">视频管理</h1>
           
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
		                  <input type="text" class="form-control" id="videoTitle" value="${video.videoTitle}">
		                </div>
		              </div>
		              <div class="form-group">
		                <label for="inputEmail3" class="col-sm-2 control-label">视频说明</label>
		                <div class="col-sm-10">
		                  <input type="text" class="form-control" id="videoManual" value="${video.videoManual}">
		                </div>
		              </div>
		              <div class="form-group">
		                <label for="inputEmail3" class="col-sm-2 control-label">视频内容</label>
		                <div class="col-sm-10">
		                  <input type="text" class="form-control" id="videocontent" value="${video.videocontent}">
		                </div>
		              </div>
		              <div class="form-group">
		                <label for="inputEmail3" class="col-sm-2 control-label">视频链接</label>
		                <div class="col-sm-10">
		                  <input type="text" class="form-control" id="videoUrl" value="${video.videoUrl}">
	                    
		                </div>
		              </div>
		              <div class="form-group">
		                <label for="inputEmail3" class="col-sm-2 control-label">视频图</label>
		                <div class="col-sm-10">
		                	<input type="text" class="form-control" id="videoImgUrl" value="${video.videoImgUrl}">
		                	  <div id="uploader" class="wu-example">
								<!--用来存放文件信息-->
								<div id="thelist" class="uploader-list"></div>
								<div class="btns">
									<div id="pickerfile">选择文件视频和图片文件</div>
								</div>
							</div>
		                </div>
		              </div>
		              <div class="form-group">
		                <label for="inputEmail3" class="col-sm-2 control-label">视频状态</label>
		                <div class="col-sm-10">
					    <select class="form-control" id="videoStatus">
					      <option value="1" <c:if test="${video.videoStatus eq 1}">selected</c:if> >停用</option>
					      <option value="2" <c:if test="${video.videoStatus eq 2}">selected</c:if>>启用</option>
					    </select>
		                </div>
		              </div>
		              <div class="form-group">
		                <label for="inputEmail3" class="col-sm-2 control-label">视频类型</label>
		                <div class="col-sm-10">
		                   <select class="form-control" id="videoType" value="${video.videoStatus}">
						      <option value="1" <c:if test="${video.videoStatus eq 1}">selected</c:if>>首页视频</option>
						      <option value="2" <c:if test="${video.videoStatus eq 2}">selected</c:if>>列表视频</option>
						      <option value="3" <c:if test="${video.videoStatus eq 3}">selected</c:if>>热门视频</option>
						    </select>
		                </div>
		              </div>
		              <div class="form-group" hidden>
		                <label for="inputEmail3" class="col-sm-2 control-label">id</label>
		                <div class="col-sm-10">
		                  <input type="text" class="form-control" id="id" value="${video.id}">
		                </div>
		              </div>
		            </form>
		          </div>
		          <div class="modal-footer">
		            <button type="button" class="btn btn-secondary" onclick="quit()">关闭</button>
		            <button type="button" class="btn btn-secondary"  onclick="addVideo()">保存</button>
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
    <script type="text/javascript" src="/static/webuploader-0.1.5/webuploader.js"></script>
    <script>
    	
  
    function addVideo(){
    	var id =  $("#id").val().trim();
    	var videoTitle =  $("#videoTitle").val().trim();
    	var videoManual =  $("#videoManual").val().trim();
    	var videocontent =  $("#videocontent").val().trim();
    	var videoUrl =  $("#videoUrl").val().trim();
    	var videoImgUrl =  $("#videoImgUrl").val().trim();
    	var videoStatus =  $("#videoStatus").val();
    	var videoType =  $("#videoType").val();
    	if(videoTitle == "" || videoManual=="" || videocontent=="" || videoUrl=="" || videoImgUrl==""){
    		alert("请填完整信息")
    	}else{
    		var data ={"id":id,"videoTitle": videoTitle, "videoManual": videoManual,"videocontent":videocontent,"videoUrl":videoUrl,"videoImgUrl":videoImgUrl,"videoStatus":videoStatus,"videoType":videoType };
    		$.ajax({
    	        type: 'post',
    	        url: "/admin/saveVideo",
    	        data: JSON.stringify(data),
    	        datatype: 'json',
    	        contentType: "application/json; charset=utf-8",
    	        success: function (res) {
    	        	if(res.code==0){
    	        		window.location.href="/admin/videoView"
    	            	$("#videoManual").val("");
    	            	$("#videocontent").val("");
    	        		$("#videoTitle").val("");
    	            	$("#videoUrl").val("");
    	            	$("#videoImgUrl").val("");
    	            	$("#videoStatus").val("");
    	            	$("#videoType").val("");
    	            	$("#id").val("");
    	        	}
    	        }, error:function(err){
    	        	console.log(err)
    	            alert("请求异常")
    	        }
    	    })
    	}
    }
    
    function quit(){
    	console.log(1)
    	window.location.href="/admin/videoView"
    }
    
    var hosturl="http://localhost:8002/";
    var hoken = "&userid=65&token=eb396f65b7fc11&time=1600305908857";
	var fileMd5;
	var $list=$("#thelist");
	var state = 'pending';//初始按钮状态
	var $btn=$("#btnfile");
	//监听分块上传过程中的三个时间点  
	WebUploader.Uploader.register({
		"before-send-file" : "beforeSendFile",
		"before-send" : "beforeSend",
		"after-send-file" : "afterSendFile",
	}, { 
		//时间点1：所有分块进行上传之前调用此函数  
		beforeSendFile : function(file) {
			var deferred = WebUploader.Deferred();
			//1、计算文件的唯一标记，用于断点续传  
			(new WebUploader.Uploader()).md5File(file, 0, 10 * 1024 * 1024)
					.progress(function(percentage) {
						$('#' + file.id).find("p.state").text("正在读取文件信息...");
					}).then(function(val) {
						fileMd5 = val;
						$('#' + file.id).find("p.state").text("成功获取文件信息...");
						//获取文件信息后进入下一步  
						deferred.resolve();
					});
			return deferred.promise();
		},
		//时间点2：如果有分块上传，则每个分块上传之前调用此函数  
		beforeSend : function(block) {
			var deferred = WebUploader.Deferred();

			$.ajax({
				type : "POST",
				url : hosturl+"video?action=checkChunk"+hoken,
				data : {
					//文件唯一标记  
					fileMd5 : fileMd5,
					//当前分块下标  
					chunk : block.chunk,
					//当前分块大小  
					chunkSize : block.end - block.start
				},
				dataType : "json",
				success : function(response) {
					if (response.ifExist) {
						//分块存在，跳过   
						deferred.reject();
					} else {
						//分块不存在或不完整，重新发送该分块内容  
						deferred.resolve();
					}
				}
			});

			this.owner.options.formData.fileMd5 = fileMd5;
			deferred.resolve();
			return deferred.promise();
		},
		//时间点3：所有分块上传成功后调用此函数  
		afterSendFile : function(file) {
			//如果分块上传成功，则通知后台合并分块  
			$.ajax({
				type : "POST",
				url : hosturl+"video?action=mergeChunks"+hoken,
				data : {
					fileMd5 : fileMd5,
					fileName: file.name
				},
				success : function(response) { 
				   var suffixIndex=response.lastIndexOf(".");  
				   var suffix=response.substring(suffixIndex+1).toUpperCase();  
				   console.log(suffix)
				   if(suffix == "BMP" || suffix == "JPG" || suffix == "JPEG" || suffix == "PNG" || suffix == "GIF"){  
					   $("#videoImgUrl").val(hosturl+"static/File/" + response)  
				   } else if(suffix == "MP4") {
					   $("#videoUrl").val(response)  
				   }else {
					   alert("上传文件格式不对")
				   }
				   console.log(response)
				}
			});
		}
	});
	var guidnow =  WebUploader.Base.guid();
	var uploader = WebUploader
	.create({ 
		// swf文件路径  
		swf : 'https://cdn.staticfile.org/webuploader/0.1.5/Uploader.swf',
		// 文件接收服务端。  
		server :  hosturl+'/admin/upload2'+'?a=a'+hoken,
		formData:{ 
		guid :guidnow,
		fileMd5 : fileMd5,
		},
		// 选择文件的按钮。可选。  
		// 内部根据当前运行是创建，可能是input元素，也可能是flash.  
		pick : {
			id : '#pickerfile',//这个id是你要点击上传文件的id
			multiple : false
		},
		// 不压缩image, 默认如果是jpeg，文件上传前会压缩一把再上传！  
		resize : true,
		auto : true,
		//开启分片上传  
		chunked : true,
		chunkSize : 2 * 1024 * 1024,
		accept : {
			extensions : "txt,jpg,jpeg,bmp,png,zip,rar,war,pdf,cebx,doc,docx,ppt,pptx,xls,xlsx,mp4",
			mimeTypes : '.txt,.jpg,.jpeg,.bmp,.png,.zip,.rar,.war,.pdf,.cebx,.doc,.docx,.ppt,.pptx,.xls,.xlsx,.mp4'
		}
	});
	
	// 当有文件被添加进队列的时候  
	uploader.on('fileQueued', function(file) {
		$list.append(
				'<div id="' + file.id + '" class="item">'
						+ '<p class="info">' + file.name + '</p>'
						+ '<p class="state">等待上传...</p></div>');
	});
	
	// 文件上传过程中创建进度条实时显示。  
	uploader.on('uploadProgress', function(file, percentage) {
		$('#' + file.id).find('p.state').text(
				'上传中 ' + Math.round(percentage * 100) + '%');
	});
	
	uploader.on('uploadSuccess', function(file) {
		$('#' + file.id).find('p.state').text('已上传');
	});
	
	uploader.on('uploadError', function(file) {
		$('#' + file.id).find('p.state').text('上传出错');
	});
	
	uploader.on('uploadComplete', function(file) {
		$('#' + file.id).find('.progress').fadeOut();
	});
	
	
	uploader.on('all', function(type) {
		if (type === 'startUpload') {
			state = 'uploading';
		} else if (type === 'stopUpload') {
			state = 'paused';
		} else if (type === 'uploadFinished') {
			state = 'done';
		}
		if (state === 'uploading') {
			$btn.text('暂停上传');
		} else {
			$btn.text('开始上传');
		}
	});
	
	$btn.on('click', function(){  
	       if (state === 'uploading'){  
	           uploader.stop(true);  
	       } else {  
	       	   uploader.upload();
	       }
	});

    </script>
</body>

</html>