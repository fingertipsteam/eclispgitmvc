/**
 * COPYRIGHT (C) 2017 BY Mai. ALL RIGHTS RESERVED.
 */
package com.mai.sofeware.model;

import java.io.Serializable;

import javax.validation.constraints.NotNull;

import org.hibernate.validator.constraints.NotEmpty;
import org.hibernate.validator.constraints.Range;

/**
 * 类的描述
 *
 * @author Mai
 * @since 1.0
 */

public class User implements Serializable  {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1099316467259412953L;
	
	@NotNull(message="ID不能为空!")
	private Integer id;
	
	@NotEmpty(message="姓名不能为空!")
	private String name;
	
	@NotNull(message="年龄不能为空!")
	@Range(min=1,max=200,message="{page.add.checkAgeMax}")
	private Integer age;

	public User() {
		super();
	};
	/**
	 * @param i
	 * @param string
	 * @param j
	 */
	public User(Integer id, String name, Integer age) {
		// TODO Auto-generated constructor stub
		this.id = id;
		this.name= name;
		this.age= age;
	}
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public Integer getAge() {
		return age;
	}
	public void setAge(Integer age) {
		this.age = age;
	}
	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	
	
}
