package com.chainsys.elecricitybillmanagement.repository;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

import com.chainsys.elecricitybillmanagement.model.BillDetails;
import com.chainsys.elecricitybillmanagement.model.BillPayment;

public interface BillDetailsRepository extends CrudRepository<BillDetails,Integer>{
	BillDetails findById(int id);
	BillDetails save(BillDetails bd);
    void deleteById(int id);
    List <BillDetails> findAll();
}
