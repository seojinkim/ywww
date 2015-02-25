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
			System.out.println("여긴옴?");
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
			System.out.println("sql바로전" +keyword);
			list = session.selectList("festival.selectFestivalByKeyword", keyword);
			System.out.println("sql나옴 "+list);
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
			System.out.println("sql바로전" +location);
			list = session.selectList("festival.selectFestivalByLocation", location);
			System.out.println("sql나옴 "+list);
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
			System.out.println("여긴옴2?");
			vo = session.selectOne("festival.selectOne",num);
		} finally {
			DBUtil.closeSqlSession(session);
		}
		return vo;
	}
}
