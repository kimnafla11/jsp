package my.movie;

public class Movie {
	private String movieName;
	private int series;
	private String maker;
	private String imageName;
	
	public Movie(){}
	public Movie(String movieName, int series, String maker, String imageName){
		super();
		this.movieName = movieName;
		this.series = series;
		this.maker = maker;
		this.imageName = imageName;
	}
	
	public String getImageName() {
		return imageName;
	}
	public void setImageName(String imageName) {
		this.imageName = imageName;
	}
	public String getMovieName() {
		return movieName;
	}
	public void setMovieName(String movieName) {
		this.movieName = movieName;
	}
	public int getSeries() {
		return series;
	}
	public void setSeries(int series) {
		this.series = series;
	}
	public String getMaker() {
		return maker;
	}
	public void setMaker(String maker) {
		this.maker = maker;
	}
}
