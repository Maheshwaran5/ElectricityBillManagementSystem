package com.chainsys.elecricitybillmanagement.model;

import java.sql.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToOne;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;

@Entity
@Table(name = "bill_details")
public class BillDetails {
	@Id
	@Column(name = "BILL_ID")
	@GeneratedValue(strategy = GenerationType.AUTO, generator = "bill_id")
	@SequenceGenerator(name = "bill_id", sequenceName = "bill_id", allocationSize = 1)
	private int billId;

	@Column(name = "BILL_DATE")
	private Date billDate;

	public Date getBillDate() {
		return billDate;
	}

	public void setBillDate(Date billDate) {
		this.billDate = billDate;
	}

	public long getMeterId() {
		return meterId;
	}

	public void setMeterId(long meterId) {
		this.meterId = meterId;
	}

	@Column(name = "BILL_AMOUNT")
	private long billAmount;

	@Column(name = "UNIT_CONSUMED")
	private long unitConsumed;

	@Column(name = "meter_id")
	private long meterId;

	public int getBillId() {
		return billId;
	}

	public void setBillId(int billId) {
		this.billId = billId;
	}

	public long getBillAmount() {
		return billAmount;
	}

	public void setBillAmount(long billAmount) {
		this.billAmount = billAmount;
	}

	public long getUnitConsumed() {
		return unitConsumed;
	}

	public void setUnitConsumed(long unitConsumed) {
		this.unitConsumed = unitConsumed;
	}

	@ManyToOne(fetch =FetchType.LAZY)
    @JoinColumn(name="meter_id",nullable =false,insertable=false,updatable=false)
	private MeterboxInformation meterBoxInformation;

	public MeterboxInformation getMeterBoxInformation() {
		return meterBoxInformation;
	}

	public void setMeterBoxInformation(MeterboxInformation meterBoxInformation) {
		this.meterBoxInformation = meterBoxInformation;
	}
	
}