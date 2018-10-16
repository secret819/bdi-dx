package com.bdi.sp.dao.impl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.bdi.sp.dao.DepartDAO;
import com.bdi.sp.vo.Depart;

@Repository
public class DepartDAOImpl implements DepartDAO {

	@Autowired
	private SqlSession ss;
	
	@Override
	public List<Depart> selectDepartList(Depart di) {
		return ss.selectList("com.bdi.sp.DepartMapper.selectDepartList");
	}

	@Override
	public Depart selectDepart(int dino) {
		return ss.selectOne("com.bdi.sp.DepartMapper.selectDepart", dino);
	}

	@Override
	public int insertDepart(Depart di) {
		return ss.insert("com.bdi.sp.DepartMapper.insertDepart",di);
	}

	@Override
	public int updateDepart(Depart di) {
		return ss.update("com.bdi.sp.DepartMapper.updateDepart",di);
	}

	@Override
	public int deleteDepart(Depart di) {
		return ss.delete("com.bdi.sp.DepartMapper.deleteDepart",di);
	}

}
