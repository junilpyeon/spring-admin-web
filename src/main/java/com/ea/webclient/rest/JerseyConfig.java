package com.ea.webclient.rest;

import javax.ws.rs.ApplicationPath;

import org.glassfish.jersey.server.ResourceConfig;
import org.springframework.stereotype.Component;

import com.ea.webclient.controller.MyController;

@Component
@ApplicationPath("/MyRestService")
public class JerseyConfig extends ResourceConfig {
    /**
     * Register all the Controller classes in this method 
     * to be available for jersey framework
     */
    public JerseyConfig() {
        register(MyController.class);
    }

}
