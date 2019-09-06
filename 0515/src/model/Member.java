package model;

public class Member {
	private String memberId;
	private String password;
	private String userName;
	
	public Member() {}

	public Member(String memberId, String password, String userName) {
		super();
		this.memberId = memberId;
		this.password = password;
		this.userName = userName;
	}

	public String getMemberId() {
		return memberId;
	}

	public void setMemberId(String memberId) {
		this.memberId = memberId;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}
	/*
	 * 우선 변수 선언하고
	 * 명시적 생성자 쓰고
	 * 파라미터 생성자 만들고
	 * getter setter만든다
	 * 여기서 memberId값은 사람이 직접 입력받아 쓰는 값이므로 파라미터 생성자 만들어준다
	 * model클래스 만든다음에
	 * dao클래스 만든다
	 * */
	
}
