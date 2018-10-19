package com.bdi.sp.service.impl;

import java.util.List;
import java.util.Map;

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
	public Map<String, String> insertTest(Test ti, Map<String,String> rMap) {
		if(tdao.selectTestOneForId(ti.getTiId())!=null) {
			rMap.put("reg", "fail");
			rMap.put("msg", "이미 있는 아이디 입니다.");
			return rMap;
		}
		int success = tdao.insertTest(ti);
		if(success==1) {
			rMap.put("reg", "success");
			rMap.put("msg", "회원가입에 성공하셨습니다.");
		}
		return rMap;
	}

	@Override
	public int updateTest(Test ti) {
		return tdao.updateTest(ti);
	}

	@Override
	public int deleteTest(int tinum) {
		return tdao.deleteTest(tinum);
	}

	@Override
	public Test login(Test ti) {
		return tdao.login(ti);
	}

	
}
