package com.ea.webclient.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.transaction.annotation.Transactional;

import com.ea.webclient.entity.tblSysInfo;

import io.lettuce.core.dynamic.annotation.Param;


public interface tblSysInfoDao extends JpaRepository<tblSysInfo, Integer>{
@Transactional
@Modifying
@Query("update tblSysInfo b set b.alarmStatus=:alarmLv where b.svrCode=:svrCode and b.svrIndex=:svrIndex")
void updatetblSysInfo(@Param("alarmLv") int alarmLv,@Param("svrCode") int svrCode,@Param("svrIndex") int svrIndex);

@Transactional
@Modifying
@Query("delete from tblSysInfo b where b.svrName=:svrName")
void deletetblSysInfo(@Param("svrName") String svrName);

@Query(value="select * from tblSysInfo order by svrCode, svrIndex", nativeQuery=true)
List<tblSysInfo> findAllOrderBy();
}

