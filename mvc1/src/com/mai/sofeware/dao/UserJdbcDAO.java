package com.mai.sofeware.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import com.mai.sofeware.model.UserJDBC;

@Repository
public class UserJdbcDAO implements IUserDAO {
	@Autowired
	private JdbcTemplate jdbcTemplate;
	public UserJdbcDAO() {};
	
	private static final class UserMapper implements RowMapper<UserJDBC>{
		
		//查询共有的部分
		@Override
		public UserJDBC mapRow(ResultSet rs, int num) throws SQLException {
			
			UserJDBC userJDBC = new UserJDBC();
			userJDBC.setUserId(rs.getInt("user_id"));
			userJDBC.setUserName(rs.getString("user_name"));
			userJDBC.setTel(rs.getString("tel"));
			return userJDBC;
		}
		
	}
	
	//查询单条记录，用query()方法
	public List<UserJDBC>findAllUsers(){
		String sql = "SELECT* FROM exam_user";
		List<UserJDBC>userList = jdbcTemplate.query(sql,new UserMapper());
		return userList;
	}
	
	//查询多条记录，用queryForObject()方法
	public UserJDBC getUserById(Integer userId) {
		String sql = "SELECT * FROM exam_user WHERE user_id = ?";
		return jdbcTemplate.queryForObject(sql, new Object[] {userId},new UserMapper());
	}
	
	//数据的增
	
	public Integer createUser(UserJDBC user) throws Exception{
		String sql = "INSERT INTO exam_user VALUES(?, ?, '821718d0413f23eeb626ddb895bddb51', ?, 'student10@qq.com', '珠海市香洲区A街B栋C房', '2016-10-14', '0', null, '0')";
		return jdbcTemplate.update(sql, new Object[] {user.getUserId(),user.getUserName(),user.getTel()});
		
	}
	
	//数据的改
	public Integer editUser(UserJDBC user) throws Exception{
		String sql = "UPDATE exam_user SET user_name = ?,tel = ? WHERE user_id = ? ";
		return  jdbcTemplate.update(sql, new Object[] {user.getUserName(),user.getTel(),user.getUserId()});
		//return  jdbcTemplate.update(sql, new Object[] {user.getUserId(),user.getUserName()});
		
	}
	
	//数据的删
	public Integer delectUser(Integer userId) {
		String sql = "delete from exam_user where user_id=?";
		return jdbcTemplate.update(sql,new Object[] {userId});
	}

	@Override
	public UserJDBC getUserById(int id) {
		// TODO Auto-generated method stub
		return null;
	}

	
}
