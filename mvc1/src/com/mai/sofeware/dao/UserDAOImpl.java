/**
 * COPYRIGHT (C) 2017 BY Mai. ALL RIGHTS RESERVED.
 */
package com.mai.sofeware.dao;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import com.mai.sofeware.model.User;

/**
 * 类的描述
 *
 * @author Mai
 * @since 1.0
 */
//@Repository
/*public class UserDAOImpl implements IUserDAO{
	
	private static Map<Integer,User> users = new HashMap<Integer,User>();
	
	public UserDAOImpl() {
		users.put(1,new User(1,"alex",20));
		users.put(2,new User(2,"Jordan",21));
		users.put(3,new User(3,"James",22));
		users.put(4,new User(4,"Kobe",23));
		users.put(5,new User(5,"Ray",24));
		users.put(6,new User(6,"Linux",19));
		users.put(7,new User(7,"CentOS",28));
	}
	
	
	

	 (non-Javadoc)
	 * @see com.mai.sofeware.dao.IUserDAO#createUser(com.mai.sofeware.model.User)
	 
	@Override
	public void createUser(User user) throws Exception {
		// TODO Auto-generated method stub
		if(user != null && !users.containsKey(user.getId())) {
			users.put(user.getId(), user);
		}else {
			throw new Exception("Create User Fail!");
		}
	}

	
	 (non-Javadoc)
	 * @see com.mai.sofeware.dao.IUserDAO#findAllUsers()
	 
	@Override
	public List<User> findAllUsers() {
		// TODO Auto-generated method stub
		if(users != null) {
			return new ArrayList<User>(users.values());
		}else {
			return null;
		}
	}
	
	 (non-Javadoc)
	 * @see com.mai.sofeware.dao.IUserDAO#getUserById(java.lang.Integer)
	 
	@Override
	public User getUserById(int id) {
		// TODO Auto-generated method stub
		
		if(users.containsKey(id)) {
			return users.get(id);
		}else {
			return null;
		}
		
	}
	
	 (non-Javadoc)
	 * @see com.mai.sofeware.dao.IUserDAO#editUser(com.mai.sofeware.model.User)
	 
	@Override
	public void editUser(User user) throws Exception {
		// TODO Auto-generated method stub
		if(user != null && users.containsKey(user.getId())) {
			users.put(user.getId(), user);
		}else {
			throw new Exception("Upate User Fail!");
		}
	}




	 (non-Javadoc)
	 * @see com.mai.sofeware.dao.IUserDAO#delete(java.lang.Integer)
	 
	@Override
	public void delete(Integer id) throws Exception {
		if(users.containsKey(id)) {
			users.remove(id);
		}else {
			throw new Exception("Delete User Fail!");
		}
	}

}*/
