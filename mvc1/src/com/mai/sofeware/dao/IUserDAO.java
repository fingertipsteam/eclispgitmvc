/**
 * COPYRIGHT (C) 2017 BY Mai. ALL RIGHTS RESERVED.
 */
package com.mai.sofeware.dao;

import java.util.List;


import com.mai.sofeware.model.UserJDBC;

/**
 * 类的描述
 *
 * @author Mai
 * @since 1.0
 */

public interface IUserDAO {

	/**
	 * @return
	 */
	public List<UserJDBC> findAllUsers();

	/**
	 * @param user
	 * @throws Exception 
	 */
	public Integer createUser(UserJDBC user) throws Exception;

	/**
	 * @param user
	 */
	public Integer editUser(UserJDBC user) throws Exception;

	/**
	 * @param id
	 * @return
	 */
	public UserJDBC getUserById(int id) ;

	/**
	 * @param id
	 * @throws Exception 
	 */
	public Integer delectUser(Integer userId);

}
