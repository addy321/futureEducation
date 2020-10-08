package com.jbit.controller;

import java.io.File;
import java.io.IOException;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.fileupload.servlet.ServletFileUpload;
import org.apache.commons.io.FileUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.jbit.entity.Apply;
import com.jbit.entity.Leavemag;
import com.jbit.entity.Recruitment;
import com.jbit.entity.Theme;
import com.jbit.entity.Video;
import com.jbit.service.ApplyService;
import com.jbit.service.LeavemagService;
import com.jbit.service.RecruitmentService;
import com.jbit.service.ThemeService;
import com.jbit.service.VideoService;
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
	@Autowired
	private LeavemagService leavemagService;
	@Autowired
	private RecruitmentService recruitmentService;
	@Autowired
	private ApplyService applyService;
	@Autowired
	private ThemeService themeService;
	
	private String folad = "static/File";
	private String savePath = "D:/test/002"+folad;
	@RequestMapping("/upload2")
	public void upload2(HttpServletRequest request, HttpServletResponse response, String guid,String fileMd5, Integer chunk,
			MultipartFile file, Integer chunks) {
		savePath = request.getSession().getServletContext().getRealPath("/");
		savePath = savePath.replace("\\","/");
		savePath += folad;
		try {
			System.err.println("--------start upload chunk file , fileMd5:" +fileMd5+" , chunks:"+chunks+" , chunk:"+chunk);
			boolean isMultipart = ServletFileUpload.isMultipartContent(request);
			if (isMultipart) {
				// 临时目录用来存放所有分片文件
				String tempFileDir = savePath + "/" +fileMd5;
				File parentFileDir = new File(tempFileDir);
				if (!parentFileDir.exists()) {
					parentFileDir.mkdirs();
				}
				// 分片处理时，前台会多次调用上传接口，每次都会上传文件的一部分到后台
				//System.err.println("----upload chunk:"+tempFileDir+ chunk);
				File tempPartFile = new File(parentFileDir, chunk+"");
				FileUtils.copyInputStreamToFile(file.getInputStream(), tempPartFile);
				//System.err.println("--------upload chunk success fileMd5:"+fileMd5+" chunk:"+chunks );
				
			}
		} catch (Exception e) {
			e.printStackTrace();
			System.err.println("--------upload file chunk fileMd5:"+fileMd5+" chunk:"+chunks+" error:"+e.toString());
		} finally{
			System.err.println("--------end upload chunk file , fileMd5:" +fileMd5+" , chunks:"+chunks+" , chunk:"+chunk);
		}
	}

	// 跳转后台
	@GetMapping("/index")
    public String index() {
		String pathString ="houtai/index";
		return pathString;
    }
	// 跳转视频管理页面
	@GetMapping("/videoView")
    public String videoView(Model model,Integer pageIndex,Integer PageRows) {
		if(pageIndex == null) {
			pageIndex=1;
		}
		if(PageRows ==null) {
			PageRows=3;
		}
		List<Video> videos = videoService.getListViode(pageIndex*PageRows-PageRows, PageRows,0);
		System.err.println(videos);
		int count = videoService.getVideoCount(0);
		model.addAttribute("videos", videos);
		model.addAttribute("pageIndex", pageIndex);
		model.addAttribute("PageRows", PageRows);
		model.addAttribute("totalPages", Math.ceil((double)count/PageRows));
		model.addAttribute("Total", count);
		return "houtai/video";
    }
	
	// 跳转留言审核页面
	@GetMapping("/shenheView")
    public String shenheView(Model model,Integer pageIndex,Integer PageRows) {
		if(pageIndex == null) {
			pageIndex=1;
		}
		if(PageRows ==null) {
			PageRows=10;
		}
		List<Leavemag> leavemags = leavemagService.getLeavemags(pageIndex*PageRows-PageRows, PageRows, 0);
		System.err.println(leavemags);
		int count =leavemagService.getCount(0);
		model.addAttribute("pageIndex", pageIndex);
		model.addAttribute("PageRows", PageRows);
		model.addAttribute("totalPages", Math.ceil((double)count/PageRows));
		model.addAttribute("Total", count);
		model.addAttribute("leavemags", leavemags);
        return "houtai/shenhe";
    }
	// 退出
	@GetMapping("/quit")
    public String quit(HttpServletRequest request) {
		request.getSession().removeAttribute("userName");
        return "denglu/login";
    }
	
	//添加视频
	@ResponseBody 
	@PostMapping("saveVideo")
    public JsonResult addVideo(@RequestBody Video video) {
		int res = 0;
		System.err.println(video);
		if(video.getId()>0) {
			res =  videoService.upVideo(video);
		}else {
			video.setVideoAddTime(new Date());
			res =  videoService.addVideo(video);
		}
		if(res>0) {
			return success();
		}else {
			return error();
		}
    }
	//删除视频
	@GetMapping("delVideo")
	@ResponseBody
    public JsonResult delVideo(Integer videoid) {
		int res = videoService.delVideo(videoid);
		JsonResult result=null;
		if(res>0) {
			result  = success();
		}else {
			result = error();
		}
		return result;
    }
	// 查询单个视频
	@GetMapping("getVideo")
	@ResponseBody
	public JsonResult getVideo(Integer videoid) {
		Video video = videoService.getTheVideo(videoid);
		if(video!=null) {
			return success(video);
		}else {
			return error();
		}
	}
	
	//通过留言审核
	@GetMapping("upLeavemag")
	@ResponseBody
	public JsonResult upLeavemag(Integer id) {
		if(id == null) {
			return error("id不能为空");
		}
		int res = leavemagService.upLeavemag(id);
		if(res==1) {
			return success();
		}else {
			return error();
		}
	}
	
	// 删除留言
	@GetMapping("delLeavemag")
	@ResponseBody
	public JsonResult delLeavemag(Integer id) {
		if(id == null) {
			return error("id不能为空");
		}
		int res = leavemagService.delLeavemag(id);
		if(res==1) {
			return success();
		}else {
			return error();
		}
	}
	
	// 跳转招聘管理页面
	@GetMapping("/zhaopingView")
    public String zhaopingView(Model model,Integer pageIndex,Integer PageRows) {
		if(pageIndex == null) {
			pageIndex=1;
		}
		if(PageRows ==null) {
			PageRows=10;
		}
		List<Recruitment> recruitments = recruitmentService.getRecruitments(pageIndex*PageRows-PageRows, PageRows);
		System.err.println(recruitments);
		int count =recruitmentService.getCount();
		model.addAttribute("pageIndex", pageIndex);
		model.addAttribute("PageRows", PageRows);
		model.addAttribute("totalPages", Math.ceil((double)count/PageRows));
		model.addAttribute("Total", count);
		model.addAttribute("recruitments", recruitments);
        return "houtai/zhaoping";
    }
	
	//添加招聘
	@ResponseBody 
	@PostMapping("saveRecruitment")
    public JsonResult addRecruitment(@RequestBody Recruitment recruitment) {
		int res = 0;
		System.err.println(recruitment);
		if(recruitment.getId()>0) {
			res =  recruitmentService.upRecruitment(recruitment);
		}else {
			recruitment.setAddTime(new Date());
			res =  recruitmentService.addRecruitment(recruitment);
		}
		if(res>0) {
			return success();
		}else {
			return error();
		}
    }
	
	// 查询单个招聘
	@GetMapping("getRecruitment")
	@ResponseBody
	public JsonResult getRecruitment(Integer id) {
		Recruitment data = recruitmentService.getRecruitment(id);
		System.err.println(data);
		if(data!=null) {
			return success(data);
		}else {
			return error();
		}
	}
	
	// 删除招聘
	@GetMapping("delRecruitment")
	@ResponseBody
	public JsonResult delRecruitment(Integer id) {
		if(id == null) {
			return error("id不能为空");
		}
		int res = recruitmentService.delRecruitment(id);
		if(res==1) {
			return success();
		}else {
			return error();
		}
	}
	
	// 跳转报名管理页面
	@GetMapping("/baomingView")
    public String baomingView(Model model,Integer pageIndex,Integer PageRows) {
		if(pageIndex == null) {
			pageIndex=1;
		}
		if(PageRows ==null) {
			PageRows=10;
		}
		List<Apply> dataList = applyService.getDataList(pageIndex*PageRows-PageRows, PageRows);
		System.err.println(dataList);
		model.addAttribute("dataList", dataList);
		
		int count =applyService.getCount();
		model.addAttribute("pageIndex", pageIndex);
		model.addAttribute("PageRows", PageRows);
		model.addAttribute("totalPages", Math.ceil((double)count/PageRows));
		model.addAttribute("Total", count);
		
		return "houtai/baoming";
    }
	//删除报名
	@GetMapping("delApply")
	@ResponseBody
	public JsonResult delApply(Integer id) {
		if(id == null) {
			return error("id不能为空");
		}
		int res = applyService.delData(id);
		if(res==1) {
			return success();
		}else {
			return error();
		}
	}
	
	// 跳转题库管理页面
	@GetMapping("/tikuView")
    public String tikuView(Model model,Integer pageIndex,Integer PageRows) {
		if(pageIndex == null) {
			pageIndex=1;
		}
		if(PageRows ==null) {
			PageRows=10;
		}
		List<Theme> dataList = themeService.getThemeList(pageIndex*PageRows-PageRows, PageRows);
		System.err.println(dataList);
		model.addAttribute("dataList", dataList);
		
		int count =themeService.getCount();
		model.addAttribute("pageIndex", pageIndex);
		model.addAttribute("PageRows", PageRows);
		model.addAttribute("totalPages", Math.ceil((double)count/PageRows));
		model.addAttribute("Total", count);
		
        return "houtai/tiku";
    }
	
	//添加招聘
	@ResponseBody 
	@PostMapping("saveTheme")
    public JsonResult addTheme(@RequestBody Theme data) {
		int res = 0;
		System.err.println(data);
		if(data.getId()>0) {
			res =  themeService.upTheme(data);
		}else {
			data.setFileAddtime(new Date());
			res =  themeService.addTheme(data);
		}
		if(res>0) {
			return success();
		}else {
			return error();
		}
    }
	
	@GetMapping("delTheme")
	@ResponseBody
	public JsonResult delTheme(Integer id) {
		if(id == null) {
			return error("id不能为空");
		}
		int res = themeService.delTheme(id);
		if(res==1) {
			return success();
		}else {
			return error();
		}
	}
	
	// 查询单个报名
	@GetMapping("getTheme")
	@ResponseBody
	public JsonResult getTheme(Integer id) {
		Theme data = themeService.getTheme(id);
		System.err.println(data);
		if(data!=null) {
			return success(data);
		}else {
			return error();
		}
	}
	
	@GetMapping("SaveVideoView")
	public String SaveVideoView(Integer id,Model model) {
		if(id!=null) {
			model.addAttribute("video", videoService.getTheVideo(id));
		}else {
			model.addAttribute("video", null);
		}
		return "houtai/AddVideo";
	}
	
	@GetMapping("SaveTiKuView")
	public String SaveTiKuView(Integer id,Model model) {
		if(id!=null) {
			model.addAttribute("data", themeService.getTheme(id));
		}else {
			model.addAttribute("data", null);
		}
		return "houtai/AddTiku";
	}
}
