package com.bdi.sp.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bdi.sp.dao.DepartDAO;
import com.bdi.sp.service.DepartService;
import com.bdi.sp.vo.Depart;

@Service
public class DepartServiceImpl implements DepartService {

	@Autowired
	private DepartDAO ddao;
	
	@Override
	public List<Depart> selectDepartList(Depart di) {
		return ddao.selectDepartList(di);
	}

	@Override
	public Depart selectDepart(int dino) {
		return ddao.selectDepart(dino);
	}

	@Override
	public int insertDepart(Depart di) {
		return ddao.insertDepart(di);
	}

	@Override
	public int updateDepart(Depart di) {
		return ddao.updateDepart(di);
	}

	@Override
	public int deleteDepart(Depart di) {
		return ddao.deleteDepart(di);
	}

	@Override
	public int saveInsertUpdateDI(Depart di) {
		int cnt = ddao.insertDepart(di);
		cnt += ddao.updateDepart(di);
		return cnt;
	}

}
