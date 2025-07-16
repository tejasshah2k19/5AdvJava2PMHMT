package com.util;

public class Product {

	//
	int calcPrice(int price, int gst) {
		int finalPrice = price + ( price * gst / 100 );
		return finalPrice;
	}
	
	
}
