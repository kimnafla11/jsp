package my.music;

public class Music {
	private String janre;
	private String musicName;
	private int price;
	
	public Music() {}

	public Music(String janre, String musicName, int price) {
		super();
		this.janre = janre;
		this.musicName = musicName;
		this.price = price;
	}

	public String getJanre() {
		return janre;
	}

	public void setJanre(String janre) {
		this.janre = janre;
	}

	public String getMusicName() {
		return musicName;
	}

	public void setMusicName(String musicName) {
		this.musicName = musicName;
	}

	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
	}
	
}
