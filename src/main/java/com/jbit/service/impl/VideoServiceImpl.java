package com.jbit.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.jbit.entity.Video;
import com.jbit.mapper.VideoMapper;
import com.jbit.service.VideoService;

@Service
public class VideoServiceImpl implements VideoService {

	@Autowired
	private VideoMapper videoDao;
	@Override
	public int addVideo(Video video) {
		// TODO Auto-generated method stub
		return videoDao.addVideo(video);
	}

	@Override
	public int delVideo(int id) {
		// TODO Auto-generated method stub
		return videoDao.delVideo(id);
	}

	@Override
	public int upVideo(Video video) {
		// TODO Auto-generated method stub
		return videoDao.upVideo(video);
	}

	@Override
	public List<Video> getListViode(int pageIndex, int PageRows) {
		// TODO Auto-generated method stub
		return videoDao.getListViode(pageIndex, PageRows);
	}

	@Override
	public Video getTheVideo(int id) {
		// TODO Auto-generated method stub
		return videoDao.getTheVideo(id);
	}

}
