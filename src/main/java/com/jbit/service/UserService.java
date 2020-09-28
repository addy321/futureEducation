package com.jbit.service;

import com.jbit.entity.User;

public interface UserService { 
	
	//用户登录
	public User Login(String userName,String password);
	//用户注册
	public int AddUser(User user);
	//用户修改信息
	public int UpUser(User user);
	//根据会员账号查询
	public User GetTheUser(String userName);
}
