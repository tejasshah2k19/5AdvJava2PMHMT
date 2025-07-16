package com.util;

public class Flipkart {

	public static void main(String[] args) {
		Product p = new Product();
		int finalPrice = p.calcPrice(20000, 18);
		System.out.println(finalPrice);
	}
}
