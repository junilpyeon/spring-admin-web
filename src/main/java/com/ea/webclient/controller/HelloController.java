package com.ea.webclient.controller;

import java.io.IOException;
import java.sql.ResultSet;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.ea.webclient.setting.settingConfig;
import com.ea.webclient.entity.IdxOnly;
import com.ea.webclient.entity.tblAlarm;
import com.ea.webclient.entity.tblExtSystem;
import com.ea.webclient.entity.tblSysInfo;
import com.ea.webclient.entity.tblSysProcess;
import com.ea.webclient.paging.BoardSearchVO;
import com.ea.webclient.repository.EmergencyRepository;
import com.ea.webclient.repository.MemberRepository;
import com.ea.webclient.repository.PostDao;
import com.ea.webclient.repository.tblAlarmDao;
import com.ea.webclient.repository.tblExtSystemDao;
import com.ea.webclient.repository.tblSysInfoDao;
import com.ea.webclient.repository.tblSysProcessDao;

@Controller
public class HelloController {
	@Autowired
	public settingConfig settingConfig;
	@Autowired
	public EmergencyRepository EmergencyRepo;
	@Autowired
	public MemberRepository memberRepo;
	@Autowired
	public PostDao postDao;
	@Autowired
	public tblSysProcessDao tblSysProcessDao;
	@Autowired
	public tblAlarmDao tblAlarmDao;
	@Autowired
	public tblSysInfoDao tblSysInfoDao;
	@Autowired
	public tblExtSystemDao tblExtSystemDao;
	public static final char ESC = 27;
	
	
	@RequestMapping(value="/manage")
	public String manage(Model model,HttpServletRequest request, HttpServletResponse response, HttpSession session) throws Exception{
		List<tblExtSystem> EXT_SYSTEMLIST = tblExtSystemDao.findAll();
		 model.addAttribute("EXT_SYSTEMLIST", EXT_SYSTEMLIST);
		 
		 String errorCountDay = request.getParameter("errorCountDay");
		 settingConfig.errorCountDaySet(errorCountDay); 
		 String username = (String)session.getAttribute("username");
		 String password = (String)session.getAttribute("password");
		 if(settingConfig.altibaseData(username,password) != null) { 
			 ResultSet rsAltibaseData = settingConfig.altibaseData(username,password);
			 String OP_ID = rsAltibaseData.getString("OP_ID");
			 session.setAttribute("OP_ID", OP_ID);
			 }
		
		 
	return "manage";
	}
	
	
	@RequestMapping("/")
		public String list(Model model, HttpServletRequest req, ModelMap modelMap, @ModelAttribute("boardSearchVO") BoardSearchVO boardSearchVO,HttpServletRequest request, HttpServletResponse response, HttpSession session) throws Exception{
		//테이블 파싱하는 부분
		/*
		 * String url = "http://localhost:8080/systemcontrol"; Document doc =
		 * Jsoup.parse(getHtml2(url));
		 * 
		 * if(doc != null){ model.addAttribute("contents",
		 * doc.select(".table-bordered")); //model.addAttribute("contents",
		 * getContents(doc)); }else{ }
		 */
		List<tblSysProcess> PROCESSLIST = tblSysProcessDao.findAll();
		model.addAttribute("PROCESSLIST", PROCESSLIST);
		
		List<tblSysInfo> INFOLIST = tblSysInfoDao.findAllOrderBy();
		model.addAttribute("INFOLIST", INFOLIST);
		
		 List<IdxOnly> EXT_SYSTEMLIST2 = tblExtSystemDao.findAllByLocation();
		 model.addAttribute("EXT_SYSTEMLIST2", EXT_SYSTEMLIST2);
	
		 List<tblExtSystem> EXT_SYSTEMLIST = tblExtSystemDao.findAll();
		 model.addAttribute("EXT_SYSTEMLIST", EXT_SYSTEMLIST);
		 
		 List<tblAlarm> tblAlarm = tblAlarmDao.findAll();
		 model.addAttribute("tblAlarm", tblAlarm);
		 
		 List<tblAlarm> tblAlarmTop5 = tblAlarmDao.tblAlarmTop5();
		 model.addAttribute("tblAlarmTop5", tblAlarmTop5);
		 
	     ///////paging : S//////////////////////////////
		 	String jspPath =req.getRequestURI();
			int pageSize = boardSearchVO.getPageSize();// 한페이지에 나오는 게시물 개수
			int pageIndex = boardSearchVO.getPageIndex(); //현재 선택한 페이지 number
			int pageGroupSize = 0;
			int startRow = 0;
			int endRow = 0;
			if(request.getParameter("pageIndex") == null) {
				pageGroupSize = boardSearchVO.getPageGroupSize(); // 페이지 번호가 몇개 나오느냐 개수
				startRow = (pageIndex - 1) * pageSize + 1;// 한 페이지의 시작글 번호
				endRow = pageIndex * pageSize;// 한 페이지의 마지막 글번호
			}
			if(request.getParameter("pageIndex") != null) {
				pageIndex = Integer.parseInt(request.getParameter("pageIndex"));
				pageSize = Integer.parseInt(request.getParameter("pageSize"));
				pageGroupSize = boardSearchVO.getPageGroupSize(); // 페이지 번호가 몇개 나오느냐 개수
				startRow = (pageIndex - 1) * pageSize + 1;// 한 페이지의 시작글 번호
				endRow = pageIndex * pageSize;// 한 페이지의 마지막 글번호
			}
			List<tblAlarm> tblAlarmPaging = tblAlarmDao.findPaging(startRow, endRow);
			model.addAttribute("tblAlarmPaging", tblAlarmPaging);
			 
			int count = tblAlarmDao.tblAlarmListCount(); //게시물 총 개수
			int pageGroupCount = count / (pageSize * pageGroupSize) + (count % (pageSize * pageGroupSize) == 0 ? 0 : 1);
			int nowPageGroup = (int) Math.ceil((double) pageIndex / pageGroupSize);
			session.setAttribute("pageIndex", pageIndex);
			session.setAttribute("pageSize", pageSize);
			session.setAttribute("count", count);
			session.setAttribute("pageGroupSize", pageGroupSize);
			session.setAttribute("nowPageGroup", nowPageGroup);
			session.setAttribute("pageGroupCount", pageGroupCount);
			session.setAttribute("boardSearchVO", boardSearchVO);
		return "main";
		}
	
