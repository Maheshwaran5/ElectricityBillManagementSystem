package com.chainsys.elecricitybillmanagement.repository;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

import com.chainsys.elecricitybillmanagement.model.BillDetails;

public interface BillDetailsRepository extends CrudRepository<BillDetails,Integer>{
	BillDetails save(BillDetails billDetails);
    void deleteById(int id);
    List <BillDetails> findAll();
	BillDetails findByAccountNumber(long id);
	BillDetails findBybillId(int id);
}
