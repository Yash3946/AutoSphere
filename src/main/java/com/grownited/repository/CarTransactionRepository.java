package com.grownited.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import com.grownited.entity.CarTransactionEntity;

public interface CarTransactionRepository 
        extends JpaRepository<CarTransactionEntity, Integer>{

    // ✅ BOOKINGS COUNT
    Long countByTransactionStatus(String transactionStatus);

    // ✅ REVENUE SUM
    @Query("SELECT SUM(c.finalPrice) FROM CarTransactionEntity c WHERE c.transactionStatus = 'COMPLETED'")
    Double getTotalRevenue();
}