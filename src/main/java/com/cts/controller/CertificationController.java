package com.cts.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.cts.controller.helper.JedisHelper;
import com.cts.controller.helper.RestServiceHelper;

@Controller
public class CertificationController {

	
	@Value("${certification.manage.service.url}")
	private String managecertificationUrl;
	
	@Value("${certification.update.service.url}")
	private String updateCertificationUrl;
	
	private RestServiceHelper restServiceHelper;
	
	 @RequestMapping(value="/managecert",method = RequestMethod.GET)
	  public ModelAndView doManageCertifications(@RequestParam(value="userName", required=false) String userName,HttpSession sessionObj) {
		 System.out.println("In doManageCertifications in Controller Entry>>>>>");
			ModelAndView mv = new ModelAndView("managecert");
			
			restServiceHelper=new RestServiceHelper();
			JedisHelper h=new JedisHelper();
			String sessionId=sessionObj.getId();
			String username=h.getValueInJedis(sessionId, "UserName");
			System.out.println("User Name >>>>>:"+username);
			String cacheRes=h.getValueInJedis(sessionId,"manageCertification");
			if(cacheRes==null){
				cacheRes=restServiceHelper.getResponse(managecertificationUrl+"?userName="+username
						);
				h.putValueInJedis(sessionId, "manageCertifcationResponse", cacheRes);
			}
			// String cacheRes=getResponse(trainingRequestUrl+"?userName="+userName);
			mv.addObject("manageCertifcationResponse","'"+cacheRes+"'");
			 System.out.println("JSON String >>>>:"+cacheRes);
			 System.out.println("In doManageCertifications in Controller Entry>>>>>");
			return mv;
	  }
	 
	 	@RequestMapping(value="/updatecertifications",method = RequestMethod.POST)
		public ModelAndView doupdateCertification(@RequestParam(value="certificationName", required=false) String certificationName, 
		        @RequestParam(value="userName", required=false) String userName,HttpSession sessionObj) {
	 		 System.out.println("submitTraining updated Page for Training Request in Controller>>>>>");
	 		 System.out.println("UserName:"+userName);
	 		 System.out.println("certificationName:"+certificationName);
	 	
	 		JedisHelper h=new JedisHelper();
	 		String sessionId=sessionObj.getId();
	 		String username=h.getValueInJedis(sessionId, "UserName");
			ModelAndView mv = new ModelAndView("request_train_conf");
			
			// String cacheRes=getResponse(submitRequestUrl+"?userName="+userName+"&trainingName="+trainingName);
			String cacheRes=restServiceHelper.getResponse(updateCertificationUrl+"?userName="+username+"&certificationName="+certificationName);
		//	String res=restServiceHelper.getResponse(trainingUpdateUrl+"?trainingName="+trainingname+"&status="+status+"&userName="+username);
			System.out.println("Service Response>>>>>>>:"+cacheRes);
			mv.addObject("updateCertificationResponse","'"+cacheRes+"'");
			return mv;
	 	}
	 	
	 	public RestServiceHelper getRestServiceHelper() {
			return restServiceHelper;
		}

		public void setRestServiceHelper(RestServiceHelper restServiceHelper) {
			this.restServiceHelper = restServiceHelper;
		}
	

}
