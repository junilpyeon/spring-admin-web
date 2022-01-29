package com.ea.webclient.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.transaction.annotation.Transactional;

import com.ea.webclient.entity.tblSysProcess;

import io.lettuce.core.dynamic.annotation.Param;


public interface tblSysProcessDao extends JpaRepository<tblSysProcess, Integer>{
	@Transactional
	@Modifying
	@Query("update tblSysProcess b set b.alarmStatus=:alarmLv where b.svrCode=:svrCode and b.svrIndex=:svrIndex and b.moduleCode=:moduleCode")
	void updatetblSysProcess(@Param("alarmLv") int alarmLv, @Param("svrCode") int svrCode, @Param("svrIndex") int svrIndex , @Param("moduleCode") int moduleCode);
	
	@Transactional
	@Modifying
	@Query("delete from tblSysProcess b where b.moduleName=:moduleName")
	void deletetblSysProcess(@Param("moduleName") String moduleName);

}
