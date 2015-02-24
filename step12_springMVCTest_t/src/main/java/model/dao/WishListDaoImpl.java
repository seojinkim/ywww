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
}
