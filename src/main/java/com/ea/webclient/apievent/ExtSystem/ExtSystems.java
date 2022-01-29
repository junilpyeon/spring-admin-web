package com.ea.webclient.apievent.ExtSystem;

import java.util.ArrayList;
import java.util.List;
 
public class ExtSystems
{
    private List<ExtSystemApi> tblExtSystemList;
     
    public List<ExtSystemApi> gettblExtSystemList() {
        if(tblExtSystemList == null) {
        	tblExtSystemList = new ArrayList<>();
        }
        return tblExtSystemList;
    }
  
    public void settblExtSystemList(List<ExtSystemApi> tblExtSystemList) {
        this.tblExtSystemList = tblExtSystemList;
    }
}
