package model.dao;

import java.util.List;

import model.domain.WishListVo;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import util.DBUtil;

@Repository("wDao")
public class WishListDaoImpl implements WishListDao{
	@Override
	public List<WishListVo> selectWishList() {
		SqlSession session = null;
		List<WishListVo> list = null;
		try {
			session = DBUtil.getSqlSession();
			list = session.selectList("wishlist.selectAll");
		} finally {
			DBUtil.closeSqlSession(session);
		}
		return list;
	}
	
	@Override
	public int deleteWishList(String id) {
		SqlSession session = null;
		boolean flag = false;
		int result = 0;
		try {
			session = DBUtil.getSqlSession();
			result = session.delete("wishlist.deleteWish", id);
			flag = result > 0 ? true : false;
		} finally {
			DBUtil.closeSqlSession(flag, session);
		}
		return result;
	}
}
