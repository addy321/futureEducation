package com.jbit.service;

import java.util.List;

import com.jbit.entity.Leavemag;

public interface LeavemagService {
	// 留言列表
	List<Leavemag> getLeavemags(int pageIndex,int PageRows,int status);
	// 添加留言
	int addLeavemag(Leavemag leavemag);
	// 留言审核
	int upLeavemag(int id);
	// 删除留言
	int delLeavemag(int id);
	// 数量
	int getCount(int status);
}
