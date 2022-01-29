package com.ea.webclient.controller;

import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.QueryParam;

import org.springframework.stereotype.Component;

@Path("/Welcome")
@Component
public class MyController {
	 @GET
	    public String welcomeUser(@QueryParam("user") String user){
	        return "Welcome "+user;
	    }  
}
