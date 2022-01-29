package com.ea.webclient.apievent.SysInfo;

import java.util.ArrayList;
import java.util.List;
 
public class SysInfos
{
    private List<SysInfo> tblSysInfoList;
     
    public List<SysInfo> gettblSysInfoList() {
        if(tblSysInfoList == null) {
        	tblSysInfoList = new ArrayList<>();
        }
        return tblSysInfoList;
    }
  
    public void settblSysInfoList(List<SysInfo> tblSysInfoList) {
        this.tblSysInfoList = tblSysInfoList;
    }
}
