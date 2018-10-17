package com.bdi.sp.controller;

import java.util.List;

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
		return ts.selectTestList(ti);
	}
	
	@RequestMapping(value="/tests/{tinum}", method=RequestMethod.GET)
	public @ResponseBody Test getTestOne(@PathVariable Integer tinum) {
		return ts.selectTestOne(tinum);
	}
	
	@RequestMapping(value="/tests", method=RequestMethod.POST)
	public @ResponseBody int insertTest(@ModelAttribute Test ti) {
		return ts.insertTest(ti);
	}
}
