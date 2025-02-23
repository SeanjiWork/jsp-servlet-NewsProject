package com.javaweb.utils;

import java.io.BufferedReader;
import java.io.IOException;

import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.ObjectMapper;

public class HttpUtil {
	
	private String value;
	
	public HttpUtil(String value) {
		this.value = value;
	}
	
//	Class là Model
	public <T> T toModel(Class<T> tclass) {
		try {
			return new ObjectMapper().readValue(value, tclass);
		} catch (JsonParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (JsonMappingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
	}
	
//	Dữ liệu trả về là HttpUtil
	public static HttpUtil of (BufferedReader reader) {
		StringBuilder sb = new StringBuilder();
		try {
			String line;
			while((line = reader.readLine()) != null ) {
				sb.append(line);
			}
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
		return new HttpUtil(sb.toString());
	}
}
