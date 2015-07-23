package com.cts.controller.helper;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.web.servlet.ModelAndView;

public class HomePageHelper {
	
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
	private MongoDBHelper mongoDBHelper;
	
	public void prepareData(ModelAndView mv,String role,String username,String sessionId){
		System.out.println("role "+role);
		if(role.equals("Associate")){
			//mv = new ModelAndView("hello");	
			mv.setViewName("hello");
			mv.addObject("UserName", username);
			mv.addObject("UserRole", "'"+role+"'");
				String trainRes=restServiceHelper.getResponse(trainingUrl+"?pageNumber=1&userName="+username);
				jedisHelper.putValueInJedis(sessionId, "CompletedTrainingList", trainRes);
				mv.addObject("completedtraininglist", "'"+trainRes+"'");
	//	String certUrl="http://localhost:8080/certification/service/getCertificateList?pageNumber=1&userName="+username;
			//	String certRes=restServiceHelper.getResponse(certificationUrl+"?pageNumber=1&userName="+username);
				//jedisHelper.putValueInJedis(sessionId, "CertificationList", certRes);
				//mv.addObject("certificationlist", "'"+certRes+"'");
		}else if(role.equals("TrackAdmin")){
			//mv = new ModelAndView("trackhome");	
			mv.setViewName("trackhome");
			mv.addObject("UserName", username);
			mv.addObject("UserRole", "'"+role+"'");
			String trainRes=restServiceHelper.getResponse(trainingPendingCountUrl+"?pageNumber=1&userName="+username);
			jedisHelper.putValueInJedis(sessionId, "PendingTrainingRequestCount", trainRes);
			String mongousrres=mongoDBHelper.getUserStatistics();
			String mongotrgcost=mongoDBHelper.getTrainingByCost();
			String mongotrgsts=mongoDBHelper.getTrainingByCompleted();
			String mongoasscost=mongoDBHelper.getAssoicateByCost();
			mv.addObject("PendingTrainingRequestCount", "'"+trainRes+"'");
			mv.addObject("UserStatistics","'"+mongousrres+"'");
			mv.addObject("TrainingCost","'"+mongotrgcost+"'");
			mv.addObject("CompletedTraining","'"+mongotrgsts+"'");
			mv.addObject("AssociateCost","'"+mongoasscost+"'");
		//	String certRes=restServiceHelper.getResponse(certificationPendingCountUrl+"?pageNumber=1&userName="+username);
		//	jedisHelper.putValueInJedis(sessionId, "PendingCertificationCount", certRes);
		//	mv.addObject("PendingCertificationRequestCount", "'"+trainRes+"'");
		}
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

	public MongoDBHelper getMongoDBHelper() {
		return mongoDBHelper;
	}

	public void setMongoDBHelper(MongoDBHelper mongoDBHelper) {
		this.mongoDBHelper = mongoDBHelper;
	}
	
	
	

}
