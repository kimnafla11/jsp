package my.info;

import java.util.Date;

public class Person {
	private String name;
	private String[] hobbies;
	private int weight;
	private String[] foods;
	private Date birthDay;//변수선언하고 게터쎄터
	
	public String[] getFoods() {
		return foods;
	}
	public void setFoods(String[] foods) {
		this.foods = foods;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String[] getHobbies() {//배열을 주고받음
		return hobbies;
	}
	public void setHobbies(String[] hobbies) {
		this.hobbies = hobbies;
	}
	public int getWeight() {
		return weight;
	}
	public void setWeight(int weight) {
		this.weight = weight;
	}
	public Date getBirthDay() {
		return birthDay;
	}
	public void setBirthDay(Date birthDay) {
		this.birthDay = birthDay;
	}
	
}
