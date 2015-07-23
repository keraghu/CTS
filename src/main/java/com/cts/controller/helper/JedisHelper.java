package com.cts.controller.helper;

import java.util.Iterator;
import java.util.Map;
import java.util.Set;

import redis.clients.jedis.Jedis;
import redis.clients.util.JedisByteHashMap;

public class JedisHelper {
	//String redis_cloud="pub-redis-16475.us-east-1-2.3.ec2.garantiadata.com";
	String redis_cloud="pub-redis-16475.us-east-1-2.3.ec2.garantiadata.com";
	//String local="localhost";
	String local="192.168.40.175";
	String password="foobared";
	int port=6379;
	Jedis jedis = new Jedis(local,port);
	public JedisByteHashMap getJedisHashMap(){
		JedisByteHashMap  jedisMap=new JedisByteHashMap ();
		return jedisMap;
	}
	
	public void putValueInJedis(String sessionId,String key,String value){
		
		jedis.auth(password);
		jedis.hset(sessionId, key, value);
	}
	
	public void removeMapInJedis(String sessionId){
		jedis.auth(password);
		Map<String,String> fields=jedis.hgetAll(sessionId);
		Set s=fields.keySet();
	    Iterator<String> it=s.iterator();
	    while(it.hasNext()){
	    	jedis.hdel(sessionId, it.next());	
	    }
		
		
	}
	
	public void setMapInJedis(String sessionId,Map<String,String> map){
		//Jedis jedis = new Jedis(local);
		jedis.auth(password);
		jedis.hmset(sessionId, map);
	}
	
	public  String getValueInJedis(String sessionId, String key){
		//Jedis jedis = new Jedis(local);
		jedis.auth(password);
		return jedis.hget(sessionId, key);
	}

}
