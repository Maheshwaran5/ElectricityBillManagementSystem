package com.chainsys.elecricitybillmanagement.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.chainsys.elecricitybillmanagement.model.BillDetails;
import com.chainsys.elecricitybillmanagement.repository.BillDetailsRepository;

@Service
public class BillDetailsService {
	@Autowired
	private BillDetailsRepository billDetailsRepository;

	public List<BillDetails> getBillDetails() {
		List<BillDetails> listBd = billDetailsRepository.findAll();
		return listBd;
	}

	@Transactional
	public BillDetails save(BillDetails bd) {
		return billDetailsRepository.save(bd);
	}

	public BillDetails findById(int id) {
		return billDetailsRepository.findById(id);
	}

	@Transactional
	public void deleteById(int id) {
		billDetailsRepository.deleteById(id);
	}
}