package model.dao;

import java.util.List;

import model.domain.UsersVo;

public interface UsersDao {
	int usersInsert(UsersVo vo);
	List<UsersVo> usersSelect();
	int usersUpdate(UsersVo vo);
	int usersDelete(String usersNo);
	UsersVo usersIdCheck(String usersNo);	
	UsersVo usersLogin(UsersVo vo);
}