package com.test.question.q15.t1;

public class Q004 {
	public static void main(String[] args) {
		
		
		int [] num = new int [20];
		
		System.out.print("원본: ");
		
		for (int i=0; i<num.length; i++) {
			
			num[i] = (int)((Math.random()*20) + 1);
		
			System.out.printf("%d, " ,num[i]);
		
		}//for
		
		
		//int max = 0으로 초기화고 for문의 i를 0으로 초기화
		int max = num[0]; //MAX 값 초기화 시키고 값들 비교해서 
		for(int i=1; i<num.length; i++) {
			if(max<num[i]) {
				max=num[i];
			}
		}
		System.out.printf("최대값: %d\n",max);
		
		//int min = 21으로 초기화고 for문의 i를 0으로 초기화
		int min = num[0]; 
		for(int i=1; i<num.length; i++) {
			if(num[i]<min) {
				min=num[i];
			}
		}
		System.out.printf("최소값: %d\n",min);
		
		
		
	
	}//main		

}
