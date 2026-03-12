package com.grownited.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.grownited.entity.WishlistEntity;

public interface WishlistRepository extends JpaRepository<WishlistEntity, Integer>{

}