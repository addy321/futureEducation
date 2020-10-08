package com.jbit.service;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.jbit.entity.Theme;

public interface ThemeService {
	List<Theme> getThemeList(@Param("pageIndex")int pageIndex,@Param("PageRows")int PageRows);
	int addTheme(Theme data);
	int delTheme(@Param("id")int id);
	int upTheme(Theme data);
	Theme getTheme(@Param("id")Integer id);
	int getCount();
}
