package model.dao;

import java.util.List;

import model.domain.FestivalVo;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import util.DBUtil;

@Repository("fDao")
public class FestivalDaoImpl implements FestivalDao{
	@Override
	public List<FestivalVo> selectFestival() {
		SqlSession session = null;
		List<FestivalVo> list = null;
		try {
			session = DBUtil.getSqlSession();
			list = session.selectList("festival.selectAll");
		} finally {
			DBUtil.closeSqlSession(session);
		}
		return list;
	}
	
	@Override
	public List<FestivalVo> selectFestivalByKeyword(String keyword) {
		SqlSession session = null;
		List<FestivalVo> list = null;
		try {
			session = DBUtil.getSqlSession();
			list = session.selectList("festival.selectFestivalByKeyword", keyword);
		} finally {
			DBUtil.closeSqlSession(session);
		}
		return list;
	}
	
	@Override
	public List<FestivalVo> selectFestivalByLocation(String location) {
		SqlSession session = null;
		List<FestivalVo> list = null;
		try {
			session = DBUtil.getSqlSession();
			list = session.selectList("festival.selectFestivalByLocation", location);
		} finally {
			DBUtil.closeSqlSession(session);
		}
		return list;
	}
	
	@Override
	public List<FestivalVo> selectFestivalByTheme(String themeName) {
		SqlSession session = null;
		List<FestivalVo> list = null;
		try {
			session = DBUtil.getSqlSession();
			System.out.println("db가기전 "+themeName);
			list = session.selectList("festival.selectFestivalByTheme", themeName);
		} finally {
			DBUtil.closeSqlSession(session);
		}
		return list;
	}
	
	
	@Override
	public List<FestivalVo> selectFestivalByDate(String txtDate, String txtDate2) {
		SqlSession session = null;
		List<FestivalVo> list = null;
		FestivalVo vo = new FestivalVo(txtDate,txtDate2);
		try {
			session = DBUtil.getSqlSession();
			list = session.selectList("festival.selectFestivalByDate", vo);
		} finally {
			DBUtil.closeSqlSession(session);
		}
		return list;
	}
	
	@Override
	public FestivalVo festivalOne(int num) {
		SqlSession session = null;
		FestivalVo vo = null;
		try {
			session = DBUtil.getSqlSession();
			vo = session.selectOne("festival.selectOne",num);
		} finally {
			DBUtil.closeSqlSession(session);
		}
		return vo;
	}
}
