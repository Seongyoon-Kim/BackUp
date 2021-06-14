package com.test.question.q17;

public class Book {
	
	private String title;
	private int price;
	private String author;
	private String publisher;
	private String pubYear = "2021";
	private String isbn;
	private int page;
	
	
	
	
	public void setTitle(String title) throws Exception {
		
		for (int i=0; i<title.length(); i++) {
			
			int word = title.charAt(i);
			
			if ((word >= (int)'a' && word <= (int)'z') || (word >= (int)'A' && word <= (int)'B') || (word >= (int)'가' && word <= (int)'힣') || (word >= (int)'0' && word <= (int)'9') && title.length() > 0 && title.length() < 50 || word == ' ') {
				
				this.title = title;
				
			} else {
				throw new Exception("잘못된 제목입니다.");
			}
					
			
		}
		
	}//setTitle
	
	public String getTitle() {
		return this.title;
	}//getTitle
	
	public void setPrice(int price) throws Exception {
		
		if (price > 0 && price < 1000000) {
			this.price = price;
		} else {
			throw new Exception("잘못된 가격입니다.");
		}
		
	}//setPrice
	
	public int getPrice() {
		return this.price;
	}//getPrice
	
	
	public void setAuthor(String author) {
		this.author = author;
	}
	
	public String getAuthor() {
		return this.author;
	}
	
	
	public void setPage(int page) throws Exception {
		
		if (page > 0) {
			this.page = page;
		} else {
			throw new Exception("잘못된 페이지 수 입니다.");
		}
		
	}
	
	public int getPage() {
		if (this.page > 0) {
			
		} else {
			System.out.println("잘못된 페이지 수 입니다.");
		}
		return this.page;
	}
	
	
	public void setPublisher(String publisher) {
		this.publisher = publisher;
	}
	
	public String getPubYear() {
		return this.pubYear;
	}
	
	
	public void setIsbn(String isbn) {
		this.isbn = isbn;
	}
	
	public String getIsbn() {
		return this.isbn;
	}
	
	public String info() {
		
		String txt = "";
		
		txt = "제목: " + getTitle()
		    + "\n가격: " + getPrice()
		    + "\n저자: " + getAuthor()
		    + "\n페이지수: " + getPage()
		    + "\n발행년도: " + getPubYear()
		    + "\nISBN: " + getIsbn();
		    
		return txt;
		
	}
	
	
	
	

}//Book
