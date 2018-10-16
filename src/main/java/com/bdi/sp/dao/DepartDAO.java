package com.bdi.sp.dao;

import java.util.List;

import com.bdi.sp.vo.Depart;

public interface DepartDAO {
	
	public List<Depart> selectDepartList(Depart di);
	public Depart selectDepart(int dino);
	public int insertDepart(Depart di);
	public int updateDepart(Depart di);
	public int deleteDepart(Depart di);
}
