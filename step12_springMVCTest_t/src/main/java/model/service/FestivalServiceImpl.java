package model.service;

import java.util.List;

import javax.annotation.Resource;

import model.dao.FestivalDao;
import model.domain.FestivalVo;

import org.springframework.stereotype.Service;

@Service("fService")
public class FestivalServiceImpl implements FestivalService{
	@Resource(name="fDao")
	private FestivalDao fDao;
	
	@Override
	public List<FestivalVo> SelectFestival() {
		return fDao.selectFestival();
	}
	
	@Override
	public List<FestivalVo> SelectFestivalByKeyword(String keyword) {
		return fDao.selectFestivalByKeyword(keyword);
	}
	
	@Override
	public List<FestivalVo> SelectFestivalByLocation(String location) {
		return fDao.selectFestivalByLocation(location);
	}
	
	@Override
	public FestivalVo FestivalOne(int num) {
		return fDao.festivalOne(num);
	}
}
