package model.service;

import java.util.List;

import model.domain.UsersVo;
import model.domain.WishListVo;

public interface WishListService {
	List<WishListVo> SelectWish();
	int DeleteWish(String id);
}
