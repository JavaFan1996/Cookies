package com.atguigu.javaweb;

public class Customer {

	private String name;
	private String address;
	private String cardType;
	private String card;

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getCardType() {
		return cardType;
	}

	public void setCardType(String cardType) {
		this.cardType = cardType;
	}

	public String getCard() {
		return card;
	}

	public void setCard(String card) {
		this.card = card;
	}

	public Customer(String name, String address, String cardType, String card) {
		super();
		this.name = name;
		this.address = address;
		this.cardType = cardType;
		this.card = card;
	}
	public Customer(String name,String address){
		this.name = name;
		this.address = address;
	}

	public Customer() {

		System.out.println("Student Constoruct...");
	}

}
