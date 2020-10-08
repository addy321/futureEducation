package com.jbit.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.jbit.entity.Theme;
import com.jbit.mapper.ThemeMapper;
import com.jbit.service.ThemeService;

@Service
public class ThemeServiceImpl implements ThemeService {

	@Autowired
	private ThemeMapper themeMapper;
	
	@Override
	public List<Theme> getThemeList(int pageIndex, int PageRows) {
		List<Theme> dataList= themeMapper.getThemeList(pageIndex, PageRows);
		System.err.println(dataList);
		return dataList;
	}

	@Override
	public int addTheme(Theme data) {
		// TODO Auto-generated method stub
		return themeMapper.addTheme(data);
	}

	@Override
	public int delTheme(int id) {
		// TODO Auto-generated method stub
		return themeMapper.delTheme(id);
	}

	@Override
	public int upTheme(Theme data) {
		// TODO Auto-generated method stub
		return themeMapper.upTheme(data);
	}

	@Override
	public Theme getTheme(Integer id) {
		// TODO Auto-generated method stub
		return themeMapper.getTheme(id);
	}

	@Override
	public int getCount() {
		// TODO Auto-generated method stub
		return 0;
	}

}
