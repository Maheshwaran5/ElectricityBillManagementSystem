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
	private BillPaymentRepository repo;

	public List<BillPayment> getBillPayment() {
		List<BillPayment> listBp = repo.findAll();
		return listBp;
	}

	@Transactional
	public BillPayment save(BillPayment bp) {
		return repo.save(bp);
	}

	public BillPayment findByid(int id) {
		return repo.findById(id);
	}

	@Transactional
	public void deleteById(int id) {
		repo.deleteById(id);
	}
}