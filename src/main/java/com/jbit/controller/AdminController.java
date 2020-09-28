package com.jbit.controller;

import java.util.Date;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.jbit.entity.Video;
import com.jbit.service.VideoService;
import com.jbit.util.Ajax;
import com.jbit.util.JsonResult;

// 后台管理控制器
@Controller
@RequestMapping("/admin")
public class AdminController extends JsonResult{
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	@Autowired
	private VideoService videoService;
	// 跳转后台
	@GetMapping("/index")
    public String index(HttpServletRequest request) {
		String pathString ="houtai/index";
		return pathString;
    }
	// 跳转视频管理页面
	@GetMapping("/videoView")
    public String videoView(HttpServletRequest request) {
		return "houtai/video";
    }
	// 跳转题库管理页面
	@GetMapping("/tikuView")
    public String tikuView(HttpServletRequest request) {
        return "houtai/tiku";
    }
	// 跳转招聘管理页面
	@GetMapping("/zhaopingView")
    public String zhaoping(HttpServletRequest request) {
        return "houtai/zhaoping";
    }
	// 跳转留言审核页面
	@GetMapping("/shenheView")
    public String shenheView(HttpServletRequest request) {
        return "houtai/shenhe";
    }
	// 退出
	@GetMapping("/quit")
    public String quit(HttpServletRequest request) {
		request.getSession().removeAttribute("userName");
        return "denglu/login";
    }
	
	@ResponseBody 
	@PostMapping("saveVideo")
    public JsonResult addVideo(@RequestBody Video video) {
		video.setVideoAddTime(new Date());
		int res =  videoService.addVideo(video);
		JsonResult result=null;
		if(res>0) {
			result  = success();
		}else {
			result = error();
		}
		return result;
    }

	// 测试ajax 数据提交的问题
	@PostMapping("ajax")
	@ResponseBody
	public Ajax UpDish(@RequestBody Ajax ajax) {
		return ajax;
	}
}
