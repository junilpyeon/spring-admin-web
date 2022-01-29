package com.ea.webclient.apievent.ExtSystem;

import java.util.ArrayList;

import com.ea.webclient.apievent.jsontest.BoardFile;
import lombok.Data;

@Data
public class ExtSystemApi {
	private Integer seq;
	private Integer extSysCode;
	private Integer extSysIndex;
	private String extSysName;
	private String extSysIp;
	private Integer extSysStatus;
	private Integer extSysBlock;
	private Integer extAlarmStatus;
	private ArrayList<BoardFile> extDetailMsg;
	private String updateTime;
	 
    public ExtSystemApi() {
 
    }
 
    public ExtSystemApi(int seq, int extSysCode, int extSysIndex, String extSysName, String extSysIp, int extSysStatus, int extSysBlock, int extAlarmStatus, ArrayList<BoardFile> extDetailMsg, String updateTime) {
        super();
        this.seq = seq;
        this.extSysCode = extSysCode;
		this.setExtSysIndex(extSysIndex);
		this.setExtSysName(extSysName);
		this.extSysIp = extSysIp;
		this.setExtSysStatus(extSysStatus);
		this.setExtSysBlock(extSysBlock);
		this.setExtAlarmStatus(extAlarmStatus);
		this.extDetailMsg = extDetailMsg;
		this.setUpdateTime(updateTime);
    }
 
    @Override
    public String toString() {
        return "tblExtSystem [extSysCode=" + extSysCode + ", extSysIndex=" + extSysIndex + "extSysName=" + extSysName + ", extSysIp=" + extSysIp + "extSysStatus=" + extSysStatus + "extSysBlock=" + extSysBlock + "extAlarmStatus=" + extAlarmStatus + "extDetailMsg=" + extDetailMsg +"updateTime=" + updateTime + "]";
    }

}
