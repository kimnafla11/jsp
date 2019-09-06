package singer;

public class Idol {
	private String idolName;
	private String idolCo;
	private int member;
	
	public Idol() {}
	
	
	public Idol(String idolName, String idolCo, int member) {
		super();
		this.idolName = idolName;
		this.idolCo = idolCo;
		this.member = member;
	}


	public String getIdolName() {
		return idolName;
	}
	public void setIdolName(String idolName) {
		this.idolName = idolName;
	}
	public String getIdolCo() {
		return idolCo;
	}
	public void setIdolCo(String idolCo) {
		this.idolCo = idolCo;
	}
	public int getMember() {
		return member;
	}
	public void setMember(int member) {
		this.member = member;
	}
	
	
}
