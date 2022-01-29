package com.ea.webclient.apievent.ExtSystem;

import org.springframework.stereotype.Repository;


@Repository
public class ExtSystemDAO
{
    private static ExtSystems list = new ExtSystems();
     
    static
    {

    }
     
    public ExtSystems getAlltblExtSystems()
    {
        return list;
    }
     
    public void addtblExtSystem(ExtSystemApi tblExtSystemApi) {
        list.gettblExtSystemList().add(tblExtSystemApi);
    }

	
}
