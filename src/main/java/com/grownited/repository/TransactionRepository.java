package com.grownited.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.grownited.entity.TransactionsEntity;

public interface TransactionRepository extends JpaRepository<TransactionsEntity, Integer>{

    Long countByTransactionStatus(String status);

    @Query("SELECT SUM(t.finalPrice) FROM TransactionsEntity t WHERE t.transactionStatus='COMPLETED'")
    Double getTotalRevenue();

}