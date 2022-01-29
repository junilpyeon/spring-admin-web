package com.ea.webclient.apievent;

import java.net.URI;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.messaging.converter.MappingJackson2MessageConverter;
import org.springframework.messaging.simp.SimpMessagingTemplate;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.support.ServletUriComponentsBuilder;

import com.ea.webclient.apievent.alarm.alarm;
import com.ea.webclient.apievent.alarm.alarmDAO;
import com.ea.webclient.apievent.alarm.alarms;
import com.ea.webclient.apievent.jsontest.Board;
import com.ea.webclient.apievent.jsontest.BoardFile;
import com.ea.webclient.apievent.ExtSystem.extSvr;
import com.ea.webclient.apievent.ExtSystem.ExtSystemApi;
import com.ea.webclient.apievent.ExtSystem.ExtSystemDAO;
import com.ea.webclient.apievent.ExtSystem.ExtSystems;
import com.ea.webclient.apievent.SysInfo.svrList;
import com.ea.webclient.apievent.SysInfo.SysInfo;
import com.ea.webclient.apievent.SysInfo.SysInfoDAO;
import com.ea.webclient.apievent.SysInfo.SysInfos;
import com.ea.webclient.apievent.SysProcess.modList;
import com.ea.webclient.apievent.SysProcess.SysProcess;
import com.ea.webclient.apievent.SysProcess.SysProcessDAO;
import com.ea.webclient.apievent.SysProcess.SysProcesss;
import com.ea.webclient.repository.tblAlarmDao;
import com.ea.webclient.repository.tblExtSystemDao;
import com.ea.webclient.repository.tblSysInfoDao;
import com.ea.webclient.repository.tblSysProcessDao;
import com.ea.webclient.apievent.ws.Greeting;

import java.util.ArrayList;
import java.util.Date;

@RestController
@RequestMapping(path = "/restful")
public class RestfulController 
{

	private SimpMessagingTemplate messagingTemplate;  
	@Autowired
	public tblAlarmDao tblAlarmDao;
	@Autowired
	public tblExtSystemDao tblExtSystemDao;
    @Autowired
    private ExtSystemDAO tblExtSystemDAO;
    @Autowired
    private SysInfoDAO tblSysInfoDAO;
    @Autowired
    private SysProcessDAO tblSysProcessDAO;
    @Autowired
    private alarmDAO alarmDAO;
    @Autowired
    private tblSysInfoDao tblSysInfoDao;
    @Autowired
    private tblSysProcessDao tblSysProcessDao;
    @Autowired
    public void setMessagingTemplate(SimpMessagingTemplate messagingTemplate) {
        this.messagingTemplate = messagingTemplate;
    } 
    
    @GetMapping(path="/tblExtSystem", produces = "application/json")
    public ExtSystems tblExtSystems()
    {
    	
    	
    	Greeting gr = new Greeting();
		gr.setContent("ddd");

        messagingTemplate.setMessageConverter(new MappingJackson2MessageConverter());
        messagingTemplate.convertAndSend("/wc/alarm", gr); 
        
        return tblExtSystemDAO.getAlltblExtSystems();
    }
     
