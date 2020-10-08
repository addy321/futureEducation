package com.jbit.controller;


import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired; 
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.jbit.entity.Apply;
import com.jbit.entity.Leavemag;
import com.jbit.entity.Recruitment;
import com.jbit.entity.Theme;
import com.jbit.entity.User;
import com.jbit.entity.Video;
import com.jbit.service.ApplyService;
import com.jbit.service.LeavemagService;
import com.jbit.service.RecruitmentService;
import com.jbit.service.ThemeService;
import com.jbit.service.UserService;
import com.jbit.service.VideoService;
import com.jbit.util.JsonResult;
import com.jbit.util.VeDate;

@Controller
@RequestMapping("/user")
public class UserController extends JsonResult{
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	@Autowired
	private UserService userService; 
	@Autowired
	private VideoService videoService;
	@Autowired
	private LeavemagService leavemagService;
	@Autowired
	private RecruitmentService recruitmentService;
	@Autowired
	private ApplyService applyService;
	@Autowired
	private ThemeService themeService;
	// 跳转首页
	@GetMapping("/index")
    public String index(Model model,Integer pageIndex,Integer PageRows) {
		if(pageIndex == null) {
			pageIndex=1;
		}
		if(PageRows ==null) {
			PageRows=9;
		}
		List<Video> videos = videoService.getListViode(pageIndex*PageRows-PageRows, PageRows,1);
		int count = videoService.getVideoCount(1);
		model.addAttribute("videos", videos);
		model.addAttribute("videoCount", count);
        return "index";
    }
	// 跳转注册页面
	@GetMapping("/registeredView")
    public String RegisteredView() {
        return "zhuce/registered";
    }
	// 跳转留言页面
	@GetMapping("/liuyanView")
    public String liuyanView(Model model,Integer pageIndex,Integer PageRows) {
		if(pageIndex == null) {
			pageIndex=1;
		}
		if(PageRows ==null) {
			PageRows=10;
		}
		List<Leavemag> leavemags = leavemagService.getLeavemags(pageIndex*PageRows-PageRows, PageRows, 2);
		System.err.println(leavemags);
		model.addAttribute("leavemags", leavemags);
        return "liuyan/liuyan";
    }
	// 跳转注册页面
	@GetMapping("/loginView")
    public String LoginView() {
        return "denglu/login";
    }
	// 跳转视频专区
	@GetMapping("/videoListView")
    public String VideoListView(Model model,Integer pageIndex,Integer PageRows) {
		if(pageIndex == null) {
			pageIndex=1;
		}
		if(PageRows ==null) {
			PageRows=12;
		}
		List<Video> videos = videoService.getListViode(pageIndex*PageRows-PageRows, PageRows,0);
		System.err.println(videos);
		int count = videoService.getVideoCount(0);
		model.addAttribute("videos", videos);
		model.addAttribute("videoCount", count);
		
		List<Video> videosRemengList=videoService.getListViode(pageIndex*PageRows-PageRows, PageRows,0);
		model.addAttribute("videosRemengList", videosRemengList);
        return "video/list/index";
    }
	// 跳转视频详情页
	@GetMapping("/videoView/{id}")
    public String videoView(@PathVariable("id") Integer id,Model model) {
		Video video =videoService.getTheVideo(id);
		model.addAttribute("video", video);
        return "video/index/videoDetails";
    }
	
	// 用户登录接口
	@PostMapping("/Login")
	@ResponseBody
    public JsonResult Login(String userName,String password,HttpServletRequest request) {
		User user=userService.Login(userName, password);
		if(user!=null) {
			request.getSession().setAttribute("userName", user.getUserName());
			return success(user.getUserName()); 
		}else {
			return error("登录失败");
		}
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
	
	@ResponseBody
	@PostMapping("/AddLeavemag")
	// 添加留言
	public JsonResult AddLeavemag(String content,HttpServletRequest request) {
		if(content == null) {
			 return error("请输入你的下达的命令");
		}
		String userName = (String) request.getSession().getAttribute("userName");
		if(userName==null) {
			 return error("请先登录");
		}else {
			User user=userService.GetTheUser(userName);
			System.err.println(user);
			if(user == null) {
				return error("账号存在异常");
			}else {
				Leavemag leavemag =new Leavemag();
				leavemag.setUserName(user.getUserName());
				leavemag.setNickname(user.getOtherName());
				leavemag.setAddTime(VeDate.getNow());
				leavemag.setStatus(1);
				leavemag.setContent(content);
				int res = leavemagService.addLeavemag(leavemag);
				if(res == 0) {
					return error("发布评论失败");
				}
			}
		}
		return success();
	}
	
	// 跳转招聘页面
	@GetMapping("/zhaoPingView")
    public String zhaoPingView(Model model,Integer pageIndex,Integer PageRows) {
		if(pageIndex == null) {
			pageIndex=1;
		}
		if(PageRows ==null) {
			PageRows=10;
		}
		List<Recruitment> list = recruitmentService.getRecruitments(pageIndex*PageRows-PageRows, PageRows);
		System.err.println(list);
		model.addAttribute("recruitments", list);
        return "zhaoping/index";
    }
	//添加报名
	@ResponseBody
	@PostMapping("/addApply")
	// 添加留言
	public JsonResult addApply(Integer id,HttpServletRequest request) {
		System.err.println(id);
		if(id == null) {
			 return error("添加异常，无法确认招聘信息");
		}
		String userName = (String) request.getSession().getAttribute("userName");
		if(userName==null) {
			 return error("请先登录");
		}else {
			User user=userService.GetTheUser(userName);
			System.err.println(user);
			if(user == null) {
				return error("账号存在异常");
			}else {
				List<Apply> applyArr = applyService.getApplyList(user.getUserName());
				for(int i =0;i<applyArr.size();i++) {
					if(applyArr.get(i).getId() == id) {
						return error("你已经报名过该招聘");
					}
				}
				Recruitment recruitment = recruitmentService.getRecruitment(id);
				if(recruitment == null) {
					return error("添加异常，无法确认招聘信息");
				}
				Apply apply =new Apply();
				apply.setAddTime(new Date());
				apply.setNickname(user.getOtherName());
				apply.setRecruitmentId(id);
				apply.setRecruitmentId(recruitment.getId());
				apply.setRecruitmentName(recruitment.getTitle());
				apply.setUserName(user.getUserName());
				int res = applyService.addData(apply);
				if(res == 0) {
					return error("报名失败");
				}
			}
		}
		return success();
	}
	// 跳转我的报名页面
	@GetMapping("/applyView")
    public String applyView(Model model,HttpServletRequest request) {
		String userName = (String) request.getSession().getAttribute("userName");
		if(userName==null) {
			 return "denglu/login";
		}else {
			List<Apply> list = applyService.getApplyList(userName);
			System.err.println(list.get(0).getAddTime());
			System.err.println(list.get(0).getRecruitment());
			model.addAttribute("list", list);
	        return "apply/index";
		}
		
    }
	
	// 跳转题库页面
	@GetMapping("/themeView")
    public String themeView(Model model,Integer pageIndex,Integer PageRows) {
		if(pageIndex == null) {
			pageIndex=1;
		}
		if(PageRows ==null) {
			PageRows=10;
		}
		List<Theme> dataList = themeService.getThemeList(pageIndex*PageRows-PageRows, PageRows);
		System.err.println(dataList);
		model.addAttribute("dataList", dataList);
        return "theme/index";
    }
}
