package com.jbit.service;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.jbit.entity.Recruitment;

public interface RecruitmentService {
	List<Recruitment> getRecruitments(@Param("pageIndex")int pageIndex,@Param("PageRows")int PageRows);
	int addRecruitment(Recruitment recruitment);
	int delRecruitment(int id);
	int upRecruitment(Recruitment recruitment);
	Recruitment getRecruitment(Integer id);
	int getCount();
}
