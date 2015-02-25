package model.service;

import javax.annotation.Resource;

import model.dao.CommentsDao;
import model.domain.CommentsVo;

import org.springframework.stereotype.Service;

@Service("cService")
public class CommentsServiceImpl implements CommentsService{
	@Resource(name="cDao")
	private CommentsDao cDao;
	
	@Override
	public int insertComments(CommentsVo vo) {
		System.out.println("Service~~~");
		return cDao.insertComments(vo);
	}
}
