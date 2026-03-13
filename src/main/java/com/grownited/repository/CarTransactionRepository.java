package com.grownited.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import com.grownited.entity.CarTransactionEntity;

public interface CarTransactionRepository 
        extends JpaRepository<CarTransactionEntity, Integer>{

}