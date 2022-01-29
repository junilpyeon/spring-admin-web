package com.ea.webclient.entity;

import javax.persistence.Basic;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;

@Entity
@SequenceGenerator(
		  name = "ALARM_SEQ_GENERATOR", 
		  sequenceName = "ALARM_SEQ",  
		  initialValue = 1,
		  allocationSize = 1)
@Table(name = "tblAlarm")
public class tblAlarm {
	@Id
	@Basic(optional = false)
	@GeneratedValue(strategy=GenerationType.SEQUENCE,generator="ALARM_SEQ_GENERATOR")
	private Integer seq;
    private Integer asIdx;
    private Integer svrCode;
    private Integer svrIndex;
    private Integer moduleCode;
    private Integer moduleIndex;
	private Integer alarmLv;
	private String alarmMessage;
	private String updateTime;
	
	
	public tblAlarm()
	{
	}
	
	public tblAlarm(int asIdx, int svrCode, int svrIndex,int moduleCode, int moduleIndex  , int alarmLv, String alarmMessage, String updateTime) {
		this.asIdx=asIdx;
		this.svrCode=svrCode;
		this.svrIndex=svrIndex;
		this.moduleCode=moduleCode;
		this.moduleIndex=moduleIndex;
		this.alarmLv =alarmLv;
		this.alarmMessage =alarmMessage;
		this.updateTime =updateTime;
	}
	
	//Getters and setters
		public Integer getseq() {
			return seq;
		}

		public void setseq(Integer seq) {
			this.seq = seq;
		}

		public Integer getasIdx() {
			return asIdx;
		}

		public void setasIdx(Integer asIdx) {
			this.asIdx = asIdx;
		}

		public Integer getsvrCode() {
			return svrCode;
		}

		public void setsvrCode(Integer svrCode) {
			this.svrCode = svrCode;
		}

		public Integer getsvrIndex() {
			return svrIndex;
		}

		public void setsvrIndex(Integer svrIndex) {
			this.svrIndex = svrIndex;
		}

		public Integer getmoduleCode() {
			return moduleCode;
		}

		public void setmoduleCode(Integer moduleCode) {
			this.moduleCode = moduleCode;
		}

		public Integer getmoduleIndex() {
			return moduleIndex;
		}

		public void setmoduleIndex(Integer moduleIndex) {
			this.moduleIndex = moduleIndex;
		}	
		
		public Integer getalarmLv() {
			return alarmLv;
		}

		public void setalarmLv(Integer alarmLv) {
			this.alarmLv = alarmLv;
		}

		public String getalarmMessage() {
			return alarmMessage;
		}

		public void setalarmMessage(String alarmMessage) {
			this.alarmMessage = alarmMessage;
		}

		public String getupdateTime() {
			return updateTime;
		}

		public void setupdateTime(String updateTime) {
			this.updateTime = updateTime;
		}
	
	@Override
	public String toString() {
        return "tblAlarm [asIdx=" + asIdx + ",svrCode=" + svrCode + ",svrIndex=" + svrIndex + ",moduleCode=" + moduleCode + ", moduleIndex=" + moduleIndex + ",alarmLv=" +alarmLv+ ",alarmMessage=" + alarmMessage + ", updateTime=" + updateTime +"]";
    }
	
}


