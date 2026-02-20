package com.grownited.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.grownited.entity.CarImageEntity;

@Repository
public interface CarImageRepository extends JpaRepository<CarImageEntity, Integer>{

}