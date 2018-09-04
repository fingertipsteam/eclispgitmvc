package com.mai.sofeware.model;

import java.io.Serializable;
import java.util.Date;

import javax.validation.constraints.NotNull;

import org.hibernate.validator.constraints.NotEmpty;
import org.hibernate.validator.constraints.Range;

public class UserJDBC implements Serializable {

	private static final long serialVersionUID = 2972189453744310913L;
	
	@NotNull(message="ID不能为空!")
	private Integer userId;
	
	@NotEmpty(message="姓名不能为空!")
	private String userName;
	
	private String password;
	
	@NotNull(message="电话不能为空!")
	private String tel;
	
	private String email;
	private String address;
	private Date birthday;
	private int gender;
	private Date lastLockTime;
	private int loginFailCount;
	
	
	public UserJDBC() {
		super();
	}
	public UserJDBC(Integer userId, String userName, String password, String tel, String email, String address,
			Date birthday, int gender, Date lastLockTime, int loginFailCount) {
		super();
		this.userId = userId;
		this.userName = userName;
		this.password = password;
		this.tel = tel;
		this.email = email;
		this.address = address;
		this.birthday = birthday;
		this.gender = gender;
		this.lastLockTime = lastLockTime;
		this.loginFailCount = loginFailCount;
	}
	public Integer getUserId() {
		return userId;
	}
	public void setUserId(Integer userId) {
		this.userId = userId;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getTel() {
		return tel;
	}
	public void setTel(String tel) {
		this.tel = tel;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public Date getBirthday() {
		return birthday;
	}
	public void setBirthday(Date birthday) {
		this.birthday = birthday;
	}
	public int getGender() {
		return gender;
	}
	public void setGender(int gender) {
		this.gender = gender;
	}
	public Date getLastLockTime() {
		return lastLockTime;
	}
	public void setLastLockTime(Date lastLockTime) {
		this.lastLockTime = lastLockTime;
	}
	public int getLoginFailCount() {
		return loginFailCount;
	}
	public void setLoginFailCount(int loginFailCount) {
		this.loginFailCount = loginFailCount;
	}
	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	
	
}
