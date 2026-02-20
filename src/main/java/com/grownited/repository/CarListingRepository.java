package com.grownited.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.grownited.entity.CarListingEntity;

@Repository
public interface CarListingRepository extends JpaRepository<CarListingEntity, Integer>{

}