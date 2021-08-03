package com.test.etc.lamda;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.function.Consumer;
import java.util.stream.IntStream;
import java.util.stream.Stream;

import com.google.common.primitives.UnsignedInteger;

public class Ex05 {

	public static void main(String[] args) {
		
		//람다식
		//1. 배열, 컬렉션 > sort()
		//2. 스트림(*****)
		
		//자바 스트림
		//1. 입출력 스트림
		// - 파일 입출력, 콘솔 입출력, 네트워크 입출력
		//2. 스트림
		// - Java 8(JDK 1.8)
		// - 배열, 컬렉션의 탐색을 지원(*****)
		
		//스트림
		// - 배열, 컬렉션을 탐색하는 방법
		// - 람다식 사용
		
		//배열, 컬렉션 탐색
		//1.  for문
		//2. 향상된 for문
		//3. iterator
		//4. 스트림
		
		m1();
		
	}

	private static void m1() {
		
		int[] nums = { 1, 8, 2, 3, 7, 9, 4, 5, 6 };
		ArrayList<Integer> nums2 = new ArrayList<Integer>();
		
		//탐색
		//1. for문
		for (int i=0; i<nums.length; i++) {
			System.out.printf("%4d", nums[i]);
			nums2.add(nums[i]);
		}
		System.out.println();
		
		//2. 향상된 for문
		for (int n : nums) {
			System.out.printf("%4d", n);
		}
		System.out.println();
		
		//3. iterator
		// - iterator() 메소드 제공 > Iterator 탐색 가능
		Iterator<Integer> iter = nums2.iterator();
		
		while (iter.hasNext()) {
			System.out.printf("%4d", iter.next());
		}
		System.out.println();
		
		//4. Stream
		// - stream() 메소드 제공 > Stream 탐색 가능
		// - Arrays.stream(배열)
		// - 컬렉션.stream()
		// - 함수 지향형 프로그래밍 > 메소드 체이닝 형태로 코딩하는 것을 지향한다.
		
		IntStream istream = Arrays.stream(nums);
		Stream<Integer> stream = nums2.stream();
		
		//스트림 지원 메소드 다양
		// - forEach()
		Consumer<Integer> c1 = n -> System.out.println(n);
		//c1.accept(10);
		
		nums2.stream().forEach(c1); //c1를 9번 호출
		
		
		nums2.stream().forEach(new Consumer<Integer>() {
			
			@Override
			public void accept(Integer t) {
				System.out.println(t);
			}
			
		});
		
		
		//최종 형태 > 탐색
		nums2.stream().forEach(n -> System.out.println(n));
		
		
		
		/*
		
		기시감
		- JavaScript
		
		let list = [ 10, 20, 30, 40, 50 ];
		
		list.forEach(function(index, item) {
			//배열의 요소를 하나 념거준 뒤 함수 한번 호출 x 5번
		});
		
		//람다식(X) -> 화살표 함수(Arrow Function)
		list.forEach(() => {
			
		});
		 
		*/
		
		
		System.out.println();
		Arrays.stream(nums).forEach(n -> System.out.printf("%4d", n));
		System.out.println();
		
		
		List<String> names = new ArrayList<String>();
		
		names.add("홍길동");
		names.add("김아무개");
		names.add("정하하호호호");
		names.add("최민");
		names.add("박우하하하호호호하하하하");
		
		//객체 지향 프로그래밍 방식 -> 함수형 프로그래밍 방식
		names
			.stream()
			.forEach(name -> {
				
				if (name.length() >= 3) {
					System.out.println("긴이름: " + name);
				} else {
					System.out.println("짧은 이름: " + name);
				}
				
		});
		
	}
	
}
