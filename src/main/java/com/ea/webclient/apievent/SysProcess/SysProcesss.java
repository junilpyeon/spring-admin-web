package com.ea.webclient.apievent.SysProcess;

import java.util.ArrayList;
import java.util.List;
 
public class SysProcesss
{
    private List<SysProcess> tblSysProcessList;
     
    public List<SysProcess> gettblSysProcessList() {
        if(tblSysProcessList == null) {
        	tblSysProcessList = new ArrayList<>();
        }
        return tblSysProcessList;
    }
  
    public void settblSysProcessList(List<SysProcess> tblSysProcessList) {
        this.tblSysProcessList = tblSysProcessList;
    }
}
