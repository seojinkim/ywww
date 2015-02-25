package model.service;

import java.util.List;

import model.domain.FestivalVo;

public interface FestivalService {
	List<FestivalVo> SelectFestival();
	List<FestivalVo> SelectFestivalByKeyword(String keyword);
	List<FestivalVo> SelectFestivalByLocation(String location);
	FestivalVo FestivalOne(int num);
}
