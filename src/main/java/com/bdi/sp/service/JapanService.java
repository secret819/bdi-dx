package com.bdi.sp.service;

import java.util.List;

import com.bdi.sp.vo.Japan;

public interface JapanService {

	public List<Japan> selectJapanList(Japan jp);
	public Japan selectJapan(int jpnum);
	public int insertJapan(Japan jp);
	public int updateJapan(Japan jp);
	public int deleteJapan(Japan jp);
}
