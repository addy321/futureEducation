package com.jbit.controller;


import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired; 
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping; 

import com.jbit.entity.User;
import com.jbit.service.UserService;
import com.jbit.util.VeDate;

@Controller
@RequestMapping("/user")
public class UserController {
	
	@Autowired
	private UserService userService; 
	
	// 跳转首页
	@GetMapping("/index")
    public String index() {
        return "index";
    }
	// 跳转注册页面
	@GetMapping("/registeredView")
    public String RegisteredView() {
        return "zhuce/registered";
    }
	// 跳转注册页面
	@GetMapping("/loginView")
    public String LoginView() {
        return "denglu/login";
    }
	// 跳转视频专区
	@GetMapping("/videoListView")
    public String VideoListView() {
        return "video/list/index";
    }
	// 跳转视频详情页
	@GetMapping("/videoView")
    public String videoView() {
        return "video/index/videoDetails";
    }
	
	// 用户登录接口
	@PostMapping("/Login")
    public String Login(String userName,String password,Model model,HttpServletRequest request) {
		User user=userService.Login(userName, password);
		if(user!=null) {
			request.getSession().setAttribute("userName", user.getUserName());
			if(user.getUserName().equals("Admin")) {
				return "houtai/index";
			}else {
		        return "index";
			}
		}else {
			// 登录失败
			 model.addAttribute("loginMessage","登录失败，账号不存在或账号密码错误");
		}
		return "denglu/login";
    }
	// 用户注册接口
	@PostMapping("/Registered")
    public String Registered(User user,Model model) {
		if(user == null || user.getUserName() == null) {
			model.addAttribute("Message","注册失败，请输入账号");
		}else {
			User userDTD = userService.GetTheUser(user.getUserName());
			if(userDTD == null) {
				user.setAddTime(VeDate.getNow());
				int code =userService.AddUser(user);
				if(code == 1) {
					model.addAttribute("Message","注册成功");
				}else {
					model.addAttribute("Message","注册失败，请核实注册信息或刷新网页");
				}
			}else {
				model.addAttribute("Message","注册失败，已存在此用户"+user.getUserName());
			}
		}
		return "/zhuce/registered";
    }
}
