package com.jbit.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import com.jbit.entity.Video;

@Mapper
public interface VideoMapper {
	//添加视频
	int addVideo(Video video);
	//删除视频
	int delVideo(@Param("id")int id);
	//修改视频
	int upVideo(Video video);
	//查询视频列表
	List<Video> getListViode(@Param("pageIndex")int pageIndex,@Param("PageRows")int PageRows);
	//查询单个视频
	Video getTheVideo(@Param("id")int id);
}
