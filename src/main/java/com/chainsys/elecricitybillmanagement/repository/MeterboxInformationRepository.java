package com.chainsys.elecricitybillmanagement.repository;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

import com.chainsys.elecricitybillmanagement.model.MeterboxInformation;

public interface MeterboxInformationRepository extends CrudRepository<MeterboxInformation, Long> {
	MeterboxInformation findById(long id);

	MeterboxInformation save(MeterboxInformation mi);

	void deleteById(long id);

	List<MeterboxInformation> findAll();
}
