package com.bdi.sp.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bdi.sp.dao.JapanDAO;
import com.bdi.sp.service.JapanService;
import com.bdi.sp.vo.Japan;

@Service
public class JapanServiceImpl implements JapanService {
	
	@Autowired
	private JapanDAO jdao;
	@Override
	public List<Japan> selectJapanList(Japan jp) {
		return jdao.selectJapanList(jp);
	}
	@Override
	public Japan selectJapan(int jpnum) {
		return jdao.selectJapan(jpnum);
	}
	@Override
	public int insertJapan(Japan jp) {
		return jdao.insertJapan(jp);
	}
	@Override
	public int updateJapan(Japan jp) {
		return jdao.updateJapan(jp);
	}
	@Override
	public int deleteJapan(Japan jp) {
		return jdao.deleteJapan(jp);
	}

}
