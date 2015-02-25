package sub.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import model.domain.FestivalVo;
import model.service.FestivalService;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class FestivalController {
	@Resource(name="fService")
	private FestivalService fService;
	
	@RequestMapping(value="selectFestival", method = RequestMethod.POST)
	public ModelAndView selectFestival(HttpSession session, HttpServletRequest request){
		System.out.println("dd시작");
		List<FestivalVo> list =  fService.SelectFestival();
		System.out.println("dd끝");
		session.setAttribute("festivalList", list);
		System.out.println("세션설정");
		ModelAndView mv = new ModelAndView();
		mv.addObject("list", list);	
		mv.setViewName("jsonView");	//id=jsonView 객체를 찾아서 JsonView실행
		return mv;
	}
	
	@RequestMapping(value="FestivalOne", method = RequestMethod.GET)
	public ModelAndView festivalOne(HttpSession session, HttpServletRequest request){
		System.out.println("11");
		System.out.println(request.getParameter("num"));
		int num = Integer.parseInt(request.getParameter("num"));
		System.out.println("dd시작2");
		FestivalVo vo =  fService.FestivalOne(num);
		System.out.println("dd끝2");
		session.setAttribute("vo", vo);
		System.out.println("세션설정2");
		ModelAndView mv = new ModelAndView();
		mv.addObject("vo", vo);	
		mv.setViewName("redirect:blog-item.jsp");	//id=jsonView 객체를 찾아서 JsonView실행
		return mv;
	}
}
