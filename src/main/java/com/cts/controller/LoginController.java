package com.cts.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.cts.controller.helper.HomePageHelper;
import com.cts.controller.helper.JedisHelper;
import com.cts.controller.helper.MongoDBHelper;
import com.cts.controller.helper.RestServiceHelper;


@Controller
public class LoginController {
	
	@Value("${login.authenticate.service.url}")
	private String loginUrl;
	
	@Value("${training.homepagewidget.service.url}")
	private String trainingUrl;
	
	@Value("${certification.list.service.url}")
	private String certificationUrl;
	
	
	@Value("${training.pending.count.url}")
	private String trainingPendingCountUrl;
	
	@Value("${certification.pending.count.url}")
	private String certificationPendingCountUrl;
	
	
	@Autowired
	private RestServiceHelper restServiceHelper;
	
	@Autowired
	private JedisHelper jedisHelper;
	
	@Autowired
	private HomePageHelper homePageHelper;
	
	@Autowired
	private MongoDBHelper mongoDBHelper;

	public MongoDBHelper getMongoDBHelper() {
		return mongoDBHelper;
	}

	public void setMongoDBHelper(MongoDBHelper mongoDBHelper) {
		this.mongoDBHelper = mongoDBHelper;
	}

	public HomePageHelper getHomePageHelper() {
		return homePageHelper;
	}

	public void setHomePageHelper(HomePageHelper homePageHelper) {
		this.homePageHelper = homePageHelper;
	}

	@RequestMapping(value="/login",method = RequestMethod.POST)
	public ModelAndView doAuthenticate(@RequestParam(value="username", required=false) String username, 
	        @RequestParam(value="password", required=false) String password,HttpSession sessionObj,HttpServletRequest request) {
		System.out.println("in controller"+username);
		System.out.println("in controller"+password);
		ModelAndView mv =new ModelAndView();
		restServiceHelper=new RestServiceHelper();
		String sessionId = sessionObj.getId();
		boolean flag=false;
		String res=restServiceHelper.getResponse(loginUrl+"?userName="+username+"&password="+password);
		if(restServiceHelper.isAuthticatedUser(res)){
			flag=true;
			System.out.println("inside valid user");
			//if(false){
		jedisHelper.putValueInJedis(sessionId, "UserName", username);
		//String url= "http://localhost:8080/uaa/login/getUser?userName="+username;
		//url= "http://localhost:8080/training/service/getList?pageNumber=1&userName="+username;
		String role=restServiceHelper.getRole(res);
		jedisHelper.putValueInJedis(sessionId, "UserRole", role);
		//mv = new ModelAndView("hello");	
		homePageHelper.prepareData(mv, role, username, sessionId);
/*			if(role.equals("Associate")){
				mv = new ModelAndView("hello");	
				
				mv.addObject("UserName", username);
				mv.addObject("UserRole", "'"+role+"'");
					String trainRes=restServiceHelper.getResponse(trainingUrl+"?pageNumber=1&userName="+username);
					jedisHelper.putValueInJedis(sessionId, "CompletedTrainingList", trainRes);
					mv.addObject("completedtraininglist", "'"+trainRes+"'");
		//	String certUrl="http://localhost:8080/certification/service/getCertificateList?pageNumber=1&userName="+username;
					String certRes=restServiceHelper.getResponse(certificationUrl+"?pageNumber=1&userName="+username);
					jedisHelper.putValueInJedis(sessionId, "CertificationList", certRes);
					mv.addObject("certificationlist", "'"+certRes+"'");
			}else if(role.equals("TrackAdmin")){
				mv = new ModelAndView("trackhome");	
				mv.addObject("UserName", username);
				mv.addObject("UserRole", "'"+role+"'");
				String trainRes=restServiceHelper.getResponse(trainingPendingCountUrl+"?pageNumber=1&userName="+username);
				jedisHelper.putValueInJedis(sessionId, "PendingTrainingRequestCount", trainRes);
				mv.addObject("PendingTrainingRequestCount", "'"+trainRes+"'");
				String certRes=restServiceHelper.getResponse(certificationPendingCountUrl+"?pageNumber=1&userName="+username);
				jedisHelper.putValueInJedis(sessionId, "PendingCertificationCount", certRes);
				mv.addObject("PendingCertificationRequestCount", "'"+trainRes+"'");
			}*/
		}
		else{
			System.out.println("in else condition ");
			mv = new ModelAndView("redirect:login.jsp");	
			mv.addObject("errorMessage","Invalid UserName or Password");
		}
		
		mongoDBHelper.insertLog(username,flag,request);
		return mv;
	}
	
	@RequestMapping(value="/logout",method = RequestMethod.GET)
	public ModelAndView logout(HttpSession sessionObj){
		ModelAndView mv =new ModelAndView("redirect:login.jsp");
		String sessionId = sessionObj.getId();
		jedisHelper.removeMapInJedis(sessionId);
		sessionObj.invalidate();
		return mv;
	}
	

	public RestServiceHelper getRestServiceHelper() {
		return restServiceHelper;
	}

	public void setRestServiceHelper(RestServiceHelper restServiceHelper) {
		this.restServiceHelper = restServiceHelper;
	}

	public JedisHelper getJedisHelper() {
		return jedisHelper;
	}

	public void setJedisHelper(JedisHelper jedisHelper) {
		this.jedisHelper = jedisHelper;
	}
	
	

}
