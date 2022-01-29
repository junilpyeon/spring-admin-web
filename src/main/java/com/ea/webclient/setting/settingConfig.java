package com.ea.webclient.setting;

import java.math.BigInteger;
import java.security.MessageDigest;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.List;
import java.util.Properties;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import com.ea.webclient.apievent.alarm.alarm;
import com.ea.webclient.apievent.alarm.alarmDAO;
import com.ea.webclient.repository.tblAlarmDao;
import com.ea.webclient.repository.tblUserDao;

@Controller
public class settingConfig {
	@Autowired
	public tblAlarmDao tblAlarmDao;
	
	@Autowired
	public tblUserDao tblUserDao;
	
	public void errorCountDaySet(String errorCountDay) {
		String errorCountDaySet = errorCountDay;
		errorDelete(errorCountDaySet);

	}
	
	public void errorDelete(String errorCountDaySet) {
		List<alarm> error = alarmDAO.getAllalarms().getalarmList(); 
		//입력한 에러일수 int 변경
		if(errorCountDaySet == null) {errorCountDaySet = "30"; };
		int errorCountDaySetCompare =  Integer.parseInt(errorCountDaySet);
		
		//오늘 날짜 -에러일수
		Calendar cal = new GregorianCalendar();
		cal.setTime(new Date());
		cal.add(Calendar.DATE, -errorCountDaySetCompare);
		SimpleDateFormat format = new SimpleDateFormat ( "yyyyMMdd");
		Date time = new Date();
		String time1 = format.format(cal.getTime());	
		System.out.println("time1:"+time1);
		Integer seq = tblAlarmDao.findMaxDate(time1);
		if(seq == null){
			for(int i=errorCountDaySetCompare; i >= 0; i--) {
				System.out.println("i:"+i);
				cal.add(Calendar.DATE, -i);
				time1 = format.format(cal.getTime());
				seq = tblAlarmDao.findMaxDate(time1);
				tblAlarmDao.deletetblAlarm(seq);
			}
		}
		tblAlarmDao.deletetblAlarm(seq);
		
		
		/*int time1Compare =  Integer.parseInt(time1);
		System.out.println("time1:"+time1);
		String time2 = "20191113084200";
		int deleteNum = alarmDAO.getAllalarms().getalarmList().indexOf(time2);
		System.out.println("deleteNum:"+deleteNum);
		for(int i=0;i<=deleteNum;i++) {
			alarmDAO.getAllalarms().getalarmList().remove(i);
		}*/
		
		}
	public int altibaseConn(String username,String password) throws ClassNotFoundException, SQLException {
		username="parkng5";
		password="tjsvndrl3#";
		try {
			  MessageDigest digest = MessageDigest.getInstance("SHA-256");
			  digest.reset();
			  digest.update(password.getBytes());
			  password = String.format("%064x", new BigInteger(1, digest.digest()));
		} catch (Exception e) {
		    e.printStackTrace();
		}
	    
			Class.forName("Altibase.jdbc.driver.AltibaseDriver");
		    Properties prop = new Properties();
		    prop.put("user", "asuser");
		    prop.put("password", "asuser");
		    String url = "jdbc:Altibase://100.100.107.106:20300/mydb";
		    String sql = "SELECT count(*) FROM  tbl_operator WHERE OP_ID='"+username+"' and OP_PWD='"+password+"'";
		    Connection conn = null;
		    Statement stmt= null;
		    ResultSet rs = null;
					
		    try {
		    	conn = DriverManager.getConnection(url, prop);
		    	stmt = conn.createStatement();
		    	rs = stmt.executeQuery(sql);
		    	while(rs.next()) {
		    		return rs.getInt(1);
		    	}
		    	}catch(Exception se) {
		    		System.out.println(se.getMessage());
		    	} finally {
		    	 rs.close();
		    	 stmt.close();
		    	 conn.close();
		    	}
			return 0;
		}
	
public ResultSet altibaseData(String username,String password) throws ClassNotFoundException, SQLException {
		
		try {
			  MessageDigest digest = MessageDigest.getInstance("SHA-256");
			  digest.reset();
			  digest.update(password.getBytes());
			  password = String.format("%064x", new BigInteger(1, digest.digest()));
		} catch (Exception e) {
		    e.printStackTrace();
		}
	    
			Class.forName("Altibase.jdbc.driver.AltibaseDriver");
		    Properties prop = new Properties();
		    prop.put("user", "asuser");
		    prop.put("password", "asuser");
		    String url = "jdbc:Altibase://100.100.107.106:20300/mydb";
		    String sql = "SELECT * FROM  tbl_operator WHERE OP_ID='"+username+"' and OP_PWD='"+password+"'";
		    Connection conn = null;
		    Statement stmt= null;
		    ResultSet rs = null;
					
		    try {
		    	conn = DriverManager.getConnection(url, prop);
		    	stmt = conn.createStatement();
		    	rs = stmt.executeQuery(sql);
		    	while(rs.next()) {
		    		return rs;
		    	}
		    	}catch(Exception se) {
		    		System.out.println(se.getMessage());
		    	} finally {
		    	}
			return null;
		}
					
	}
	
	




