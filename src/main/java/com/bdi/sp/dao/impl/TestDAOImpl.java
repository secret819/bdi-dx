package com.bdi.sp.dao.impl;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.bdi.sp.dao.TestDAO;
import com.bdi.sp.vo.Test;

@Repository
public class TestDAOImpl implements TestDAO{

	@Autowired
	private SqlSession ss;
	
	@Override
	public List<Test> selectTestList(Test ti) {
		return ss.selectList("com.bdi.sp.TestMapper.selectTestList",ti);
	}

	@Override
	public Test selectTestOne(int tinum) {
		return ss.selectOne("com.bdi.sp.TestMapper.selectTestOne",tinum);
	}
	@Override
	public Test selectTestOneForId(String tiId) {
		return ss.selectOne("com.bdi.sp.TestMapper.selectTestForId",tiId);
	}

	@Override
	public int insertTest(Test ti) {
		return ss.insert("com.bdi.sp.TestMapper.insertTest", ti);
	}

	@Override
	public int updateTest(Test ti) {
		return ss.update("com.bdi.sp.TestMapper.updateTest",ti);
	}

	@Override
	public int deleteTest(int tinum) {
		return ss.delete("com.bdi.sp.TestMapper.deleteTest",tinum);
	}

	@Override
	public Test login(Test ti) {
		return ss.selectOne("com.bdi.sp.TestMapper.loginTest",ti);
	}

}