    /*@PostMapping(path= "/tblExtSystem", consumes = "application/json", produces = "application/json")
    public ResponseEntity<Object> addtblExtSystem(@RequestBody tblExtSystem tblExtSystem) 
    {
    	System.out.println(tblExtSystem);
        Integer id = tblExtSystemDAO.getAlltblExtSystems().gettblExtSystemList().size() + 1;
        tblExtSystem.setseq(id);
        tblExtSystemDAO.addtblExtSystem(tblExtSystem);
         
        messagingTemplate.setMessageConverter(new MappingJackson2MessageConverter());
        messagingTemplate.convertAndSend("/wc/extSys", tblExtSystem); 
        
        URI location = ServletUriComponentsBuilder.fromCurrentRequest()
                                    .path("/{id}")
                                    .buildAndExpand(tblExtSystem.getSeq())
                                    .toUri();
         
        int extSysCode = tblExtSystem.getExtSysCode();
        int extSysIndex = tblExtSystem.getExtSysIndex();
        String extSysName = tblExtSystem.getExtSysName(); 
        String extSysIp = tblExtSystem.getExtSysIp(); 
        int extSysStatus = tblExtSystem.getExtSysStatus(); 
        int extSysBlock = tblExtSystem.getExtSysBlock(); 
        int extAlarmStatus = tblExtSystem.getExtAlarmStatus();
        String extDetailMsg = tblExtSystem.getExtDetailMsg(); 
        String updateTime = tblExtSystem.getUpdateTime(); 
        System.out.println(extSysName);
        System.out.println(extSysIp);
        tblExtSystemDao.deletetblExtSystem(extSysName);
        tblExtSystemDao.save(new com.bt.webclient.entity.tblExtSystem(extSysCode,  extSysIndex, extSysName,extSysIp, extSysStatus, extSysBlock, extAlarmStatus, extDetailMsg, updateTime)); 
         
        return ResponseEntity.created(location).build();
    }*/
    
    @PostMapping(path= "/tblExtSystem", consumes = "application/json", produces = "application/json")
    public ResponseEntity<Object> addtblExtSystem(@RequestBody extSvr ExtSvr) 
    {
    	System.out.println(ExtSvr);
    	ExtSystemApi tblExtSystem = new ExtSystemApi();
    	tblExtSystem = ExtSvr.getExtSvr(0);
    	
    	System.out.println(tblExtSystem);
        Integer id = tblExtSystemDAO.getAlltblExtSystems().gettblExtSystemList().size() + 1;
        tblExtSystem.setSeq(id);
        tblExtSystemDAO.addtblExtSystem(tblExtSystem);
         
        messagingTemplate.setMessageConverter(new MappingJackson2MessageConverter());
        messagingTemplate.convertAndSend("/wc/extSys", tblExtSystem); 
        
        URI location = ServletUriComponentsBuilder.fromCurrentRequest()
                                    .path("/{id}")
                                    .buildAndExpand(tblExtSystem.getSeq())
                                    .toUri();
        
        
        ArrayList<BoardFile> extDetailMsg = tblExtSystem.getExtDetailMsg();
        String extDetailMsgStr = extDetailMsg.toString( );
        
        int extSysCode = tblExtSystem.getExtSysCode();
        int extSysIndex = tblExtSystem.getExtSysIndex();
        String extSysName = tblExtSystem.getExtSysName(); 
        String extSysIp = tblExtSystem.getExtSysIp(); 
        int extSysStatus = tblExtSystem.getExtSysStatus(); 
        int extSysBlock = tblExtSystem.getExtSysBlock(); 
        int extAlarmStatus = tblExtSystem.getExtAlarmStatus();
        String updateTime = tblExtSystem.getUpdateTime(); 
        System.out.println(extSysName);
        System.out.println(extSysIp);
        tblExtSystemDao.deletetblExtSystem(extSysName);
        tblExtSystemDao.save(new com.ea.webclient.entity.tblExtSystem(extSysCode,  extSysIndex, extSysName,extSysIp, extSysStatus, extSysBlock, extAlarmStatus, extDetailMsgStr, updateTime));
         
        
         
        return ResponseEntity.created(location).build();
    }

	/* 시스템 REST */
    @GetMapping(path="/tblSysInfo", produces = "application/json")
    public SysInfos tblSysInfo()
    {
    	
    	
    	Greeting gr = new Greeting();
		gr.setContent("ddd");

        messagingTemplate.setMessageConverter(new MappingJackson2MessageConverter());
        messagingTemplate.convertAndSend("/wc/tblSysInfo", gr); 
        
        return tblSysInfoDAO.getAlltblSysInfos();
    }


