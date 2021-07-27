package com.test.etc.crawling;

import java.io.IOException;

import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;

public class Ex02 {
	
	public static void main(String[] args) throws IOException {
		
		//Ex02.java
		
		String url = "https://movie.naver.com/movie/sdb/rank/rmovie.naver";
		
		Document doc = Jsoup.connect(url).get();
		
		System.out.println(doc.title());
		
		// .title > .tit3 > a
		Elements list = doc.select(".title > .tit3 > a");
		
		System.out.println(list.size());
		
		for (Element item : list) {
			//System.out.println(item);
			System.out.println(item.text()); // PCDATA
			System.out.println(item.attr("href")); // 속성
		}
		
		
	}

}
