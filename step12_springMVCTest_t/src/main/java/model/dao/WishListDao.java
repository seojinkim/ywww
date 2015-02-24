package model.dao;

import java.util.List;

import model.domain.WishListVo;

public interface WishListDao {
	List<WishListVo> selectWishList();
}
