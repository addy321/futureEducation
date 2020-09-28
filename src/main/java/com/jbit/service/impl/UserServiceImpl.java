package com.jbit.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.jbit.entity.User;
import com.jbit.mapper.UserMapper;
import com.jbit.service.UserService;

@Service
public class UserServiceImpl implements UserService{
	
	@Autowired
	private UserMapper userMapper;

	@Override
	public User Login(String userName, String password) {
		// TODO Auto-generated method stub
		return userMapper.Login(userName, password);
	}

	@Override
	public int AddUser(User user) {
		// TODO Auto-generated method stub
		return userMapper.AddUser(user);
	}

	@Override
	public int UpUser(User user) {
		// TODO Auto-generated method stub
		return userMapper.UpUser(user);
	}

	@Override
	public User GetTheUser(String userName) {
		// TODO Auto-generated method stub
		return userMapper.GetTheUser(userName);
	}
	
}
