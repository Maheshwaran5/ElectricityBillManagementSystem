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
	private BillDetailsRepository repo;

	public List<BillDetails> getBillDetails() {
		List<BillDetails> listBd = repo.findAll();
		return listBd;
	}

	@Transactional
	public BillDetails save(BillDetails bd) {
		return repo.save(bd);
	}

	public BillDetails findByid(int id) {
		return repo.findById(id);
	}

	@Transactional
	public void deleteById(int id) {
		repo.deleteById(id);
	}
}