package com.bdi.sp;

import static org.junit.Assert.*;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.bdi.sp.vo.Japan;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
public class SqlSessionFactoryTest {

	private static final Logger logger = LoggerFactory.getLogger(SqlSessionFactoryTest.class);
	@Autowired
	private SqlSessionFactory ssf;
	@Autowired 
	private SqlSession ss;
	
	@Test
	public void test() {
		assertNotNull(ssf.openSession());
	}


	@Test
	public void ssTest() {
		Japan j = new Japan();
		j.setJpnum(4);
		List<Japan> jList = ss.selectList("com.bdi.sp.JapanMapper.selectJapanList", j);
		assertEquals(jList.size(), 1);
	}
}