    @PostMapping(path= "/tblSysInfo", consumes = "application/json", produces = "application/json")
    public ResponseEntity<Object> addtblSysInfo(@RequestBody svrList SvrList) 
    {
    	System.out.println(SvrList);
    	SysInfo tblSysInfo = new SysInfo();
    	tblSysInfo = SvrList.getSvrList(0);
    	System.out.println(tblSysInfo.getCpu());
    	
    	 URI location = ServletUriComponentsBuilder.fromCurrentRequest()
                 .path("/{id}")
                 .buildAndExpand(tblSysInfo.getSeq())
                 .toUri();
    	Integer id = tblExtSystemDAO.getAlltblExtSystems().gettblExtSystemList().size() + 1;
        tblSysInfo.setSeq(id);
        tblSysInfoDAO.addtblSysInfo(tblSysInfo);
        messagingTemplate.setMessageConverter(new MappingJackson2MessageConverter());
        messagingTemplate.convertAndSend("/wc/tblSysInfo", tblSysInfo); 
        
       
         
        int seq = tblSysInfo.getSeq();
        int asIdx = tblSysInfo.getAsIdx();
        int svrCode = tblSysInfo.getSvrCode();
        int svrIndex = tblSysInfo.getSvrIndex();
        String svrName = tblSysInfo.getSvrName();
        String svrIpV4 = tblSysInfo.getSvrIpV4();
        String svrIpV6 = tblSysInfo.getSvrIpV6();
        String cpu = tblSysInfo.getCpu();
        String mem = tblSysInfo.getMem();
        String disk = tblSysInfo.getDisk();
        String netRx = tblSysInfo.getNetRx();
        String netTx = tblSysInfo.getNetTx(); 
        int svrStatus = tblSysInfo.getSvrStatus(); 
        int svrBlock = tblSysInfo.getSvrBlock();
        int alarmStatus = tblSysInfo.getAlarmStatus();
        String updateTime = tblSysInfo.getUpdateTime(); 
        tblSysInfoDao.deletetblSysInfo(svrName);
        tblSysInfoDao.save(new com.ea.webclient.entity.tblSysInfo(seq, asIdx,  svrCode, svrIndex,svrName, svrIpV4, svrIpV6, cpu, mem, disk,netRx,netTx,svrStatus,svrBlock,alarmStatus,updateTime));
        
         
        return ResponseEntity.created(location).build();
    }
    
    /* 모듈 REST */
    @GetMapping(path="/tblSysProcess", produces = "application/json")
    public SysProcesss tblSysProcess()
    {
    	
    	
    	Greeting gr = new Greeting();
		gr.setContent("ddd");

        messagingTemplate.setMessageConverter(new MappingJackson2MessageConverter());
        messagingTemplate.convertAndSend("/wc/tblSysProcess", gr); 
        
        return tblSysProcessDAO.getAlltblSysProcesss();
    }
    
    
    @PostMapping(path= "/tblSysProcess", consumes = "application/json", produces = "application/json")
    public ResponseEntity<Object> addtblSysProcess(@RequestBody modList ModList) 
    {
    	SysProcess tblSysProcess = new SysProcess();
    	tblSysProcess = ModList.getModList(0);
    	
    	System.out.println(tblSysProcess);
        Integer id = tblExtSystemDAO.getAlltblExtSystems().gettblExtSystemList().size() + 1;
        tblSysProcess.setSeq(id);
        tblSysProcessDAO.addtblSysProcess(tblSysProcess);
        messagingTemplate.setMessageConverter(new MappingJackson2MessageConverter());
        messagingTemplate.convertAndSend("/wc/tblSysProcess", tblSysProcess); 
        
        URI location = ServletUriComponentsBuilder.fromCurrentRequest()
                                    .path("/{id}")
                                    .buildAndExpand(tblSysProcess.getSeq())
                                    .toUri();
         
        int asIdx = tblSysProcess.getAsIdx();
        int svrCode = tblSysProcess.getSvrCode();
        int svrIndex = tblSysProcess.getSvrIndex();
        int moduleIndex = tblSysProcess.getModuleIndex();
        int moduleCode = tblSysProcess.getModuleCode();
        String moduleName = tblSysProcess.getModuleName(); 
        int moduleStatus = tblSysProcess.getModuleStatus();
        int alarmStatus = tblSysProcess.getAlarmStatus();
        String updateTime = tblSysProcess.getUpdateTime(); 
        tblSysProcessDao.deletetblSysProcess(moduleName);
        tblSysProcessDao.save(new com.ea.webclient.entity.tblSysProcess(asIdx, svrCode,  svrIndex, moduleIndex,moduleCode, moduleName, moduleStatus, alarmStatus, updateTime));
        
         
        return ResponseEntity.created(location).build();
    }

