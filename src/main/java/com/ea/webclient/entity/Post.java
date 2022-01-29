package com.ea.webclient.entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "post")
public class Post {
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private Integer id;
	private String subject;
	private String content;
	
	public Post()
	{
	}
	
	public Post(int id, String subject, String content) {
		this.id = id;
	    this.subject = subject;
	    this.content = content;
	}
	
	 public Integer getId()
	    {  
	        return id;
	    }

	    public void setId(Integer id)
	    {
	        this.id = id;
	    }

	    public String getSubject()
	    {
	        return subject;
	    }

	    public void setSubject(String subject)
	    {
	        this.subject = subject;
	    }
	    public String getContent()
	    {
	        return content;
	    }

	    public void setContent(String content)
	    {
	        this.content = content;
	    }
	
}


