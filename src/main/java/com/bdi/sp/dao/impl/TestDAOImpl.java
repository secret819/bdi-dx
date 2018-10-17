package com.bdi.sp.dao.impl;

import java.util.List;

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
	public int insertTest(Test ti) {
		return ss.insert("com.bdi.sp.TestMapper.insertTest", ti);
	}

}
