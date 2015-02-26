package model.service;

import java.util.List;

import model.domain.FestivalVo;

public interface FestivalService {
	List<FestivalVo> SelectFestival();
	List<FestivalVo> SelectFestivalByKeyword(String keyword);
	List<FestivalVo> SelectFestivalByLocation(String location);
	List<FestivalVo> SelectFestivalByTheme(String themeName);
	List<FestivalVo> SelectFestivalByDate(String txtNum, String txtNum2);
	FestivalVo FestivalOne(int num);
}
