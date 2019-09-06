package model;

import java.util.Date;

public class Purchase {
	private int purchaseId;
	private int petId;
	private String petName;
	private int petNum;
	private double totalPrice;
	private Date pDate;
	private String purchaser;
	
	public Purchase() {}
	//파라미터 생성자 만들때 id값은 체크 해제 해주어야한다.
	public Purchase(int petId, String petName, int petNum, double totalPrice, Date pDate, String purchaser) {
		super();
		this.petId = petId;
		this.petName = petName;
		this.petNum = petNum;
		this.totalPrice = totalPrice;
		this.pDate = pDate;
		this.purchaser = purchaser;
	}
	//getter setter할 때는 id값은 체크 해주어야한다.
	public int getPurchaseId() {
		return purchaseId;
	}

	public void setPurchaseId(int purchaseId) {
		this.purchaseId = purchaseId;
	}

	public int getPetId() {
		return petId;
	}

	public void setPetId(int petId) {
		this.petId = petId;
	}

	public String getPetName() {
		return petName;
	}

	public void setPetName(String petName) {
		this.petName = petName;
	}

	public int getPetNum() {
		return petNum;
	}

	public void setPetNum(int petNum) {
		this.petNum = petNum;
	}

	public double getTotalPrice() {
		return totalPrice;
	}

	public void setTotalPrice(double totalPrice) {
		this.totalPrice = totalPrice;
	}

	public Date getpDate() {
		return pDate;
	}

	public void setpDate(Date pDate) {
		this.pDate = pDate;
	}

	public String getPurchaser() {
		return purchaser;
	}

	public void setPurchaser(String purchaser) {
		this.purchaser = purchaser;
	}

}
