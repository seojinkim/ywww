package model.service;

import java.util.List;

import javax.annotation.Resource;

import model.dao.WishListDao;
import model.domain.WishListVo;

import org.springframework.stereotype.Service;

@Service("wService")
public class WishListServiceImpl implements WishListService{
	
	@Resource(name="wDao")
	private WishListDao wDao;
	
	@Override
	public List<WishListVo> SelectWish() {
		System.out.println("Service!");
		return wDao.selectWishList();
	}
	
	@Override
	public int DeleteWish(String id) {
		return wDao.deleteWishList(id);
	}
}
