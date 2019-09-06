package model;

import java.util.Date;

public class Student {
	private int studentId;
	private String stuName;
	private String stuDepart;
	private int stuAge;
	private String stuImg;
	private Date stuDate;

	public int getStudentId() {
		return studentId;
	}

	public void setStudentId(int studentId) {
		this.studentId = studentId;
	}

	public String getStuName() {
		return stuName;
	}

	public void setStuName(String stuName) {
		this.stuName = stuName;
	}

	public String getStuDepart() {
		return stuDepart;
	}

	public void setStuDepart(String stuDepart) {
		this.stuDepart = stuDepart;
	}

	public int getStuAge() {
		return stuAge;
	}

	public void setStuAge(int stuAge) {
		this.stuAge = stuAge;
	}

	public String getStuImg() {
		return stuImg;
	}

	public void setStuImg(String stuImg) {
		this.stuImg = stuImg;
	}

	public Date getStuDate() {
		return stuDate;
	}

	public void setStuDate(Date stuDate) {
		this.stuDate = stuDate;
	}

	public Student() {}
	
	public Student(String stuName, String stuDepart, int stuAge, String stuImg, Date stuDate) {
		super();
		this.stuName = stuName;
		this.stuDepart = stuDepart;
		this.stuAge = stuAge;
		this.stuImg = stuImg;
		this.stuDate = stuDate;
	}
}