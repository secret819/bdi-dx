package com.bdi.sp.dao;

import java.util.List;

import com.bdi.sp.vo.Japan;

public interface JapanDAO {

	public List<Japan> selectJapanList(Japan jp);
	public Japan selectJapan(int jpnum);
	public int insertJapan(Japan jp);
	public int updateJapan(Japan jp);
	public int deleteJapan(Japan jp);
}
