package com.ea.webclient.apievent.SysProcess;

import org.springframework.stereotype.Repository;


 
@Repository
public class SysProcessDAO
{
    private static SysProcesss list = new SysProcesss();
     
    static
    {

    }
     
    public SysProcesss getAlltblSysProcesss()
    {
        return list;
    }
     
    public void addtblSysProcess(SysProcess tblSysProcess) {
        list.gettblSysProcessList().add(tblSysProcess);
    }


	
}
