package my.info;

import java.util.Date;

public class Book {
	private String bookName;
	private String author;
	private int price;
	private Date pDate;//Date형 변수 Date util임포트 해주기 빨간밑줄에 커서 갖다대면 됨
	//생성자 없이 getter setter만 설정해줬다긔
	public String getBookName() {
		return bookName;
	}
	public void setBookName(String bookName) {
		this.bookName = bookName;
	}
	public String getAuthor() {
		return author;
	}
	public void setAuthor(String author) {
		this.author = author;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public Date getpDate() {
		return pDate;
	}
	public void setpDate(Date pDate) {
		this.pDate = pDate;
	}
	
	
}
