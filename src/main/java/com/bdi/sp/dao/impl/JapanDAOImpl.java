package com.bdi.sp.dao.impl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.bdi.sp.dao.JapanDAO;
import com.bdi.sp.vo.Japan;

@Repository
public class JapanDAOImpl implements JapanDAO {

	@Autowired
	private SqlSession ss;
	
	@Override
	public List<Japan> selectJapanList(Japan jp) {
		return ss.selectList("com.bdi.sp.JapanMapper.selectJapanList");
	}

	@Override
	public Japan selectJapan(int jpnum) {
		return ss.selectOne("com.bdi.sp.JapanMapper.selectJapan",jpnum);
	}

	@Override
	public int insertJapan(Japan jp) {
		return ss.insert("com.bdi.sp.JapanMapper.insertJapan",jp);
	}

	@Override
	public int updateJapan(Japan jp) {
		return ss.update("com.bdi.sp.JapanMapper.updateJapan",jp);
	}

	@Override
	public int deleteJapan(Japan jp) {
		return ss.delete("com.bdi.sp.JapanMapper.deleteJapan",jp);
	}

}
