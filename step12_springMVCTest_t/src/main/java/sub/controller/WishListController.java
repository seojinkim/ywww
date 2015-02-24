package sub.controller;

import java.util.List;

import javax.annotation.Resource;

import model.domain.WishListVo;
import model.service.WishListService;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class WishListController {
	@Resource(name="wService")
	private WishListService wService;
	
	@RequestMapping("/selectWish.do")
	public ModelAndView selectWish(){
		System.out.println("------controller-------");
		List<WishListVo> list =  wService.SelectWish();
		ModelAndView mv = new ModelAndView();
		mv.addObject("list", list);			
		mv.setViewName("jsonView");	//id=jsonView 객체를 찾아서 JsonView실행
		return mv;
	}
}
