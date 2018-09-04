/**
 * COPYRIGHT (C) 2017 BY Mai. ALL RIGHTS RESERVED.
 */
package com.mai.sofeware.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mai.sofeware.dao.IUserDAO;

import com.mai.sofeware.model.UserJDBC;

/**
 * 类的描述
 *
 * @author Mai
 * @since 1.0
 */
@Service
public class UserServiceImpl implements IUserService {
	
	@Autowired
	private IUserDAO userDAO;

	@Override
	public List<UserJDBC> findAllUsers() {
		// TODO Auto-generated method stub
		return userDAO.findAllUsers();
	}

	@Override
	public void createUser(UserJDBC user) throws Exception {
		// TODO Auto-generated method stub
		userDAO.createUser(user);
	}

	@Override
	public void editUser(UserJDBC user) throws Exception {
		// TODO Auto-generated method stub
		userDAO.editUser(user);
	}

	@Override
	public UserJDBC getUserById(int userId) {
		// TODO Auto-generated method stub
		return userDAO.getUserById(userId);
	}

	@Override
	public void delectUser(Integer userId) throws Exception {
		// TODO Auto-generated method stub
		userDAO.delectUser(userId);
	}
	
	
	
	

}
