package model;

public class Purchase {
	private int purchaseId;
	private String userId;
	private String movieName;
	private int totalPrice;
	
	
	public Purchase() {}//기본생성자 만들어 주는 습관 갖기
	//파라미터 생성자를 만드는데 purchaseid는 DB에서 자동 생성되니까 굳이 파라미터 생성자 만들 필요 없다.
	public Purchase(String userId, String movieName, int totalPrice) {
		super();
		this.userId = userId;
		this.movieName = movieName;
		this.totalPrice = totalPrice;
	}
	public int getPurchaseId() {
		return purchaseId;
	}
	public void setPurchaseId(int purchaseId) {
		this.purchaseId = purchaseId;
	}
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public String getMovieName() {
		return movieName;
	}
	public void setMovieName(String movieName) {
		this.movieName = movieName;
	}
	public int getTotalPrice() {
		return totalPrice;
	}
	public void setTotalPrice(int totalPrice) {
		this.totalPrice = totalPrice;
	}
	
	

}
