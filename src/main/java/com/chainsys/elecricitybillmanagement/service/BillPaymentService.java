package com.chainsys.elecricitybillmanagement.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.chainsys.elecricitybillmanagement.model.BillPayment;
import com.chainsys.elecricitybillmanagement.repository.BillPaymentRepository;

@Service
public class BillPaymentService {
	@Autowired
	private BillPaymentRepository billPaymentRepository;

	public List<BillPayment> getBillPayment() {
		List<BillPayment> listBp = billPaymentRepository.findAll();
		return listBp;
	}

	public BillPayment save(BillPayment bp) {
		return billPaymentRepository.save(bp);
	}

	public BillPayment findById(int id) {
		return billPaymentRepository.findById(id);
	}

//	@Transactional
	public void deleteById(int id) {
		billPaymentRepository.deleteById(id);
	}
}