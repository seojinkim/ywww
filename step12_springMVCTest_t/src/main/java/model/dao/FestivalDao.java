package model.dao;

import java.util.List;

import model.domain.FestivalVo;

public interface FestivalDao {
	List<FestivalVo> selectFestival();
	List<FestivalVo> selectFestivalByKeyword(String keyword);
	List<FestivalVo> selectFestivalByLocation(String location);
	FestivalVo festivalOne(int num);
}
