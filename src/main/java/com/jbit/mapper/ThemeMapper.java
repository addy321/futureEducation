package com.jbit.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import com.jbit.entity.Theme;

@Mapper
public interface ThemeMapper {
	List<Theme> getThemeList(@Param("pageIndex")int pageIndex,@Param("PageRows")int PageRows);
	int addTheme(Theme data);
	int delTheme(@Param("id")int id);
	int upTheme(Theme data);
	Theme getTheme(@Param("id")Integer id);
	int getCount();
}
