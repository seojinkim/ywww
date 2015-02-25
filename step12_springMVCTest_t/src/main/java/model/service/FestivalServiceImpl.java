package model.service;

import javax.annotation.Resource;

import model.dao.FestivalDao;

import org.springframework.stereotype.Service;

@Service("fService")
public class FestivalServiceImpl implements FestivalService{
	@Resource(name="fDao")
	private FestivalDao fDao;
}
