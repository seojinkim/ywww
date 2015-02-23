package model.dao;

import java.util.List;

import model.domain.UsersVo;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import util.DBUtil;

@Repository("uDao")
public class UsersDaoImpl implements UsersDao {
	@Override
	public int usersInsert(UsersVo vo) {
		SqlSession session = null;
		boolean flag = false;
		int result = 0;
		try {
			session = DBUtil.getSqlSession();
			result = session.insert("users.utInsert", vo);
			flag = result > 0 ? true : false;
		} finally {
			DBUtil.closeSqlSession(flag, session);
		}
		return result;
	}

	@Override
	public List<UsersVo> usersSelect() {
		SqlSession session = null;
		List<UsersVo> list = null;
		try {
			session = DBUtil.getSqlSession();
			list = session.selectList("users.uSelect");
		} finally {
			DBUtil.closeSqlSession(session);
		}
		return list;
	}

	@Override
	public int usersUpdate(UsersVo vo) {
		SqlSession session = null;
		boolean flag = false;
		int result = 0;
		try {
			session = DBUtil.getSqlSession();
			result = session.update("users.uUpdate", vo);
			flag = result > 0 ? true : false;

		} finally {
			DBUtil.closeSqlSession(flag, session);
		}
		return result;
	}

	@Override
	public int usersDelete(String id) {
		SqlSession session = null;
		boolean flag = false;
		int result = 0;
		try {
			session = DBUtil.getSqlSession();
			result = session.delete("users.uDelete", id);
			flag = result > 0 ? true : false;
		} finally {
			DBUtil.closeSqlSession(flag, session);
		}
		return result;
	}

	@Override
	public UsersVo usersIdCheck(String id) {
		SqlSession session = null;
		UsersVo uVo = null;
		try {
			session = DBUtil.getSqlSession();
			uVo = session.selectOne("users.uIdCheck", id);
		} finally {
			DBUtil.closeSqlSession(session);
		}
		return uVo;
	}

}
