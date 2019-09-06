package model;

import java.util.Date;

public class Purchase {
	private int purchaseId;
	private int foodId;
	private String foodName;
	private int foodNum;
	private int totalPrice;
	private double totalKcal;
	private Date pDate;
	private String purchaser;
	
	public Purchase() {}

	public Purchase(int foodId, String foodName, int foodNum, int totalPrice, double totalKcal, Date pDate,
			String purchaser) {
		super();
		this.foodId = foodId;
		this.foodName = foodName;
		this.foodNum = foodNum;
		this.totalPrice = totalPrice;
		this.totalKcal = totalKcal;
		this.pDate = pDate;
		this.purchaser = purchaser;
	}

	public int getPurchaseId() {
		return purchaseId;
	}

	public void setPurchaseId(int purchaseId) {
		this.purchaseId = purchaseId;
	}

	public int getFoodId() {
		return foodId;
	}

	public void setFoodId(int foodId) {
		this.foodId = foodId;
	}

	public String getFoodName() {
		return foodName;
	}

	public void setFoodName(String foodName) {
		this.foodName = foodName;
	}

	public int getFoodNum() {
		return foodNum;
	}

	public void setFoodNum(int foodNum) {
		this.foodNum = foodNum;
	}

	public int getTotalPrice() {
		return totalPrice;
	}

	public void setTotalPrice(int totalPrice) {
		this.totalPrice = totalPrice;
	}

	public double getTotalKcal() {
		return totalKcal;
	}

	public void setTotalKcal(double totalKcal) {
		this.totalKcal = totalKcal;
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
