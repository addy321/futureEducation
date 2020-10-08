package com.jbit.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.jbit.entity.Leavemag;
import com.jbit.service.LeavemagService;
import com.jbit.mapper.LeavemagMapper;

@Service
public class LeavemagServiceImpl implements LeavemagService {

	@Autowired
	private LeavemagMapper LeavemagMapper;
	
	@Override
	public List<Leavemag> getLeavemags(int pageIndex, int PageRows, int status) {
		// TODO Auto-generated method stub
		return LeavemagMapper.getLeavemags(pageIndex, PageRows, status);
	}

	@Override
	public int addLeavemag(Leavemag leavemag) {
		// TODO Auto-generated method stub
		return LeavemagMapper.addLeavemag(leavemag);
	}

	@Override
	public int upLeavemag(int id) {
		// TODO Auto-generated method stub
		return LeavemagMapper.upLeavemag(id);
	}

	@Override
	public int delLeavemag(int id) {
		// TODO Auto-generated method stub
		return LeavemagMapper.delLeavemag(id);
	}

	@Override
	public int getCount(int status) {
		return 0;
	}

}
