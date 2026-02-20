package com.grownited.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.grownited.entity.CarVariantEntity;

@Repository
public interface CarVariantRepository extends JpaRepository<CarVariantEntity, Integer>{

}