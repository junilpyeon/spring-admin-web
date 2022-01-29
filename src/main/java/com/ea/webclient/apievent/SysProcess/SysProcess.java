package com.ea.webclient.apievent.SysProcess;

import lombok.Data;

@Data
public class SysProcess {
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
	 
    public SysProcess() {
 
    }
 
    public SysProcess(int asIdx, int svrCode, int svrIndex, int moduleIndex, int moduleCode, String moduleName, int moduleStatus, int alarmStatus, String updateTime) {
		this.asIdx = asIdx;
		this.svrCode = svrCode;
		this.svrIndex = svrIndex;
		this.setModuleIndex(moduleIndex);
		this.setModuleCode(moduleCode);
		this.setModuleName(moduleName);
		this.setModuleStatus(moduleStatus);
		this.setAlarmStatus(alarmStatus);
		this.updateTime = updateTime;
	}

	@Override
    public String toString() {
        return "tblSysInfo [asIdx=" + asIdx + ", svrCode=" + svrCode + "svrIndex=" + svrIndex + ", moduleIndex=" + moduleIndex + "moduleCode=" + moduleCode + "moduleName=" + moduleName + "moduleStatus=" + moduleStatus + "alarmStatus=" + alarmStatus +"updateTime=" + updateTime +"]";
    }


	

	
}
