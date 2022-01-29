package com.ea.webclient.repository;
  
  import org.springframework.data.jpa.repository.JpaRepository;

import com.ea.webclient.entity.Member;
  
  
  public interface MemberRepository extends JpaRepository<Member, Long>{
  
  }
 