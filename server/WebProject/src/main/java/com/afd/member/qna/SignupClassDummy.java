package com.afd.member.qna;

import java.util.Arrays;
import java.util.Random;
import java.util.Scanner;

public class SignupClassDummy {
	
	public static void main(String[] args) {
		
		int[] nums = {-10, -3, 5, 6, -20};
		
		test(nums);
		
	}
	
	public static int test(int[] nums) {
		
		int n = nums.length;
		
		Arrays.sort(nums);
		
		if ((nums[0] * nums[1]) > (nums[n - 1] * nums[n-2])) {
			return nums[0] * nums[1];
		} else {
			return nums[n-1] * nums[n-2];
		}
		
	}
	
	

}
