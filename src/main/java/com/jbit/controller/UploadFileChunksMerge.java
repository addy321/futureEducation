package com.jbit.controller;

import java.io.File;
import java.io.FileFilter;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.nio.channels.FileChannel;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;


/**
 * 整合分块文件数据 和 文件上传校验
 * 
 * @author jianghy
 *
 */
@Controller
public class UploadFileChunksMerge {
	
	private String folad = "static/File";
	private String savePath = "D:/test/002"+folad;
	
	/**
	 * 快文件校验存在  和 快文件整合 
	 * 
	 * 
	 */
	@SuppressWarnings("resource")
	@RequestMapping("/video")
	public void uploadMergeChunks(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// String savePath =
		// this.getServletConfig().getServletContext().getRealPath("");
		savePath = request.getSession().getServletContext().getRealPath("/");
		savePath = savePath.replace("\\","/");
		savePath += folad;
		String action = request.getParameter("action");
		if (action.equals("mergeChunks")) {
 
			// 合并文件
			// 需要合并的文件的目录标记
			String fileMd5 = request.getParameter("fileMd5");
			String fileName = request.getParameter("fileName")==null?"":request.getParameter("fileName");
 
			// 读取目录里的所有文件
			File f = new File(savePath + "/" + fileMd5);
			File[] fileArray = f.listFiles(new FileFilter() {
				// 排除目录只要文件
				public boolean accept(File pathname) {
					if (pathname.isDirectory()) {
						return false;
					}
					return true;
				}
			});
 
			// 转成集合，便于排序
			List<File> fileList = new ArrayList<File>(Arrays.asList(fileArray));
			Collections.sort(fileList, new Comparator<File>() {
				public int compare(File o1, File o2) {
					if (Integer.parseInt(o1.getName()) < Integer.parseInt(o2
							.getName())) {
						return -1;
					}
					return 1;
				}
			});
			// UUID.randomUUID().toString()-->随机名
			String fileNameStr=System.currentTimeMillis()+fileName;
			File outputFile = new File(savePath + "/" + fileNameStr);
			// 创建文件
			outputFile.createNewFile();
			// 输出流
			@SuppressWarnings("resource")
			FileChannel outChnnel = new FileOutputStream(outputFile).getChannel();
			// 合并
			FileChannel inChannel;
			for (File file : fileList) {
				inChannel = new FileInputStream(file).getChannel();
				inChannel.transferTo(0, inChannel.size(), outChnnel);
				inChannel.close();
				// 删除分片
				file.delete();
			}
			outChnnel.close();
			// 清除文件夹
			File tempFile = new File(savePath + "/" + fileMd5);
			if (tempFile.isDirectory() && tempFile.exists()) {
				// tempFile.delete();
			}
			response.getWriter().write(fileNameStr);  
			System.out.println("合并成功"+fileNameStr);
		} else if (action.equals("checkChunk")) {
 
			// 检查当前分块是否上传成功
			String fileMd5 = request.getParameter("fileMd5");
			String chunk = request.getParameter("chunk");
			String chunkSize = request.getParameter("chunkSize");
 
			//System.err.println("-------upload chunk address:" + savePath + "/" + fileMd5 + "/" + chunk);
			File checkFile = new File(savePath + "/" + fileMd5 + "/" + chunk);
 
			response.setContentType("text/html;charset=utf-8");
			// 检查文件是否存在，且大小是否一致
			if (checkFile.exists()
					&& checkFile.length() == Integer.parseInt(chunkSize)) {
				// 上传过
				response.getWriter().write("{\"ifExist\":1}");
			} else {
				// 没有上传过
				response.getWriter().write("{\"ifExist\":0}");
			}
		}
 
	}

}
