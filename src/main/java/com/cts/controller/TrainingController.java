package com.cts.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import redis.clients.jedis.Jedis;

import com.cts.controller.helper.JedisHelper;
import com.cts.controller.helper.RestServiceHelper;

@Controller
public class TrainingController {
	
	@Value("${training.manage.service.url}")
	private String trainingManageUrl;
	
	@Value("${training.update.service.url}")
	private String trainingUpdateUrl;
	
	@Value("${training.pending.requests.url}")
	private String pendingTrainingListUrl;
	
	
	@Value("${training.approve.request.url}")
	private String approveTrainingReqUrl;
	
	@Value("${training.request.service.url}")
	private String trainingRequestUrl;
	
	@Value("${training.submit.service.url}")
	private String submitRequestUrl;
	
	
	@Autowired
	private RestServiceHelper restServiceHelper;
	
	@Autowired
	private JedisHelper jedisHelper;

	@RequestMapping(value="/managetraining",method = RequestMethod.GET)
	public ModelAndView doManageTrainings(HttpSession sessionObj) {
		ModelAndView mv = new ModelAndView("managetraining");
		restServiceHelper=new RestServiceHelper();
		//JedisHelper h=new JedisHelper();
		String sessionId=sessionObj.getId();
	
		String username=jedisHelper.getValueInJedis(sessionId, "UserName");
		String cacheRes=jedisHelper.getValueInJedis(sessionId,"UserManageTraining");
		String userrole=jedisHelper.getValueInJedis(sessionId, "UserRole");
		mv.addObject("UserName", username);
		mv.addObject("UserRole", "'"+userrole+"'");
		if(cacheRes==null){
			cacheRes=restServiceHelper.getResponse(trainingManageUrl+"?userName="+username
					);
			jedisHelper.putValueInJedis(sessionId, "UserManageTraining", cacheRes);
		}
		mv.addObject("ManageTrainingResponse","'"+cacheRes+"'");
		return mv;
	}
	
	@RequestMapping(value="/updatetraining",method = RequestMethod.POST)
	public ModelAndView doUpdateTrainings(@RequestParam(value="trainingName", required=false) String trainingname, 
	        @RequestParam(value="status", required=false) String status,HttpSession sessionObj) {
		ModelAndView mv = new ModelAndView("hello");
		String sessionId=sessionObj.getId();
		
		//JedisHelper h=new JedisHelper();
		//restServiceHelper=new RestServiceHelper();
		String username=jedisHelper.getValueInJedis(sessionId, "UserName");
		mv.addObject("UserName", username);
		String userrole=jedisHelper.getValueInJedis(sessionId, "UserRole");
		mv.addObject("UserRole", "'"+userrole+"'");
		System.out.println("user "+username+"status="+status+"tname="+trainingname);
		String res=restServiceHelper.getResponse(trainingUpdateUrl+"?trainingName="+trainingname+"&status="+status+"&userName="+username);
		jedisHelper.putValueInJedis(sessionId, "CompletedTrainingList", res);
		mv.addObject("completedtraininglist", "'"+res+"'");
		mv.addObject("certificationlist", jedisHelper.getValueInJedis(sessionId, "CertificationList"));
		return mv;
	}
	
	@RequestMapping(value="/approveTrainingRequest",method = RequestMethod.POST,produces = MediaType.TEXT_PLAIN_VALUE)
	@ResponseBody
	public String doApproveRejectTraining(@RequestParam(value="reqId", required=false) String trainingreqId,@RequestParam(value="reqStatus", required=false) String status,HttpSession sessionObj){
		ModelAndView mv = new ModelAndView("approvetraining");
		String sessionId=sessionObj.getId();
		String username=jedisHelper.getValueInJedis(sessionId, "UserName");
		mv.addObject("UserName", username);
		String userrole=jedisHelper.getValueInJedis(sessionId, "UserRole");
		mv.addObject("UserRole", "'"+userrole+"'");
		String res=restServiceHelper.getResponse(approveTrainingReqUrl+"?reqId="+trainingreqId+"&reqStatus="+status+"&userName="+username);
		jedisHelper.putValueInJedis(sessionId, "UserPendingTraining", res);
		mv.addObject("pendingtraininglist","'"+res+"'");
		return "";
		
	}
	
