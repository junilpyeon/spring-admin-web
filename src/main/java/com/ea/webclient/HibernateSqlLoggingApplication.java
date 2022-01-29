package com.ea.webclient;

import javax.annotation.PostConstruct;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

import com.ea.webclient.entity.tblExtSystem;
import com.ea.webclient.entity.tblSysInfo;
import com.ea.webclient.entity.tblSysProcess;
import com.ea.webclient.entity.tblUser;
import com.ea.webclient.repository.tblExtSystemDao;
import com.ea.webclient.repository.tblSysInfoDao;
import com.ea.webclient.repository.tblSysProcessDao;
import com.ea.webclient.repository.tblUserDao;

@SpringBootApplication
public class HibernateSqlLoggingApplication {
	public static void main(String[] args) {
		SpringApplication.run(HibernateSqlLoggingApplication.class, args);
	}
	@Autowired
    private tblUserDao tblUserDao;
	
	@Autowired
    private tblSysProcessDao tblSysProcessDao;
	
	@Autowired
    private tblSysInfoDao tblSysInfoDao;
	
	@Autowired
    private tblExtSystemDao tblExtSystemDao;
	
	
	@PostConstruct
    public void loadData() {
		tblUserDao.save(new tblUser("user","$2y$12$w2Au2nKPUL9yl73HBXTgpO9pdAPpy.3GYEigqzRmIcc6vhdr/Gz.C", "user", "010-9539-2344", "ADMIN"));

		tblSysInfoDao.save(new tblSysInfo(0,0, 100, 0, "SI_0", "127.0.0.1", "127.0.0.1", "0", "0", "22", "0","0", 1, 0,0,"20191113084200"));
		tblSysInfoDao.save(new tblSysInfo(0,0, 100, 1, "SI_1", "127.0.0.1", "127.0.0.1", "0", "0", "23", "0","0", 1, 0,0,"20191113084200"));
		tblSysInfoDao.save(new tblSysInfo(0,0, 100, 2, "SI_2", "127.0.0.1", "127.0.0.1", "0", "0", "23", "0","0", 1, 0,0,"20191113084200"));
		tblSysInfoDao.save(new tblSysInfo(0,0, 200, 0, "SM_0", "127.0.0.1", "127.0.0.1", "0", "0", "0", "0","0", 1, 0,0,"20191113084200"));
		tblSysInfoDao.save(new tblSysInfo(0,0, 200, 1, "SM_1", "127.0.0.1", "127.0.0.1", "0","0", "0", "0","0", 1, 0,0,"20191113084200"));
		tblSysInfoDao.save(new tblSysInfo(0,0, 300, 0, "DBA_A", "127.0.0.1", "127.0.0.1", "0", "10", "33", "0","0", 1, 0,0,"20191113084200"));
		tblSysInfoDao.save(new tblSysInfo(0,0, 300, 1, "DBA_B", "127.0.0.1", "127.0.0.1", "0", "8", "53", "0","0", 2, 0,0,"20191113084200"));
		tblSysInfoDao.save(new tblSysInfo(0,0, 400, 0, "Manage_0", "127.0.0.1", "127.0.0.1", "0", "0", "0", "0","0", 1, 0,0,"20191113084200"));
		tblSysInfoDao.save(new tblSysInfo(0,0, 400, 1, "Manage_1", "127.0.0.1", "127.0.0.1", "0", "0", "0", "0","0", 1, 0,0,"20191113084200"));
		tblSysInfoDao.save(new tblSysInfo(0,0, 900, 0, "ServerManage_A", "127.0.0.1", "127.0.0.1", "0", "0","11", "0","0", 1, 0,0,"20191113084200"));
		tblSysInfoDao.save(new tblSysInfo(0,0, 900, 1, "ServerManage_B", "127.0.0.1", "127.0.0.1", "0", "0", "11", "0","0", 0, 0,0,"20191113084200"));

    }
	
	@PostConstruct
    public void loadData1() {


		tblSysProcessDao.save(new tblSysProcess(0, 100, 0,1, 1, "APPServer_1", 1, 1,"20191113084200"));
		tblSysProcessDao.save(new tblSysProcess(0, 100, 1,1, 1, "APPServer_1", 1, 1,"20191113084200"));
		tblSysProcessDao.save(new tblSysProcess(0, 100, 2,1, 1, "APPServer_1", 1, 1,"20191113084200"));
		tblSysProcessDao.save(new tblSysProcess(0, 200, 0,1, 1, "Kafka_1", 1, 0,"20191113084200"));
		tblSysProcessDao.save(new tblSysProcess(0, 200, 1,1, 1, "Kafka_1", 1, 0,"20191113084200"));
		tblSysProcessDao.save(new tblSysProcess(0, 300, 0,1, 5, "MemoryDB_1", 1, 0,"20191113084200"));
		tblSysProcessDao.save(new tblSysProcess(0, 300, 1,1, 5, "MemoryDB_1", 1, 0,"20191113084200"));
		tblSysProcessDao.save(new tblSysProcess(0, 400, 0,1, 9, "CANIF1", 1, 0,"20191113084200"));
		tblSysProcessDao.save(new tblSysProcess(0, 400, 1,1, 9, "CANIF1", 1, 0,"20191113084200"));
		tblSysProcessDao.save(new tblSysProcess(0, 900, 0,1, 9, "Manager_1", 1, 1,"20191113084200"));
		tblSysProcessDao.save(new tblSysProcess(0, 900, 1,1, 9, "Manager_1", 1, 0,"20191113084200"));

    }
	
	
	  @PostConstruct 
	  public void loadData2() { 
		  tblExtSystemDao.save(new tblExtSystem(0,  0, "WEBServer","127.0.0.1:5060", 1, 0, 0, "[a=0a=checkfula=추가정보1, a=0a=checkfula=추가정보2]", "20191113084200"));
		  

		  
	  }
	  
	
}
