package com.grownited.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.grownited.entity.UserDetailEntity;

public interface UserDetailRepository extends JpaRepository<UserDetailEntity, Integer>{

}
