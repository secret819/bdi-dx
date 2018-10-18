package com.bdi.sp.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.bdi.sp.service.TestService;
import com.bdi.sp.vo.Test;

@Controller
public class TestController {

	private static final Logger logger = LoggerFactory.getLogger(TestController.class);
	
	@Autowired
	private TestService ts;
	
	@RequestMapping(value="/tests", method=RequestMethod.GET)
	public @ResponseBody List<Test> getTestList(@ModelAttribute Test ti) {
		return ts.selectTestList(null);
	}
	
	@RequestMapping(value="/tests/{tinum}", method=RequestMethod.GET)
	public @ResponseBody Test getTestOne(@PathVariable Integer tinum) {
		logger.debug("getOneTest=>{}",ts.selectTestOne(tinum));
		return ts.selectTestOne(tinum);
	}
	
	@RequestMapping(value="/tests", method=RequestMethod.POST)
	public @ResponseBody int insertTest(@RequestBody Test ti) {
		logger.debug("insertTest=>{}",ti);
		return ts.insertTest(ti);
	}
	
	@RequestMapping(value="/tests/{tinum}", method=RequestMethod.PUT)
	public @ResponseBody int updateTest(@RequestBody Test ti, @PathVariable int tinum) {
		ti.setTiNum(tinum);
		return ts.updateTest(ti);
	}
	
	@RequestMapping(value="/tests/{tinum}", method=RequestMethod.DELETE)
	public @ResponseBody int deleteTest(@PathVariable int tinum) {
		return ts.deleteTest(tinum);
	}
	
	
	@RequestMapping(value="/login",method=RequestMethod.POST)
	public @ResponseBody Map<String,String> login(@RequestBody Test ti){
		Map<String,String> rMap = new HashMap<String,String>();
		rMap.put("login","fail");
		rMap.put("msg", "아이디및 비밀번호를 확인하세요");
		if(ti.getTiId()==null) {
			return rMap;
		}
		
		List<Test> tList = ts.selectTestList(ti);
		logger.debug("LoginTest=>{}",tList.get(0));
		
		
		
		if(ti.getTiId().equals(tList.get(0).getTiId())) {
			if(ti.getTiPwd().equals(tList.get(0).getTiPwd())) {
				rMap.put("login", "success");
				rMap.put("msg", tList.get(0).getTiName()+"님 로그인 되었습니다.");
				rMap.put("rank", "user");
				if(tList.get(0).getTiNum()==1) {
				rMap.put("rank", "admin");
				}
				
			}
		}
		
		return rMap;
	}
	
}
