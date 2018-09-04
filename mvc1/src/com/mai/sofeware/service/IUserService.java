/**
 * COPYRIGHT (C) 2017 BY Mai. ALL RIGHTS RESERVED.
 */
package com.mai.sofeware.service;

import java.util.List;

import com.mai.sofeware.model.UserJDBC;

/**
 * 类的描述
 *
 * @author Mai
 * @since 1.0
 */

public interface IUserService {

	/**
	 * @return
	 */
	public List<UserJDBC> findAllUsers();
	
	

	/**
	 * @param user
	 */
	public void createUser(UserJDBC user) throws Exception;
	
	public void editUser(UserJDBC user) throws Exception;



	/**
	 * @param id
	 * @return
	 */
	public UserJDBC getUserById(int UserId) ;



	/**
	 * @param id
	 * @return
	 * @throws Exception 
	 */
	public void delectUser(Integer id) throws Exception;

}
