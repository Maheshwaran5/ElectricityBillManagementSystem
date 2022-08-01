package com.chainsys.elecricitybillmanagement.repository;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

import com.chainsys.elecricitybillmanagement.model.BillPayment;
import com.chainsys.elecricitybillmanagement.model.Customer;

public interface BillPaymentRepository extends CrudRepository<BillPayment,Integer>{
	BillPayment findById(int id);
	BillPayment save(BillPayment bp);
    void deleteById(int id);
    List <BillPayment> findAll();
}
