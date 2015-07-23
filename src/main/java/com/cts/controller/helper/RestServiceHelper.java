package com.cts.controller.helper;

import java.util.HashMap;
import java.util.Map;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.json.simple.JSONValue;
import org.springframework.web.client.RestTemplate;

public class RestServiceHelper {
	
	public String getResponse(String url){
		Map<String, String> params = new HashMap<String, String>();
		RestTemplate restTemplate = new RestTemplate();
	    String u=restTemplate.getForObject(url, String.class, params);
	    return u;
	}
	
	public boolean isAuthticatedUser(String jsonStr){
		  Object obj=JSONValue.parse(jsonStr);
		  JSONObject array=(JSONObject)obj;
		  //JSONObject obj2=(JSONObject)array.get(1);
		  return ((Boolean)array.get("success"));
	}
	
	public String getRole(String jsonStr){
		Object obj=JSONValue.parse(jsonStr);
		JSONObject array=(JSONObject)obj;
		 // JSONObject obj2=(JSONObject)array.get(1);
		  return (String )array.get("Role");
		
	}
}