	@RequestMapping(value="/pendingTrainingList",method = RequestMethod.GET)
	public ModelAndView doPendingTrainingList(HttpSession sessionObj){
		ModelAndView mv = new ModelAndView("approvetraining");
		String sessionId=sessionObj.getId();
		String username=jedisHelper.getValueInJedis(sessionId, "UserName");
		mv.addObject("UserName", username);
		String userrole=jedisHelper.getValueInJedis(sessionId, "UserRole");
		//String cacheRes=jedisHelper.getValueInJedis(sessionId,"UserPendingTraining");
		mv.addObject("UserRole", "'"+userrole+"'");
		//if(cacheRes==null){
			//cacheRes=restServiceHelper.getResponse(pendingTrainingListUrl+"?userName="+username);	
			//jedisHelper.putValueInJedis(sessionId, "UserPendingTraining", cacheRes);
		//}
		String res=restServiceHelper.getResponse(pendingTrainingListUrl+"?userName="+username);
		
		mv.addObject("pendingtraininglist","'"+res+"'");
		return mv;
		
	}
	
	
	@RequestMapping(value="/request_train",method = RequestMethod.GET)
	  public ModelAndView doRequestTrainings(@RequestParam(value="userName", required=false) String userName,HttpSession sessionObj) {
		 System.out.println("Rendering updated Page for Training Request in Controller>>>>>");
			ModelAndView mv = new ModelAndView("request_train");
			String sessionId=sessionObj.getId();
			String username=jedisHelper.getValueInJedis(sessionId, "UserName");
			mv.addObject("UserName", username);
			System.out.println("User Name >>>>>:"+username);
			String cacheRes=jedisHelper.getValueInJedis(sessionId,"UserRequestTraining");
			if(cacheRes==null){
				cacheRes=restServiceHelper.getResponse(trainingRequestUrl+"?userName="+username
						);
				jedisHelper.putValueInJedis(sessionId, "UserRequestTraining", cacheRes);
			}
			String userrole=jedisHelper.getValueInJedis(sessionId, "UserRole");
			mv.addObject("UserRole", "'"+userrole+"'");
			// String cacheRes=getResponse(trainingRequestUrl+"?userName="+userName);
			System.out.println("Rendering Page for Training Request in Controller>>>>>");
			mv.addObject("requestTrainingResponse","'"+cacheRes+"'");
			 System.out.println("JSON String >>>>:"+cacheRes);
			 System.out.println("Rendering Page for Training Request in Controller Exit>>>>>");
			return mv;
	  }
	 
	 	@RequestMapping(value="/submitTraining",method = RequestMethod.POST)
		public ModelAndView doSubmitTraining(@RequestParam(value="trainingName", required=false) String trainingName, 
		        @RequestParam(value="userName", required=false) String userName,HttpSession sessionObj) {
	 		 System.out.println("submitTraining updated Page for Training Request in Controller>>>>>");
	 		 System.out.println("UserName:"+userName);
	 		 System.out.println("trainingName:"+trainingName);
	 		 System.out.println("submitRequestUrl:"+submitRequestUrl);
	 		String sessionId=sessionObj.getId();
	 		String username=jedisHelper.getValueInJedis(sessionId, "UserName");
			ModelAndView mv = new ModelAndView("request_train_conf");
			mv.addObject("UserName", username);
			// String cacheRes=getResponse(submitRequestUrl+"?userName="+userName+"&trainingName="+trainingName);
			String cacheRes=restServiceHelper.getResponse(submitRequestUrl+"?userName="+username+"&trainingName="+trainingName);
			String userrole=jedisHelper.getValueInJedis(sessionId, "UserRole");
			mv.addObject("UserRole", "'"+userrole+"'");
		//	String res=restServiceHelper.getResponse(trainingUpdateUrl+"?trainingName="+trainingname+"&status="+status+"&userName="+username);
			System.out.println("Service Response>>>>>>>:"+cacheRes);
			mv.addObject("submitTrainingResponse","'"+cacheRes+"'");
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
