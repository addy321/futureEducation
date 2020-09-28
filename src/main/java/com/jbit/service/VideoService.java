package com.jbit.service;

import java.util.List;

import com.jbit.entity.Video;

public interface VideoService {

	//添加视频
	int addVideo(Video video);
	//删除视频
	int delVideo(int id);
	//修改视频
	int upVideo(Video video);
	//查询视频列表
	List<Video> getListViode(int pageIndex,int PageRows);
	//查询单个视频
	Video getTheVideo(int id);
}
