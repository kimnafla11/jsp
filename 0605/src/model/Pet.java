package model;

import java.util.Date;

public class Pet {
	private int petId;
	private String petName;
	private int price;
	private double weight;
	private String petImage;
	private Date adoptDate;
	private int fav;
	
	public Pet() {}

	public Pet(String petName, int price, double weight, String petImage, Date adoptDate) {
		super();
		this.petName = petName;
		this.price = price;
		this.weight = weight;
		this.petImage = petImage;
		this.adoptDate = adoptDate;
	}

	public int getFav() {
		return fav;
	}

	public void setFav(int fav) {
		this.fav = fav;
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

	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
	}

	public double getWeight() {
		return weight;
	}

	public void setWeight(double weight) {
		this.weight = weight;
	}

	public String getPetImage() {
		return petImage;
	}

	public void setPetImage(String petImage) {
		this.petImage = petImage;
	}

	public Date getAdoptDate() {
		return adoptDate;
	}

	public void setAdoptDate(Date adoptDate) {
		this.adoptDate = adoptDate;
	}
	
}
