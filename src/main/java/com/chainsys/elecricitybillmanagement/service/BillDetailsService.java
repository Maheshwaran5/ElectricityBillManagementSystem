package com.chainsys.elecricitybillmanagement.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.chainsys.elecricitybillmanagement.model.BillDetails;
import com.chainsys.elecricitybillmanagement.repository.BillDetailsRepository;

@Service
public class BillDetailsService {
	@Autowired
	private BillDetailsRepository billDetailsRepository;

	public List<BillDetails> getBillDetails() {
		return billDetailsRepository.findAll();
	}

	public BillDetails save(BillDetails bd) {
		return billDetailsRepository.save(bd);
	}

	public BillDetails findById(long id) {
		return billDetailsRepository.findBybillId(id);
	}
	
	public List<BillDetails> getMeterDetails(long meterId) {
		return billDetailsRepository.findByMeterId(meterId);
	}
}