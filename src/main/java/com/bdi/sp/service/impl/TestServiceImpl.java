package com.bdi.sp.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.bdi.sp.dao.TestDAO;
import com.bdi.sp.service.TestService;
import com.bdi.sp.vo.Test;

public class TestServiceImpl implements TestService{

	@Autowired
	private TestDAO tdao;
	
	@Override
	public List<Test> selectTestList(Test ti) {
		return tdao.selectTestList(ti);
	}
	
	@Override
	public Test selectTestOne(int tinum) {

		return tdao.selectTestOne(tinum);
	}

	@Override
	public int insertTest(Test ti) {
		return tdao.insertTest(ti);
	}

	
}
