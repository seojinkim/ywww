package model.dao;

import java.util.List;

import model.domain.StudentVo;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import util.DBUtil;

@Repository("stDao")
public class StudentDaoImpl implements StudentDao {
	@Override
	public int studentInsert(StudentVo vo) {
		SqlSession session = null;
		boolean flag = false;
		int result = 0;
		try {
			session = DBUtil.getSqlSession();
			result = session.insert("student.stInsert", vo);
			flag = result > 0 ? true : false;
		} finally {
			DBUtil.closeSqlSession(flag, session);
		}
		return result;
	}

	@Override
	public List<StudentVo> studentSelect() {
		SqlSession session = null;
		List<StudentVo> list = null;
		try {
			session = DBUtil.getSqlSession();
			list = session.selectList("student.stSelect");
		} finally {
			DBUtil.closeSqlSession(session);
		}
		return list;
	}

	@Override
	public int studentUpdate(StudentVo vo) {
		SqlSession session = null;
		boolean flag = false;
		int result = 0;
		try {
			session = DBUtil.getSqlSession();
			result = session.update("student.studentUpdate", vo);
			flag = result > 0 ? true : false;

		} finally {
			DBUtil.closeSqlSession(flag, session);
		}
		return result;
	}

	@Override
	public int studentDelete(String stuentNo) {
		SqlSession session = null;
		boolean flag = false;
		int result = 0;
		try {
			session = DBUtil.getSqlSession();
			result = session.delete("student.studentDelete", stuentNo);
			flag = result > 0 ? true : false;
		} finally {
			DBUtil.closeSqlSession(flag, session);
		}
		return result;
	}

	@Override
	public StudentVo studentIdCheck(String studentNo) {
		SqlSession session = null;
		StudentVo sVo = null;
		try {
			session = DBUtil.getSqlSession();
			sVo = session.selectOne("student.stIdCheck", studentNo);
		} finally {
			DBUtil.closeSqlSession(session);
		}
		return sVo;
	}

}
