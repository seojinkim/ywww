package model.dao;

import java.util.List;

import model.domain.FestivalVo;

public interface FestivalDao {
	List<FestivalVo> selectFestival();
	FestivalVo festivalOne(int num);
}
