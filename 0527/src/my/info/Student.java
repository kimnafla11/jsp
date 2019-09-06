package my.info;

import java.util.Date;

public class Student {
	private String studentName;
	private int score;
	private Date sDate;
	
	public Student() {}

	public Student(String studentName, int score, Date sDate) {
		super();
		this.studentName = studentName;
		this.score = score;
		this.sDate = sDate;
	}

	public String getStudentName() {
		return studentName;
	}

	public void setStudentName(String studentName) {
		this.studentName = studentName;
	}

	public int getScore() {
		return score;
	}

	public void setScore(int score) {
		this.score = score;
	}

	public Date getsDate() {
		return sDate;
	}

	public void setsDate(Date sDate) {
		this.sDate = sDate;
	}
	
}
