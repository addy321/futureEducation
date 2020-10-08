package com.jbit.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import com.jbit.entity.Recruitment;

@Mapper
public interface RecruitmentMapper {
	List<Recruitment> getRecruitments(@Param("pageIndex")int pageIndex,@Param("PageRows")int PageRows);
	int addRecruitment(Recruitment recruitment);
	int delRecruitment(@Param("id")int id);
	int upRecruitment(Recruitment recruitment);
	Recruitment getRecruitment(@Param("id")Integer id);
	int getCount();
}
