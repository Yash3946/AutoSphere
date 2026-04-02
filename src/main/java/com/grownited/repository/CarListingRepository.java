package com.grownited.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.grownited.entity.CarListingEntity;

@Repository
public interface CarListingRepository extends JpaRepository<CarListingEntity, Integer>{
	
//	 long countByRole(String role);
	
	long countByStatus(String status);
	List<CarListingEntity> findByBrandNameIgnoreCase(String brandName);
	
	

}