package com.ipuro.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

@Entity
public class ShoppingCart 
{
@Id
@GeneratedValue
int i;
String itemImage;
String item;
float Price;
int quantity;
float total;
String userid;
public String getUserid() {
	return userid;
}
public void setUserid(String userid) {
	this.userid = userid;
}


public int getI() {
	return i;
}
public String getItemImage() {
	return itemImage;
}
public void setItemImage(String itemImage) {
	this.itemImage = itemImage;
}
public String getItem() {
	return item;
}
public void setItem(String item) {
	this.item = item;
}
public float getPrice() {
	return Price;
}
public void setPrice(float price) {
	Price = price;
}
public int getQuantity() {
	return quantity;
}
public void setQuantity(int quantity) {
	this.quantity = quantity;
}
public float getTotal() {
	return total;
}
public void setTotal(float total) {
	this.total = total;
}


}
