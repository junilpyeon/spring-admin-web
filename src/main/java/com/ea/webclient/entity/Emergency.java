package com.ea.webclient.entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "emergency")
public class Emergency
{
    @Id 
    @GeneratedValue(strategy=GenerationType.AUTO)
    private Integer seq;
    private Integer lv;
    private String cont;
    private String color;
    private String location;
    private String date;
 
    public Emergency()
    {
    }

    public Emergency(Integer seq, Integer lv, String cont,String color,String location,String date)
    {
    	this.seq = seq;
        this.lv = lv;
        this.cont = cont;
        this.cont = color;
        this.cont = location;
        this.cont = date;
    }

    public Integer getseq()
    {  
        return seq;
    }

    public void setseq(Integer seq)
    {
        this.seq = seq;
    }
    
    public Integer getlv()
    {  
        return lv;
    }

    public void setLv(Integer lv)
    {
        this.lv = lv;
    }

    public String getCont()
    {
        return cont;
    }

    public void setCont(String cont)
    {
        this.cont = cont;
    }
    public String getColor()
    {
        return color;
    }

    public void setColor(String color)
    {
        this.color = color;
    }
    public String getLocation()
    {
        return location;
    }

    public void setLocation(String location)
    {
        this.location = location;
    }
    public String getDate()
    {
        return date;
    }

    public void setDate(String date)
    {
        this.date = date;
    }
}