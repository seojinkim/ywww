package sub.controller;

import javax.annotation.Resource;

import model.service.FestivalService;

import org.springframework.stereotype.Controller;

@Controller
public class FestivalController {
	@Resource(name="fService")
	private FestivalService fService;
}
