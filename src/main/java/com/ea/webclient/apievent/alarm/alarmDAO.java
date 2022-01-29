package com.ea.webclient.apievent.alarm;

import org.springframework.stereotype.Repository;


@Repository
public class alarmDAO 
{
    private static alarms list = new alarms();
     
    static
    {
        //list.gettblSysInfoList().add(new tblSysInfo(1, 0,  0, "MEF I/F","127.0.0.1:5060", 0, 0, 0, "test", "20191113084200"));
    }
    
    public void addalarm(alarm alarm) {
        list.getalarmList().add(alarm);
    } 
    
    public static alarms getAllalarms() 
    {
        return list;
    }
     
   
	
}
