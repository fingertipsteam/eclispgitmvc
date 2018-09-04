package com.mai.sofeware.entity;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import org.hibernate.annotations.CascadeType;

@Entity
@Table(name="exam_test")
public class ExamTest implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 4891681971653960682L;
	
	@Id
	@GeneratedValue
	@Column(name="id",nullable=false)
	private Integer id;
	
	@Column(name="tenent",length=1000,nullable=false)
	private String content;
	
	@Column(name="choose_a",length=255,nullable=false)
	private String chooseA;
	
	@Column(name="choose_b",length=255,nullable=false)
	private String chooseB;
	
	@Column(name="choose_c",length=255,nullable=false)
	private String chooseC;
	
	@Column(name="choose_d",length=255,nullable=false)
	private String chooseD;
	
	@Column(name="sub_id",nullable=false)
	private Integer subId;
	
	@Column(name="answer",length=10,nullable=false)
	private String answer;
	
	/*@ManyToOne(cascade= {CascadeType.DETACH,CascadeType.PERSIST,CascadeType.MERGE})
	@JoinColumn(name="test_type_id")
	private ExamTestType examTestType;*/
	
	public ExamTest() {
		super();
	}

	public ExamTest(Integer id, String content, String chooseA, String chooseB, String chooseC, String chooseD,
			Integer subId, String answer /*,ExamTestType examTestType*/) {
		super();
		this.id = id;
		this.content = content;
		this.chooseA = chooseA;
		this.chooseB = chooseB;
		this.chooseC = chooseC;
		this.chooseD = chooseD;
		this.subId = subId;
		this.answer = answer;
		//this.examTestType = examTestType;
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getChooseA() {
		return chooseA;
	}

	public void setChooseA(String chooseA) {
		this.chooseA = chooseA;
	}

	public String getChooseB() {
		return chooseB;
	}

	public void setChooseB(String chooseB) {
		this.chooseB = chooseB;
	}

	public String getChooseC() {
		return chooseC;
	}

	public void setChooseC(String chooseC) {
		this.chooseC = chooseC;
	}

	public String getChooseD() {
		return chooseD;
	}

	public void setChooseD(String chooseD) {
		this.chooseD = chooseD;
	}

	public Integer getSubId() {
		return subId;
	}

	public void setSubId(Integer subId) {
		this.subId = subId;
	}

	public String getAnswer() {
		return answer;
	}

	public void setAnswer(String answer) {
		this.answer = answer;
	}

	/*public ExamTestType getExamTestType() {
		return examTestType;
	}

	public void setExamTestType(ExamTestType examTestType) {
		this.examTestType = examTestType;
	}*/

	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	
	

}
