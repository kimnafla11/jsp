package model;

import java.util.Date;

public class Capstone {

	private int teamId;
	private String teamName;
	private String[] member;
	private int numPerson;
	private Date mDate;
	/*
	public Capstone() {}

	public Capstone(String teamName, String[] member, int numPerson, Date mDate) {
		super();
		this.teamName = teamName;
		this.member = member;
		this.numPerson = numPerson;
		this.mDate = mDate;
	}
*/
	
	public int getTeamId() {
		return teamId;
	}

	public void setTeamId(int teamId) {
		this.teamId = teamId;
	}

	public String getTeamName() {
		return teamName;
	}

	public void setTeamName(String teamName) {
		this.teamName = teamName;
	}

	public String[] getMember() {
		return member;
	}

	public void setMember(String[] member) {
		this.member = member;
	}

	public int getNumPerson() {
		return numPerson;
	}

	public void setNumPerson(int numPerson) {
		this.numPerson = numPerson;
	}

	public Date getmDate() {
		return mDate;
	}

	public void setmDate(Date mDate) {
		this.mDate = mDate;
	}
	
}
