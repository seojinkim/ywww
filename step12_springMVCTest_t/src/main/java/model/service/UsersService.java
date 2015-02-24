package model.service;

import java.util.List;

import model.domain.UsersVo;

public interface UsersService {
	int uInsert(UsersVo vo);
	List<UsersVo> uSelect();
	int uUpdate(UsersVo vo);
	int uDelete(String id);
	UsersVo usersIdCheck(String id);
	UsersVo usersLogin(UsersVo vo);
}
