package com.ea.webclient.apievent.SysInfo;

import lombok.Data;

@Data
public class SysInfo {
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
	 
    public SysInfo() {
 
    }
 
    public SysInfo(int seq, int asIdx, int svrCode, int svrIndex, String svrName, String svrIpV4, String svrIpV6, String cpu, String mem, String disk, String netRx, String netTx, int svrStatus, int svrBlock, int alarmStatus, String updateTime) {
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

	@Override
    public String toString() {
        return "tblSysInfo [svrIndex=" + svrIndex + ", asIdx=" + asIdx + "svrCode=" + svrCode + ", svrName=" + svrName + "svrIpV4=" + svrIpV4 + "svrIpV6=" + svrIpV6 + "cpu=" + cpu + "mem=" + mem +"disk=" + disk +"netRx=" + netRx +"netTx=" + netTx +"svrStatus=" + svrStatus +"svrBlock=" + svrBlock +"alarmStatus=" + alarmStatus +"updateTime=" + updateTime + "]";
    }

}
