package com.jbit.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.jbit.entity.Apply;
import com.jbit.mapper.ApplyMapper;
import com.jbit.service.ApplyService;

@Service
public class ApplyServiceImpl implements ApplyService{

	@Autowired
	private ApplyMapper applyMapper;
	@Override
	public List<Apply> getDataList(int pageIndex, int PageRows) {
		// TODO Auto-generated method stub
		return applyMapper.getRecruitments(pageIndex, PageRows);
	}

	@Override
	public int addData(Apply data) {
		// TODO Auto-generated method stub
		return applyMapper.addRecruitment(data);
	}

	@Override
	public int delData(int id) {
		// TODO Auto-generated method stub
		return applyMapper.delRecruitment(id);
	}

	@Override
	public int upData(Apply data) {
		// TODO Auto-generated method stub
		return applyMapper.upRecruitment(data);
	}

	@Override
	public Apply getTheData(Integer id) {
		// TODO Auto-generated method stub
		return applyMapper.getRecruitment(id);
	}

	@Override
	public List<Apply> getApplyList(String userName) {
		// TODO Auto-generated method stub
		return applyMapper.getApplyList(userName);
	}

	@Override
	public int getCount() {
		// TODO Auto-generated method stub
		return 0;
	}

}
