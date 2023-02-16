package com.example.tryoutapp.repository;

import com.example.tryoutapp.model.UserModel;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface UserRespository extends JpaRepository<UserModel, Long> 
{
}
