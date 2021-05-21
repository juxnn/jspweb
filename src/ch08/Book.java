package ch08;

public class Book {
	private String code;
	private String title;
	private String writer;
	private String publisher;
	private int price;
	private boolean out;
	
	public boolean isOut() {
		return out;
	}
	//boolean 타입을 리턴한다면, 앞에 get이라고 써도 되고, is라고 써도 된다.
	//isOut, getOut 둘 다 가능. is가 붙을수도 있다.
	
	public void setOut(boolean out) {
		this.out = out;
	}
	
	public String getBarCode() {
		return code;
	}
	
	//프로퍼티는 메소드에 의해 결정됨.
	//메소드에 의해 BarCode라는 프로퍼티가 있다.
	
	public String getCode() {
		return code;
	}
	public void setCode(String code) {
		this.code = code;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getWriter() {
		return writer;
	}
	public void setWriter(String writer) {
		this.writer = writer;
	}
	public String getPublisher() {
		return publisher;
	}
	public void setPublisher(String publisher) {
		this.publisher = publisher;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	
	
}
