package com.cts.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.cts.controller.helper.HomePageHelper;
import com.cts.controller.helper.JedisHelper;
import com.cts.controller.helper.RestServiceHelper;

@Controller
public class HomePageController {
	

	@Autowired
	private RestServiceHelper restServiceHelper;
	
	@Autowired
	private JedisHelper jedisHelper;
	
	@Autowired
	private HomePageHelper homePageHelper;
	
	@RequestMapping(value="/home",method = RequestMethod.GET)
	public ModelAndView doHomePage(HttpSession sessionObj) {
		ModelAndView mv =new ModelAndView();
		String sessionId = sessionObj.getId();
		String username=jedisHelper.getValueInJedis(sessionId, "UserName");
		String userrole=jedisHelper.getValueInJedis(sessionId, "UserRole");
		//mv.addObject("UserName", username);
		//mv.addObject("UserRole", "'"+userrole+"'");
		homePageHelper.prepareData(mv, userrole, username, sessionId);
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

	public HomePageHelper getHomePageHelper() {
		return homePageHelper;
	}

	public void setHomePageHelper(HomePageHelper homePageHelper) {
		this.homePageHelper = homePageHelper;
	}
	
	

}
