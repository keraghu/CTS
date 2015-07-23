package com.cts.controller.helper;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;
import java.util.TimeZone;

import javax.servlet.http.HttpServletRequest;

import com.mongodb.AggregationOutput;
import com.mongodb.BasicDBObject;
import com.mongodb.DB;
import com.mongodb.DBCollection;
import com.mongodb.DBObject;
import com.mongodb.MongoClient;
import com.mongodb.MongoClientURI;

public class MongoDBHelper {
	
	public MongoClient getMongoCleint() throws Exception{
		//String textUri = "mongodb://openshift:openshift5@ds047812.mongolab.com:47812/login4mongo";
		  String textUri = "mongodb://192.168.40.175/login4mongo";
		  MongoClientURI uri = new MongoClientURI(textUri);
		  MongoClient m = new MongoClient(uri);
		  return m;
	}
	
	public String getAssoicateByCost(){
		System.out.println("entering into getAssoicateByCost");
		String res="";
		try {
			DB db = getMongoCleint().getDB("login4mongo");
			DBCollection table = db.getCollection("user");
			Map<String, Object> dbObjIdMap = new HashMap<String, Object>();
			dbObjIdMap.put("associatename", "$associatename");
			DBObject groupFields = new BasicDBObject( "_id", new BasicDBObject(dbObjIdMap));

			groupFields.put("total", new BasicDBObject( "$sum", "$trainingcost"));
			
			BasicDBObject group = new BasicDBObject("$group", groupFields);
			BasicDBObject match = new BasicDBObject("$match", new BasicDBObject("trainingstatus", "Completed") );
			AggregationOutput output = table.aggregate(match,group );
			res=output.getCommandResult().toString();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		System.out.println(" getAssoicateByCost data "+res);
		return res;
	}
	
	public String getTrainingByCompleted(){
		System.out.println("entering into getTrainingByAssociate");
		String res="";
		try {
			DB db = getMongoCleint().getDB("login4mongo");
			DBCollection table = db.getCollection("user");
			Map<String, Object> dbObjIdMap = new HashMap<String, Object>();
			dbObjIdMap.put("trainingname", "$trainingname");
			DBObject groupFields = new BasicDBObject( "_id", new BasicDBObject(dbObjIdMap));

			groupFields.put("total", new BasicDBObject( "$sum", 1));
			
			BasicDBObject group = new BasicDBObject("$group", groupFields);
			BasicDBObject match = new BasicDBObject("$match", new BasicDBObject("trainingstatus", "Completed") );
			AggregationOutput output = table.aggregate(match,group );
			res=output.getCommandResult().toString();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		System.out.println(" getTrainingByAssociate data "+res);
		return res;
	}
	
	public String getTrainingByCost(){
		System.out.println("entering into getTrainingByCost");
		String res="";
		try {
			DB db = getMongoCleint().getDB("login4mongo");
			DBCollection table = db.getCollection("user");
			Map<String, Object> dbObjIdMap = new HashMap<String, Object>();
			dbObjIdMap.put("trainingname", "$trainingname");
			DBObject groupFields = new BasicDBObject( "_id", new BasicDBObject(dbObjIdMap));

			groupFields.put("total", new BasicDBObject( "$sum", "$trainingcost"));
			
			BasicDBObject group = new BasicDBObject("$group", groupFields);
			BasicDBObject match = new BasicDBObject("$match", new BasicDBObject("trainingstatus", "Completed") );
			AggregationOutput output = table.aggregate(match,group );
			res=output.getCommandResult().toString();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		System.out.println(" getTrainingByCost data "+res);
		return res;
	}
	
	public String getUserStatistics(){
		System.out.println("entering into getUserStatistics");
		String res="";
		try {
			DB db = getMongoCleint().getDB("login4mongo");
			DBCollection table = db.getCollection("log");
			BasicDBObject groupFields = new BasicDBObject( "_id", "$user");
			groupFields.put("total", new BasicDBObject( "$sum", 1));
			
			BasicDBObject group = new BasicDBObject("$group", groupFields);
			AggregationOutput output = table.aggregate(group );
			res=output.getCommandResult().toString();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		System.out.println(" getUserStatistics data "+res);
		return res;
	}
	
	public void insertLog(String userName,boolean isValidUser,HttpServletRequest request){
		System.out.println("entering into insertUserTrainingLog");
		try {
			DB db = getMongoCleint().getDB("login4mongo");
			DBCollection table = db.getCollection("log");
			BasicDBObject document = new BasicDBObject();
			populateData(document, request, userName,isValidUser);
			table.insert(document);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		System.out.println("exiting  insertUserTrainingLog");
	}
	
	public void populateData(BasicDBObject document,HttpServletRequest request,String userName,boolean isValidUser){
		System.out.println("entering into populateData");
		document.put("host", request.getLocalName());
		document.put("user", userName);
		document.put("isAuthenticated", isValidUser);
		document.put("time", new Date());
		document.put("path", request.getRequestURI().substring(request.getContextPath().length()));
		document.put("contenttype", request.getContentType());
		document.put("referrer", request.getHeader("Referer"));
		document.put("user_agent", request.getHeader("user-agent"));
	}
	
	public String getISOFormatDate(){
		//DateFormat df=new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss.SSZZ");
		//df.setTimeZone(TimeZone.getTimeZone("UTC"));
		//df.format(TimeDateUtils.getCurrentDate());
		
		  TimeZone tz = TimeZone.getTimeZone("UTC");
		    DateFormat df = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm'Z'");
		    df.setTimeZone(tz);
		    String nowAsISO = df.format(new Date());
		    return nowAsISO;
	}

}
