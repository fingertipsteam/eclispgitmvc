package com.mai.sofeware.test;

import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.mai.sofeware.dao.UserJdbcDAO;
import com.mai.sofeware.model.UserJDBC;


//在Spring容器下完成测试
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration({"classpath*:**/viewspace-servlet.xml"})
public class TestUserDAO {
	
	@Autowired
	private UserJdbcDAO userJdbcDAO;
	
	@Test
	public void testFindAllUsers() {
		List<UserJDBC> list = userJdbcDAO.findAllUsers();
		for(UserJDBC user : list) {
			System.out.println(user.getUserName());
		}
	}
	
	@Test
	public void testFindById() {
		UserJDBC user = userJdbcDAO.getUserById(1);
		System.out.println(user.getUserName());
	}
	
	@Test
	public void testCreateUser() throws Exception{
		UserJDBC user = new UserJDBC();
		user.setUserId(1);
		user.setUserName("Alex");
		Integer i = userJdbcDAO.createUser(user);
		System.out.println("插入了"+ i.intValue() + " ' 条数据");
	}
	
	@Test
	public void testEditUser() throws Exception {
		UserJDBC user = new UserJDBC();
		user.setUserId(1);
		Integer i = userJdbcDAO.editUser(user);
		System.out.println("更新了" + i.intValue()+" '条数据");
	}
	
	@Test
	public void testDeleteUser() {
		Integer i = userJdbcDAO.delectUser(1);
		System.out.println("删除了‘" + i.intValue()+"' 条数据");
	}

}
