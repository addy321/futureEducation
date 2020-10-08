package com.jbit.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.jbit.entity.Recruitment;
import com.jbit.mapper.RecruitmentMapper;
import com.jbit.service.RecruitmentService;

@Service
public class RecruitmentServiceImpl implements RecruitmentService {

	@Autowired
	private RecruitmentMapper recruitmentMapper;
	
	@Override
	public List<Recruitment> getRecruitments(int pageIndex, int PageRows) {
		// TODO Auto-generated method stub
		return recruitmentMapper.getRecruitments(pageIndex, PageRows);
	}

	@Override
	public int addRecruitment(Recruitment recruitment) {
		// TODO Auto-generated method stub
		return recruitmentMapper.addRecruitment(recruitment);
	}

	@Override
	public int delRecruitment(int id) {
		// TODO Auto-generated method stub
		return recruitmentMapper.delRecruitment(id);
	}

	@Override
	public int upRecruitment(Recruitment recruitment) {
		// TODO Auto-generated method stub
		return recruitmentMapper.upRecruitment(recruitment);
	}

	@Override
	public Recruitment getRecruitment(Integer id) {
		// TODO Auto-generated method stub
		return recruitmentMapper.getRecruitment(id);
	}

	@Override
	public int getCount() {
		// TODO Auto-generated method stub
		return 0;
	}

}
