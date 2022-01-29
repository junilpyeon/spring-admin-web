package com.ea.webclient.entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity 
public class Member {
  
  @Id
  @GeneratedValue(strategy = GenerationType.AUTO) 
  private Long id; 
  private String name; 
  private String addr; 
  
  public Member() { } 
  
  public Member(String name, String addr) { this.name = name; this.addr = addr; } 
}
 