	@RequestMapping(value = "/login")
    public String loginPage(HttpServletRequest request, HttpServletResponse response) throws IOException {
		//String referrer = request.getHeader("Referer"); 
		//request.getSession().setAttribute("prevPage", referrer);
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		String username_true = "parkng5";
		String password_true = "tjsvndrl3#";
		int alticount = 0;
		//alticount = settingConfig.altibaseConn(username,password);
		//아이디, 패스워드가 일치하는지 확인
		if(username_true.equals(username)) {
			alticount = 1;
			}
		System.out.println("alticount"+alticount);
		int altiFailCheck = 0;
		if(alticount!=0) {
			HttpSession session = request.getSession();
		    String dateTime = new SimpleDateFormat("yyyyMMddHHmmss").format(new Date());		    
		    int sessionTime = 1200;
		    session.setAttribute("dateTime", dateTime);
		    session.setAttribute("sessionTime", sessionTime);
		    session.setAttribute("username", username);
		    session.setAttribute("password", password);
			return "redirect:/";
			}
		else if(alticount==0) {
			altiFailCheck = altiFailCheck + 1;
			/* settingConfig.altiFailCheck(altiFailCheck); */
		    System.out.println("loginFail: "+altiFailCheck);
			}
		/*parkng5 tjsvndrl3# */
		
        return "login";
    }
	
	@RequestMapping("/tas")
	public String tas(Model model,HttpServletRequest request, HttpServletResponse response) throws Exception{
	
	List<tblSysProcess> PROCESSLIST = tblSysProcessDao.findAll();
	model.addAttribute("PROCESSLIST", PROCESSLIST);
	
	List<tblSysInfo> INFOLIST = tblSysInfoDao.findAll();
	model.addAttribute("INFOLIST", INFOLIST);
	
	 List<IdxOnly> EXT_SYSTEMLIST2 = tblExtSystemDao.findAllByLocation();
	 model.addAttribute("EXT_SYSTEMLIST2", EXT_SYSTEMLIST2);

	 List<tblExtSystem> EXT_SYSTEMLIST = tblExtSystemDao.findAll();
	 model.addAttribute("EXT_SYSTEMLIST", EXT_SYSTEMLIST);
	 
	return "tas";
	}
	
	@RequestMapping(value="/sidebar")
	public String sidebar(Model model){
		/*
		 * model.addAttribute("EXT_SYSTEMNAME",
		 * tblExtSystemDao.findAllByas_nameQueryNative());
		 * model.addAttribute("EXT_SYSTEMLIST", tblExtSystemDao.findAll());
		 */
		
		
		 List<IdxOnly> EXT_SYSTEMLIST2 = tblExtSystemDao.findAllByLocation();
			 model.addAttribute("EXT_SYSTEMLIST2", EXT_SYSTEMLIST2);
		
		
		
		 List<tblExtSystem> EXT_SYSTEMLIST = tblExtSystemDao.findAll();
		 model.addAttribute("EXT_SYSTEMLIST", EXT_SYSTEMLIST);
		 
		 
	return "sidebar";
	}
	
	
	
	@RequestMapping(value="/table")
	public String table(Model model){
		List<tblSysProcess> PROCESSLIST = tblSysProcessDao.findAll();
		model.addAttribute("PROCESSLIST", PROCESSLIST);
		
		List<tblSysInfo> INFOLIST = tblSysInfoDao.findAll();
		model.addAttribute("INFOLIST", INFOLIST);
		
		List<tblExtSystem> EXT_SYSTEMLIST = tblExtSystemDao.findAll();
		model.addAttribute("EXT_SYSTEMLIST", EXT_SYSTEMLIST);
	return "table";
	}
	
	
	
	/*public String getHtml2(String url){
		  try {
		   @SuppressWarnings("resource")
		AsyncHttpClient asyncHttpClient = new AsyncHttpClient();
		   Future<Response> f = asyncHttpClient.prepareGet(url).execute();
		   Response r = f.get();
		   return new String(r.getResponseBody().getBytes("8859_1"), "UTF-8"); //인코딩 합니다.
		  } catch (Exception e) {
		   e.printStackTrace();
		  }
		  return null;
		 }*/
	
}




