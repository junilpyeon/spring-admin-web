package com.ea.webclient.apievent.SysInfo;

import org.springframework.stereotype.Repository;


@Repository
public class SysInfoDAO
{
    private static SysInfos list = new SysInfos();
     
    static
    {
        //list.gettblSysInfoList().add(new tblSysInfo(1, 0,  0, "MEF I/F","127.0.0.1:5060", 0, 0, 0, "test", "20191113084200"));
    }
     
    public SysInfos getAlltblSysInfos()
    {
        return list;
    }
     
    public void addtblSysInfo(SysInfo tblSysInfo) {
        list.gettblSysInfoList().add(tblSysInfo);
    }

	
}
