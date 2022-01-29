package com.ea.webclient.entity;

import lombok.*;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Getter
@Setter
@AllArgsConstructor
@Entity
@Table(name = "tblSysInfo")
public class tblSysInfo {
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private Integer seq;
	private Integer svrIndex;
	private Integer asIdx;
	private Integer svrCode;
	private String svrName;
	private String svrIpV4;
	private String svrIpV6;
	private String cpu;
	private String mem;
	private String disk;
	private String netRx;
	private String netTx;
	private Integer svrStatus;
	private Integer svrBlock;
	private Integer alarmStatus;
	private String updateTime;
	
	public tblSysInfo()
	{
	}
	
	public tblSysInfo(int seq, int asIdx, int svrCode, int svrIndex, String svrName, String svrIpV4, String svrIpV6, String cpu, String mem, String disk, String netRx, String netTx, int svrStatus, int svrBlock, int alarmStatus, String updateTime) {
		this.asIdx = asIdx;
		this.svrCode = svrCode;
		this.svrIndex = svrIndex;
		this.svrName = svrName;
		this.svrIpV4 = svrIpV4;
		this.svrIpV6 = svrIpV6;
		this.cpu = cpu;
		this.mem = mem;
		this.disk = disk;
		this.setnetRx(netRx);
		this.setnetTx(netTx);
		this.svrStatus = svrStatus;
		this.svrBlock = svrBlock;
		this.setalarmStatus(alarmStatus);
		this.updateTime = updateTime;
	}

	public void setnetRx(String netRx) {
		this.netRx = netRx;
	}

	public void setnetTx(String netTx) {
		this.netTx = netTx;
	}

	public void setalarmStatus(Integer alarmStatus) {
		this.alarmStatus = alarmStatus;
	}
	

		

	
}


