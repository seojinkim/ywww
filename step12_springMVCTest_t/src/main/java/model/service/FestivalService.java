package model.service;

import java.util.List;

import model.domain.FestivalVo;

public interface FestivalService {
	List<FestivalVo> SelectFestival();
	List<FestivalVo> SelectFestivalByKeyword(String keyword);
	FestivalVo FestivalOne(int num);
}
