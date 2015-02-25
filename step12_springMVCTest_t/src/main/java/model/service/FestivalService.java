package model.service;

import java.util.List;

import model.domain.FestivalVo;

public interface FestivalService {
	List<FestivalVo> SelectFestival();
	FestivalVo FestivalOne(int num);
}
