package my.info;

import java.util.Date;

public class Book {
	private String bookName;
	private String[] janre;
	private int price;
	private Date publishDate;
	public String getBookName() {
		return bookName;
	}
	public void setBookName(String bookName) {
		this.bookName = bookName;
	}
	public String[] getJanre() {
		return janre;
	}
	public void setJanre(String[] janre) {
		this.janre = janre;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public Date getPublishDate() {
		return publishDate;
	}
	public void setPublishDate(Date publishDate) {
		this.publishDate = publishDate;
	}

}
