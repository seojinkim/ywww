package model.dao;

import java.util.List;

import model.domain.FestivalVo;

public interface FestivalDao {
	List<FestivalVo> selectFestival();
	List<FestivalVo> selectFestivalByKeyword(String keyword);
	List<FestivalVo> selectFestivalByLocation(String location);
	List<FestivalVo> selectFestivalByTheme(String themeName);
	List<FestivalVo> selectFestivalByDate(String txtDate, String txtDate2);
	FestivalVo festivalOne(int num);
}