	/* 알람 메시지 */
    @GetMapping(path="/alarm", produces = "application/json")
    public alarms alarm() 
    {
    	Greeting gr = new Greeting();
		gr.setContent("ddd");

        messagingTemplate.setMessageConverter(new MappingJackson2MessageConverter());
        messagingTemplate.convertAndSend("/wc/alarm", gr); 
        
        return alarmDAO.getAllalarms();
    }
     
    @PostMapping(path= "/alarm", consumes = "application/json", produces = "application/json")
    public ResponseEntity<Object> addalarm(@RequestBody alarm alarm) 
    {
    	System.out.println(alarmDAO.getAllalarms().getalarmList());
        Integer id = alarmDAO.getAllalarms().getalarmList().size() + 1;
        alarm.setSeq(id);
        alarmDAO.addalarm(alarm);
         
        messagingTemplate.setMessageConverter(new MappingJackson2MessageConverter());
        messagingTemplate.convertAndSend("/wc/alarm", alarm); 
        
        URI location = ServletUriComponentsBuilder.fromCurrentRequest()
                                    .path("/{id}")
                                    .buildAndExpand(alarm.getSeq())
                                    .toUri();
        int asIdx = alarm.getAsIdx();
        int svrCode = alarm.getSvrCode();
        int svrIndex = alarm.getSvrIndex();
        int moduleCode = alarm.getModuleCode();
        int moduleIndex = alarm.getModuleIndex();
        int alarmLv = alarm.getAlarmLv();
        String alarmMessage = alarm.getAlarmMessage(); 
        String updateTime = alarm.getUpdateTime(); 
        tblAlarmDao.save(new com.ea.webclient.entity.tblAlarm(asIdx, svrCode,  svrIndex, moduleCode,moduleIndex, alarmLv, alarmMessage, updateTime));
        System.out.println(alarmMessage); 
        if(moduleCode==0) {
        	tblSysInfoDao.updatetblSysInfo(alarmLv,svrCode,svrIndex); 
        }
        if(moduleCode!=0) {
			tblSysProcessDao.updatetblSysProcess(alarmLv,svrCode,svrIndex,moduleCode); 
        }
        if(svrCode>=800 && svrCode<900) {
        	tblExtSystemDao.updatetblExtSystem(alarmLv,svrCode); 
        }
        return ResponseEntity.created(location).build();
    }
    
    
    
    @RequestMapping(value="/jsonTest") 
    public @ResponseBody Object jsonTest() { 
    	Board board = new Board(); 
    	board.setSeq(1); 
    	board.setTitle("제목"); 
    	board.setContent("내요내용내용"); 
    	board.setRegdate(new Date()); 
    	ArrayList<BoardFile> filelist = new ArrayList<BoardFile>(); 
    	BoardFile boardFile = null; 
    	boardFile = new BoardFile(); 
    	boardFile.setFileSeq(1); 
    	boardFile.setFileName("파일명1"); 
    	boardFile.setFileSize(1000); 
    	filelist.add(boardFile); 
    	boardFile = new BoardFile(); 
    	boardFile.setFileSeq(2); 
    	boardFile.setFileName("파일명2"); 
    	boardFile.setFileSize(25645); 
    	filelist.add(boardFile); 
    	board.setFilelist(filelist); 
    	return board; }

    
}