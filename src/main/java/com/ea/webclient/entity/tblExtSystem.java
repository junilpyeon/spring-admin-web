package com.ea.webclient.entity;

import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "tblExtSystem")
public class tblExtSystem {
	@Id
	@Basic(optional = false)
	@GeneratedValue(strategy=GenerationType.AUTO)
	private Integer seq;
	@Column(name="extSysCode")
	private Integer extSysCode;
	@Column(name="extSysIndex")
	private Integer extSysIndex;
	@Column(name="extSysName")
	private String extSysName;
	private String extSysIp;
	private Integer extSysStatus;
	private Integer extSysBlock;
	private Integer extAlarmStatus;
	private String extDetailMsg;
	private String updateTime;
	
	
	public tblExtSystem()
	{
	}
	
	public tblExtSystem(int extSysCode, int extSysIndex, String extSysName, String extSysIp, int extSysStatus, int extSysBlock, int extAlarmStatus, String extDetailMsg, String updateTime) {
		this.extSysCode = extSysCode;
		this.setextSysIndex(extSysIndex);
		this.setextSysName(extSysName);
		this.extSysIp = extSysIp;
		this.setextSysStatus(extSysStatus);
		this.setextSysBlock(extSysBlock);
		this.setextAlarmStatus(extAlarmStatus);
		this.extDetailMsg = extDetailMsg;
		this.setupdateTime(updateTime);
	}
	

	public Integer getextSysCode() {
		return extSysCode;
	}

	public void setextSysCode(Integer extSysCode) {
		this.extSysCode = extSysCode;
	}
	public Integer getextSysIndex() {
		return extSysIndex;
	}

	public void setextSysIndex(Integer extSysIndex) {
		this.extSysIndex = extSysIndex;
	}

	public Integer getextSysStatus() {
		return extSysStatus;
	}

	public void setextSysStatus(Integer extSysStatus) {
		this.extSysStatus = extSysStatus;
	}

	public Integer getextSysBlock() {
		return extSysBlock;
	}

	public void setextSysBlock(Integer extSysBlock) {
		this.extSysBlock = extSysBlock;
	}

	public Integer getextAlarmStatus() {
		return extAlarmStatus;
	}

	public void setextAlarmStatus(Integer extAlarmStatus) {
		this.extAlarmStatus = extAlarmStatus;
	}

	public String getextSysName() {
		return extSysName;
	}

	public void setextSysName(String extSysName) {
		this.extSysName = extSysName;
	}

	public String getupdateTime() {
		return updateTime;
	}

	public void setupdateTime(String updateTime) {
		this.updateTime = updateTime;
	}

	public String getextSysIp() {
		return extSysIp;
	}

	public void setextSysIp(String extSysIp) {
		this.extSysIp = extSysIp;
	}

	public String getextDetailMsg() {
		return extDetailMsg;
	}

	public void setextDetailMsg(String extDetailMsg) {
		this.extDetailMsg = extDetailMsg;
	}
	@Override
    public String toString() {
        return "tblExtSystem [extSysCode=" + extSysCode + ", extSysIndex=" + extSysIndex + "extSysName=" + extSysName + ", extSysIp=" + extSysIp + "extSysStatus=" + extSysStatus + "extSysBlock=" + extSysBlock + "extAlarmStatus=" + extAlarmStatus + "extDetailMsg=" + extDetailMsg +"updateTime=" + updateTime + "]";
    }
	
}


