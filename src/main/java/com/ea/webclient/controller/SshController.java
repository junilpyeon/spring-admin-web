package com.ea.webclient.controller;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.jcraft.jsch.Channel;
import com.jcraft.jsch.ChannelExec;
import com.jcraft.jsch.JSch;
import com.jcraft.jsch.Session;

@Controller
public class SshController {
	
	@RequestMapping(value="/shutdown")
	public String shutdown(HttpServletRequest request, HttpServletResponse response ,Model model){
		try {
			String viewCode = request.getParameter("viewCode");
			System.out.println("viewCode : " + viewCode);
			String hostIp = hostIpSearch(viewCode);
			int hostPort = hostPortSearch(viewCode);
			stopTomcat(hostIp, hostPort);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	return "redirect:/";
	}
	
	@RequestMapping(value="/startup")
	public String startup(HttpServletRequest request, HttpServletResponse response ,Model model){
		try {
			String viewCode = request.getParameter("viewCode");
			System.out.println("viewCode : " + viewCode);
			String hostIp = hostIpSearch(viewCode);
			int hostPort = hostPortSearch(viewCode);
			startTomcat(hostIp, hostPort);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	return "redirect:/";
	}
	
	private String hostIpSearch(String viewCode) {
		String hostIp = "127.0.0.1";
		if(viewCode=="100.1"){ 
			hostIp = "127.0.0.1";}
		
		return hostIp;
	}
	private int hostPortSearch(String viewCode) {
		int hostPort = 8080;
		if(viewCode=="100.1"){ 
			hostPort = 8080;}
		
		return hostPort;
	}

	private void connect(String hostIp,int hostPort) throws Exception {
	    String host = hostIp;
	    String username = "root";
		int port = hostPort;
		String password = "qmflwlxpr12#$";
		
		
		System.out.println("==> Connecting to" + host);
	    Session session = null;
	 
	    // 1. JSch 객체를 생성한다.
	    JSch jsch = new JSch();
	 
	    
		// 2. 세션 객체를 생성한다 (사용자 이름, 접속할 호스트, 포트를 인자로 준다.)
	    session = jsch.getSession(username, host, port);
	 
	    
		// 3. 패스워드를 설정한다.
	    session.setPassword(password);
	 
	    // 4. 세션과 관련된 정보를 설정한다.
	    java.util.Properties config = new java.util.Properties();
	    // 4-1. 호스트 정보를 검사하지 않는다.
	    config.put("StrictHostKeyChecking", "no");
	    session.setConfig(config);
	 
	    // 5. 접속한다.
	    session.connect();
	 
	    // 6. sftp 채널을 연다.
	    Channel channel = session.openChannel("exec");
	 
	    // 8. 채널을 SSH용 채널 객체로 캐스팅한다
	    ChannelExec channelExec = (ChannelExec) channel;
	 
	    System.out.println("==> Connected to" + host);
	 
	}
	public void startTomcat(String hostIp,int hostPort) throws Exception {
	    // 앞서 만든 접속 메서드를 사용해 접속한다.
		System.out.println("starttest");
	    connect(hostIp, hostPort);
	 
	    String host = null;
		System.out.println("==> start Tomcat @" + host);
	    ChannelExec channelExec = null;
		String catalinaHome = null;
		// 실행할 명령어를 설정한다.
	    channelExec.setCommand(catalinaHome + "/bin/startup.sh");
	 
	    // 명령어를 실행한다.
	    channelExec.connect();
	 
	    System.out.println("==> Started Tomcat @" + host);
	}
	
	public void stopTomcat(String hostIp,int hostPort) throws Exception {
	    // 앞서 만든 접속 메서드를 사용해 접속한다.
		System.out.println("stoptest");
	    connect(hostIp, hostPort);
	 
	    String host = null;
		System.out.println("==> Stopping Tomcat @" + host);
	    ChannelExec channelExec = null;
		String catalinaHome = null;
		// 실행할 명령어를 설정한다.
	    channelExec.setCommand(catalinaHome + "/bin/shutdown.sh");
	 
	    // 명령어를 실행한다.
	    channelExec.connect();
	 
	    System.out.println("==> Stopped Tomcat @" + host);
	}
}
