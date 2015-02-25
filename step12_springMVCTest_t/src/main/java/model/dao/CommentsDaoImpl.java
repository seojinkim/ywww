package model.dao;

import model.domain.CommentsVo;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import util.DBUtil;

@Repository("cDao")
public class CommentsDaoImpl implements CommentsDao{
	@Override
	public int insertComments(CommentsVo vo) {
		System.out.println(vo);
		System.out.println("-----dao----");
		SqlSession session = null;
		boolean flag = false;
		int result = 0;
		try {
			session = DBUtil.getSqlSession();
			result = session.insert("comments.cInsert", vo);
			flag = result > 0 ? true : false;
		} finally {
			DBUtil.closeSqlSession(flag, session);
		}
		return result;
	}
}
