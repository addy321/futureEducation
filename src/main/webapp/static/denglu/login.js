$('#option li').click(function() {
	$(this).addClass('active').siblings().removeClass('active');
	var a = $(this).index();
	$('#card li:eq(' + a + ')').addClass('active').siblings().removeClass('active');
})

$(".icon_e").click(function() {
	$(".login_count_b").show();
	$(".login_count_a").hide();
})
$(".icon_z").click(function() {
	$(".login_count_a").show();
	$(".login_count_b").hide();
})

$("#btn").click(function() {
	var count = 60;
	//jquery瑕佺敤setInterval()瀹氭椂鍣紝鍥犱负杩欓噷涓嶄細璋冪敤鍊掕鏃跺嚱鏁帮紝瑕佸惊鐜墽琛�
	var interval = setInterval(() => {
		if(count == 0) {
			//鍥犱负button鏄�<input>鍏冪礌锛屾墍浠ヨ繖閲岃鐢�.val()鏂规硶
			$("#btn").val("閲嶆柊鑾峰彇").removeAttr("disabled");
			count = 60;
			//褰撳€掕鏃剁粨鏉燂紝杩欓噷瑕佹竻闄ゅ畾鏃跺櫒
			clearTimeout(interval);
		} else {
			$("#btn").val(count + "s鍚庨噸鏂拌幏鍙�").attr("disabled", "disabled");
			count--;
		}
	}, 1000);
})