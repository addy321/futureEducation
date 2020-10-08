package com.jbit.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import com.jbit.entity.Apply;

@Mapper
public interface ApplyMapper {
	List<Apply> getRecruitments(@Param("pageIndex")int pageIndex,@Param("PageRows")int PageRows);
	int addRecruitment(Apply data);
	int delRecruitment(@Param("id")int id);
	int upRecruitment(Apply data);
	Apply getRecruitment(@Param("id")Integer id);
	List<Apply> getApplyList(@Param("userName")String userName);
	int getCount();
}
