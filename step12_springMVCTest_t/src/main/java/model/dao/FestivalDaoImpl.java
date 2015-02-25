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
}
