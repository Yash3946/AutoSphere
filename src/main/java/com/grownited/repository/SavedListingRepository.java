package com.grownited.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.grownited.entity.SavedListingEntity;

@Repository
public interface SavedListingRepository extends JpaRepository<SavedListingEntity, Integer>{

}