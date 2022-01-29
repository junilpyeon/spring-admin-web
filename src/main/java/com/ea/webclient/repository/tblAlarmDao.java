package com.ea.webclient.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.transaction.annotation.Transactional;

import com.ea.webclient.entity.tblAlarm;



public interface tblAlarmDao extends JpaRepository<tblAlarm, Integer>{
	@Transactional
	@Modifying
	@Query("delete from tblAlarm b where b.seq<=:seq")
	void deletetblAlarm(@Param("seq") Integer seq);
	
	@Query("select max(t.seq) from tblAlarm t where t.updateTime like CONCAT('%',:time1,'%')")
	Integer findMaxDate(@Param("time1") String time1);
	
	@Query(value="select top 5 * from tblAlarm order by seq desc", nativeQuery=true)
	List<tblAlarm> tblAlarmTop5();
	
	@Query(value="select count(*) from tblAlarm", nativeQuery=true)
	Integer tblAlarmListCount();
	
	@Query(value="select * from tblAlarm t where t.seq between :startRow and :endRow order by updateTime DESC", nativeQuery=true)
	List<tblAlarm> findPaging(@Param("startRow") Integer startRow,@Param("endRow") Integer endRow);
}
