package com.ea.webclient.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.ea.webclient.entity.Emergency;

public interface EmergencyRepository extends JpaRepository<Emergency, Integer>{

}
