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
}
