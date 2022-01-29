package com.ea.webclient.controller;
 
import org.springframework.messaging.handler.annotation.MessageMapping;
import org.springframework.messaging.handler.annotation.SendTo;
import org.springframework.stereotype.Controller; 
import org.springframework.web.util.HtmlUtils;

import com.ea.webclient.apievent.ws.Greeting;
import com.ea.webclient.apievent.ws.HelloMessage;
@Controller
public class webSocketController { 
	@MessageMapping("/sendTest")
	@SendTo("/wc/alarm")
	public Greeting greeting(HelloMessage message) throws Exception {
	    Thread.sleep(1000); // simulated delay
	    return new Greeting("Hello, " + HtmlUtils.htmlEscape(message.getName()) + "!");
	}
}
 