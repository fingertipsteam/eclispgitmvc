package com.mai.sofeware.service;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mai.sofeware.dao.UserJdbcDAO;
import com.mai.sofeware.model.UserJDBC;

@Service
public class UserJdbcService {
	
	@Autowired
	private UserJdbcDAO userJdbc;
	
	
	public List<UserJDBC> findAllUsers()  {
		// TODO Auto-generated method stub
		return userJdbc.findAllUsers();
	}
	
	public UserJDBC getUserById(int userId) {
		return userJdbc.getUserById(userId);
		
	}
	
	public Integer createUser(UserJDBC user)throws Exception {
		return userJdbc.createUser(user);
		
	}
	
	public Integer editUser(UserJDBC user) throws Exception{
		return userJdbc.editUser(user);
		
	}
	
	
	public Integer delectUser(int userId) {
		return userJdbc.delectUser(userId);
		
	}
	
}
