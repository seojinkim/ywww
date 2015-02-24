package model.service;

import java.util.List;

import javax.annotation.Resource;

import model.dao.UsersDao;
import model.domain.UsersVo;

import org.springframework.stereotype.Service;


@Service("uService")
public class UsersServiceImpl implements UsersService {

	@Resource(name="uDao")
	private UsersDao uDao;
	
	@Override
	public int uInsert(UsersVo vo) {
		return uDao.usersInsert(vo);
	}

	@Override
	public List<UsersVo> uSelect() {
		return uDao.usersSelect();
	}

	@Override
	public int uUpdate(UsersVo vo) {
		return uDao.usersUpdate(vo);
	}

	@Override
	public int uDelete(String id) {
		return uDao.usersDelete(id);
	}

	@Override
	public UsersVo usersNoCheck(String id) {
		return uDao.usersIdCheck(id);
	}
	
	@Override
	public UsersVo usersLogin(UsersVo vo){
		return uDao.usersLogin(vo);
	}

}