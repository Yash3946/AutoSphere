package com.grownited.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.grownited.entity.WishlistEntity;

public interface WishlistRepository extends JpaRepository<WishlistEntity, Integer>{

    // 🔥 User-wise data
    List<WishlistEntity> findByUser_UserId(Integer userId);

    // 🔥 Prevent duplicate
    boolean existsByUser_UserIdAndCarListing_ListingId(Integer userId, Integer listingId);
}