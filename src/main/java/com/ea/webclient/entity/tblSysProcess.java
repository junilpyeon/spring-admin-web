package com.ea.webclient.entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "tblSysProcess")
public class tblSysProcess {
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private Integer seq;
	private Integer asIdx;
	private Integer svrCode;
	private Integer svrIndex;
	private Integer moduleIndex;
	private Integer moduleCode;
	private String moduleName;
	private Integer moduleStatus;
	private Integer alarmStatus;
	private String updateTime;
	
	public tblSysProcess()
	{
	}
	
	public tblSysProcess(int asIdx, int svrCode, int svrIndex, int moduleIndex, int moduleCode, String moduleName, int moduleStatus, int alarmStatus, String updateTime) {
		this.asIdx = asIdx;
		this.svrCode = svrCode;
		this.svrIndex = svrIndex;
		this.setmoduleIndex(moduleIndex);
		this.setmoduleCode(moduleCode);
		this.setmoduleName(moduleName);
		this.setmoduleStatus(moduleStatus);
		this.setalarmStatus(alarmStatus);
		this.updateTime = updateTime;
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

		public String getmoduleName() {
			return moduleName;
		}

		public void setmoduleName(String moduleName) {
			this.moduleName = moduleName;
		}

		public Integer getmoduleStatus() {
			return moduleStatus;
		}

		public void setmoduleStatus(Integer moduleStatus) {
			this.moduleStatus = moduleStatus;
		}

		public Integer getalarmStatus() {
			return alarmStatus;
		}

		public void setalarmStatus(Integer alarmStatus) {
			this.alarmStatus = alarmStatus;
		}

		public String getupdateTime() {
			return updateTime;
		}

		public void setupdateTime(String updateTime) {
			this.updateTime = updateTime;
		}

		public Integer getmoduleIndex() {
			return moduleIndex;
		}

		public void setmoduleIndex(Integer moduleIndex) {
			this.moduleIndex = moduleIndex;
		}

		

		

	
}


