package com.util;

public class Calc {
	public static void main(String[] args) {

		BasicCalc b = new BasicCalc();
		SciCalc s = new SciCalc();

		int ans = b.add(500, 20);// add=>ans
		s.sqr(ans);// ans => sqr

		ans = b.add(20, 20);// add=>ans
		s.sqr(ans);// ans => sqr

		b.sub(10, 5);
	}
}
