package com.grownited.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.grownited.entity.TransactionsEntity;

public interface TransactionRepository extends JpaRepository<TransactionsEntity, Integer>{

}