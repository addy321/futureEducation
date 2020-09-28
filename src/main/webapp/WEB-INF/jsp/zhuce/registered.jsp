<%@ page language="java" contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">

<head>
	<meta charset="UTF-8">
	<title>注册</title>
	<meta content="width=device-width,initial-scale=1.0,maximum-scale=1.0,user-scalable=0" name="viewport" />
	<meta content="yes" name="apple-mobile-web-app-capable" />
	<meta content="black" name="apple-mobile-web-app-status-bar-style" />
	<meta content="telephone=no" name="format-detection" />
	<link href="/static/zhuce/style.css" rel="stylesheet" type="text/css" />
	<script src="https://cdn.bootcss.com/jquery/1.12.4/jquery.min.js"></script>
	<script type="text/javascript" src="/static/zhuce/register.js"></script>
</head>

<body>


	<div class="jq22-register-popup" style="text-align:center">
		<div class="jq22-register-box">
			<div class="jq22-register-link">
				<a href="/user/index" class="fl">返回首页</a>
				<a href="/user/loginView" class="fr">已有账号？去首页登录</a>
			</div>
			<div class="jq22-register-logo">
				会员注册验证<br>
			</div>
			<span style="color: red;">${Message }</span>
			<div class="jq22-register-form" id="verifyCheck">
				<form action="/user/Registered" method="POST" id="from">
					<div class="jq22-register-form-item">
						<input type="text" name="otherName" maxlength="20" placeholder="昵称" class="txt03 f-r3 required"
							tabindex="3" data-valid="isNonEmpty||between:3-20||isUname"
							data-error="<i class='icon-tips'></i>您还没有输入昵称||<i class='icon-tips'></i>昵称长度3-20位||<i class='icon-tips'></i>只能输入字母、数字、且以中文或字母开头"
							id="adminNo">
						<label class="focus valid"></label>
					</div>
					<div class="jq22-register-form-item">
						<input type="text" name="userName" maxlength="20" placeholder="账户号" class="txt03 f-r3 required"
							tabindex="3" data-valid="isNonEmpty||between:3-20||isUname"
							data-error="<i class='icon-tips'></i>您还没有输入账户名||<i class='icon-tips'></i>用户名长度3-20位||<i class='icon-tips'></i>只能输入字母、数字、且以中文或字母开头"
							id="adminNo">
						<label class="focus valid"></label>
					</div>
					<div class="jq22-register-form-item">
						<input type="password" name="password" placeholder="设置密码" id="password" maxlength="20"
							class="txt04 f-r3 required" tabindex="4" style="ime-mode:disabled;" onpaste="return  false"
							autocomplete="off" data-valid="isNonEmpty||between:6-20||level:2"
							data-error="<i class='icon-tips'></i>密码太短，最少6位||<i class='icon-tips'></i>密码长度6-20位||<i class='icon-tips'></i>密码太简单，有被盗风险，建议字母+数字的组合">
						<label class="focus valid"></label>
					</div>
					<div class="jq22-register-form-item">
						<input type="password" name="passworda" placeholder="确认密码" maxlength="20"
							class="txt05 f-r3 required" tabindex="5" style="ime-mode:disabled;" onpaste="return  false"
							autocomplete="off" data-valid="isNonEmpty||between:6-16||isRepeat:password"
							data-error="<i class='icon-tips'></i>密码太短，最少6位||<i class='icon-tips'></i>密码长度6-16位||<i class='icon-tips'></i>两次密码输入不一致"
							id="rePassword">
						<label class="focus valid"></label>
					</div>
					<div class="jq22-register-form-item">
						<div class="protocol">注册即同意<a href="#">《用户使用协议》</a>&amp;<a href="#">《隐私权条款》</a></div>
						<input id="jq22-btn-reg" class="jq22-btn-reg" placeholder="" readonly="readonly" type="button" value="注册">
					</div>
				</form>
			</div>
			<div class="jq22-register-bottom">
				<a>baidu.com</a>
				<a href="#">联系客服</a>
				<a href="#">帮助中心</a>
				<div class="clear"></div>
			</div>
		</div>
	</div>

</body>

<script type="text/javascript">
	$(function () {
		$("#jq22-btn-reg").click(function () {
			if (!verifyCheck._click()) return;
			$('#from').submit()
		});
	});
</script>

</html>