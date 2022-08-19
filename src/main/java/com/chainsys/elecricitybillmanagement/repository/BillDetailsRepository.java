package com.chainsys.elecricitybillmanagement.repository;

import java.util.List;


import org.springframework.data.repository.CrudRepository;

import com.chainsys.elecricitybillmanagement.model.BillDetails;

public interface BillDetailsRepository extends CrudRepository<BillDetails,Long>{
	BillDetails save(BillDetails billDetails);
    List <BillDetails> findAll();
    
	BillDetails findByAccountNumber(long id);
	BillDetails findBybillId(long id);
}
