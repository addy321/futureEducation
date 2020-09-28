package com.jbit.mapper;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import com.jbit.entity.User;

@Mapper
public interface UserMapper {
	//用户登录
	public User Login(@Param("userName") String userName,@Param("password")String password);
	//用户注册
	public int AddUser(User user);
	//用户修改信息
	public int UpUser(User user);
	//根据会员账号查询
	public User GetTheUser(@Param("userName")String userName);
}
