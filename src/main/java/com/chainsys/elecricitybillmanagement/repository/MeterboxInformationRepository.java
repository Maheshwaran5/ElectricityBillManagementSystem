package com.chainsys.elecricitybillmanagement.repository;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

import com.chainsys.elecricitybillmanagement.model.MeterboxInformation;



public interface MeterboxInformationRepository extends CrudRepository<MeterboxInformation,Integer>{
	MeterboxInformation findById(int id);
	MeterboxInformation save(MeterboxInformation mi);
    void deleteById(int id);
    List <MeterboxInformation> findAll();
}
