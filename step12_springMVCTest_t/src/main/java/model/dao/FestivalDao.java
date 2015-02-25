package model.dao;

import java.util.List;

import model.domain.FestivalVo;

public interface FestivalDao {
	List<FestivalVo> selectFestival();
	List<FestivalVo> selectFestivalByKeyword(String keyword);
	FestivalVo festivalOne(int num);
}
