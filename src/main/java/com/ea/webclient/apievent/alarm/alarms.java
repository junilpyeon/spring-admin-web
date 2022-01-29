package com.ea.webclient.apievent.alarm;

import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
 
public class alarms 
{
    private List<alarm> alarmList;
     
    public List<alarm> getalarmList() {
        if(alarmList == null) {
        	alarmList = new ArrayList<>();
        }
        return alarmList;
    }
  
    public void setalarmList(List<alarm> alarmList) {
        this.alarmList = alarmList;
    }

}
