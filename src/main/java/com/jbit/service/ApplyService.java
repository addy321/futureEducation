package com.jbit.service;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.jbit.entity.Apply;

public interface ApplyService {
	List<Apply> getDataList(@Param("pageIndex")int pageIndex,@Param("PageRows")int PageRows);
	int addData(Apply data);
	int delData(int id);
	int upData(Apply data);
	Apply getTheData(Integer id);
	List<Apply> getApplyList(String userName);
	int getCount();
}
