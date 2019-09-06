package my.movie;

public class Movie {
	private String movieName;//멤버변수선언
	private int price;//private: Movie라는 클래스 내에서만 사용하는거
	private String maker;
	private String imageName;
	
	public Movie(){}//기본생성자 parameter생성자를 만들면 명시적으로 기본생성자를 넣어줘야 에러가 안남
	public Movie(String movieName, int price, String maker, String imageName) {//parameter생성자
		super();
		this.movieName = movieName;
		this.price = price;
		this.maker = maker;
		this.imageName = imageName;//parameter생성자
	}
	public String getMovieName() {
		return movieName;
	}
	public void setMovieName(String movieName) {
		this.movieName = movieName;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	
	public String getMaker() {
		return maker;
	}
	public void setMaker(String maker) {
		this.maker = maker;
	}
	public String getImageName() {
		return imageName;
	}
	public void setImageName(String imageName) {
		this.imageName = imageName;
	}
	
	//다른클래스에서도 사용할 수 있게 getter setter설정해준다. 대소문자구분 잘 해줄것.
	//Movie클래스 만들어줌
}
