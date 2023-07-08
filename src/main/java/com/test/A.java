package com.test;

import java.util.Arrays;
import java.util.List;

public class A {
	public static void main(String[] args) {
		List<String> scoreList = Arrays.asList(new String[]{"X", "O", "O", "O", "X", "O", "O", "O", "X", "O"});
		int cnt = 0; 
		for(String val : scoreList) {
			if(val.equals("O")) {
				cnt++;
			}
		}
		double avg = cnt/scoreList.size()*1.0;
		System.out.println(avg);
	}
}
