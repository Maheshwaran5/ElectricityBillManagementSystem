package com.chainsys.elecricitybillmanagement.model;

import java.sql.Date;

public class DashBoard {
private String customer_name;
private long bill_Id;
private Date bill_Date;
private double bill_Amount;
private double unit_Consumed;
public String getCustomer_name() {
	return customer_name;
}
public void setCustomer_name(String customer_name) {
	this.customer_name = customer_name;
}
public long getBill_Id() {
	return bill_Id;
}
public void setBill_Id(long bill_Id) {
	this.bill_Id = bill_Id;
}
public Date getBill_Date() {
	return bill_Date;
}
public void setBill_Date(Date bill_Date) {
	this.bill_Date = bill_Date;
}
public double getBill_Amount() {
	return bill_Amount;
}
public void setBill_Amount(double bill_Amount) {
	this.bill_Amount = bill_Amount;
}
public double getUnit_Consumed() {
	return unit_Consumed;
}
public void setUnit_Consumed(double unit_Consumed) {
	this.unit_Consumed = unit_Consumed;
}
}
