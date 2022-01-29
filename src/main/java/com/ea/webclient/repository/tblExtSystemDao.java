package com.ea.webclient.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.transaction.annotation.Transactional;

import com.ea.webclient.entity.IdxOnly;
import com.ea.webclient.entity.tblExtSystem;



public interface tblExtSystemDao extends JpaRepository<tblExtSystem, Integer>{
	@Transactional
	@Modifying
	@Query("update tblExtSystem b set b.extAlarmStatus=:alarmLv where b.extSysCode=:svrCode")
	void updatetblExtSystem(@Param("alarmLv") int alarmLv, @Param("svrCode") int svrCode);
	
	@Query("select distinct new com.ea.webclient.entity.IdxOnly(t.extSysIndex, t.extSysName) from tblExtSystem t")
	List<IdxOnly> findAllByLocation();
	
	@Transactional
	@Modifying
	@Query("delete from tblExtSystem b where b.extSysName=:extSysName")
	void deletetblExtSystem(@Param("extSysName") String extSysName);





	
}
