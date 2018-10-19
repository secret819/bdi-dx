package com.bdi.sp.service;

import java.util.List;
import java.util.Map;

import com.bdi.sp.vo.Test;

public interface TestService {

	public List<Test> selectTestList(Test ti);
	
	public Test selectTestOne(int tinum);
	
	public Map<String,String> insertTest(Test ti, Map<String,String> rMap);
	
	public int updateTest(Test ti);
	
	public int deleteTest(int tinum);
	
	public Test login(Test ti);
}
