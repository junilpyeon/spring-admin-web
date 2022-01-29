package com.ea.webclient.apievent.alarm;

import lombok.Data;

@Data
public class alarm {
	private Integer seq;
	private Integer asIdx;
	private Integer svrCode;
	private Integer svrIndex;
	private Integer moduleCode;
	private Integer moduleIndex;
	private Integer alarmLv;
	private String alarmMessage;
	private String updateTime;
	 
    public alarm() {
 
    }
 
    public alarm(int asIdx, int svrCode, int svrIndex,int moduleCode, int moduleIndex  , int alarmLv, String alarmMessage, String updateTime) {
		this.asIdx=asIdx;
		this.svrCode=svrCode;
		this.svrIndex=svrIndex;
		this.moduleCode=moduleCode;
		this.moduleIndex=moduleIndex;
		this.alarmLv =alarmLv;
		this.alarmMessage =alarmMessage;
		this.updateTime =updateTime;
	}
	
	@Override
    public String toString() {
        return "alarm [asIdx=" + asIdx + ",svrCode=" + svrCode + ",svrIndex=" + svrIndex + ",moduleCode=" + moduleCode + ", moduleIndex=" + moduleIndex + ",alarmLv=" +alarmLv+ ",alarmMessage=" + alarmMessage + ", updateTime=" + updateTime +"]";
    }

}
