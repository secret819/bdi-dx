package com.bdi.sp.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bdi.sp.dao.TestDAO;
import com.bdi.sp.service.TestService;
import com.bdi.sp.vo.Test;

@Service
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

	@Override
	public int updateTest(Test ti) {
		return tdao.updateTest(ti);
	}

	@Override
	public int deleteTest(int tinum) {
		return tdao.deleteTest(tinum);
	}

	
}
