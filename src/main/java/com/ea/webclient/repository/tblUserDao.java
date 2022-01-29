package com.ea.webclient.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.ea.webclient.entity.tblSysInfo;
import com.ea.webclient.entity.tblUser;




public interface tblUserDao extends JpaRepository<tblUser, Integer>{
	
	@Query(value="select * from tblSysInfo order by svrCode, svrIndex", nativeQuery=true)
	List<tblSysInfo> findNoAltibase();

}
