package com.mai.sofeware.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;


import com.mai.sofeware.model.UserJDBC;

@Repository
public class UserHibernateDAOImpl implements IUserDAO {
	
	@Autowired
	private SessionFactory sessionFactory;
	
	public Session getSession() {
		return this.sessionFactory.getCurrentSession();
	}

	@Override
	public List<UserJDBC> findAllUsers() {
		Session session = getSession();
		String hql = "FROM UserJDBC";
		@SuppressWarnings("unchecked")
		List<UserJDBC>userList = session.createQuery(hql).list();
		return userList;
	}

	@Override
	public Integer createUser(UserJDBC user) throws Exception {
		
		return null;
	}

	@Override
	public Integer editUser(UserJDBC user) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public UserJDBC getUserById(int userId) {
		
		return null;
	}

	@Override
	public Integer delectUser(Integer userId) {
		// TODO Auto-generated method stub
		return null;
	}

	

}
