package model;

import java.util.Date;

public class Movie {
	private int movieId;
	private String movieName;
	private String maker;
	private int price;
	private String movieImage;
	private Date openDate;
	
	public Movie() {}//명시적생성자 쓰고

	public Movie(String movieName, String maker, int price, String movieImage, Date openDate) {
		super();//파라미터 생성자 소스 - 컨스트럭터유징필드 - movieId는 생성자 만들어줄 필요 없다
		this.movieName = movieName;
		this.maker = maker;
		this.price = price;
		this.movieImage = movieImage;
		this.openDate = openDate;
	}

	public int getMovieId() {//getter setter만듦
		return movieId;
	}

	public void setMovieId(int movieId) {
		this.movieId = movieId;
	}

	public String getMovieName() {
		return movieName;
	}

	public void setMovieName(String movieName) {
		this.movieName = movieName;
	}

	public String getMaker() {
		return maker;
	}

	public void setMaker(String maker) {
		this.maker = maker;
	}

	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
	}

	public String getMovieImage() {
		return movieImage;
	}

	public void setMovieImage(String movieImage) {
		this.movieImage = movieImage;
	}

	public Date getOpenDate() {
		return openDate;
	}

	public void setOpenDate(Date openDate) {
		this.openDate = openDate;
	}
	
	

}
