package com.jbit.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import com.jbit.entity.Leavemag;

@Mapper
public interface LeavemagMapper {
	// 留言列表
	List<Leavemag> getLeavemags(@Param("pageIndex")int pageIndex,@Param("PageRows")int PageRows,@Param("status")int status);
	// 添加留言
	int addLeavemag(Leavemag leavemag);
	// 留言审核
	int upLeavemag(@Param("id")int id);
	// 删除留言
	int delLeavemag(@Param("id")int id);
	int getCount(@Param("status")int status);
}
