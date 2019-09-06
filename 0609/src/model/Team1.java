package model;

import java.util.Date;

public class Team1 {
	private int teamId;
	private int studentId;
	private String stuName;
	private String subject;
	private Date tDate;
	private String teamPerson;
	

	public Team1() {}


	public Team1(int studentId, String stuName, String subject, Date tDate, String teamPerson) {
		super();
		this.studentId = studentId;
		this.stuName = stuName;
		this.subject = subject;
		this.tDate = tDate;
		this.teamPerson = teamPerson;
	}


	public int getTeamId() {
		return teamId;
	}


	public void setTeamId(int teamId) {
		this.teamId = teamId;
	}


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


	public String getSubject() {
		return subject;
	}


	public void setSubject(String subject) {
		this.subject = subject;
	}


	public Date gettDate() {
		return tDate;
	}


	public void settDate(Date tDate) {
		this.tDate = tDate;
	}


	public String getTeamPerson() {
		return teamPerson;
	}


	public void setTeamPerson(String teamPerson) {
		this.teamPerson = teamPerson;
	}
	
}

