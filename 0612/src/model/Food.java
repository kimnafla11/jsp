package model;

import java.util.Date;

public class Food {
	private int foodId;
	private String foodName;
	private String foodType;
	private int foodPrice;
	private Double foodKcal;
	private String foodImage;
	private Date foodDate;
	
	public Food() {}

	public Food(String foodName, String foodType, int foodPrice, Double foodKcal, String foodImage, Date foodDate) {
		super();
		this.foodName = foodName;
		this.foodType = foodType;
		this.foodPrice = foodPrice;
		this.foodKcal = foodKcal;
		this.foodImage = foodImage;
		this.foodDate = foodDate;
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

	public String getFoodType() {
		return foodType;
	}

	public void setFoodType(String foodType) {
		this.foodType = foodType;
	}

	public int getFoodPrice() {
		return foodPrice;
	}

	public void setFoodPrice(int foodPrice) {
		this.foodPrice = foodPrice;
	}

	public Double getFoodKcal() {
		return foodKcal;
	}

	public void setFoodKcal(Double foodKcal) {
		this.foodKcal = foodKcal;
	}

	public String getFoodImage() {
		return foodImage;
	}

	public void setFoodImage(String foodImage) {
		this.foodImage = foodImage;
	}

	public Date getFoodDate() {
		return foodDate;
	}

	public void setFoodDate(Date foodDate) {
		this.foodDate = foodDate;
	}
	
}
