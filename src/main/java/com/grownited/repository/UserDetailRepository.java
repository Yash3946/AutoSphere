package com.grownited.repository;

import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;

import com.grownited.entity.UserDetailEntity;

public interface UserDetailRepository extends JpaRepository<UserDetailEntity, Integer> {

    Optional<UserDetailEntity> findByUserId(Integer userId);

}
