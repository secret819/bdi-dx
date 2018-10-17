package com.bdi.sp.dao;

import java.util.List;

import com.bdi.sp.vo.Test;

public interface TestDAO {

	public List<Test> selectTestList(Test ti);
	
	public Test selectTestOne(int tinum);
	
	public int insertTest(Test ti);
	
	public int updateTest(Test ti);
	
	public int deleteTest(int tinum);
}
