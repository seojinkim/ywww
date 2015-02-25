package sub.controller;

import java.util.List;

import javax.annotation.Resource;

import model.domain.WishListVo;
import model.service.WishListService;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
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
	
	@RequestMapping("/insertWish.do")
	@ResponseBody
	public String insert(WishListVo wishlistVo) {
		String resultMsg = "no";
		int result = wService.insertWish(wishlistVo);
		if(result > 0 )  {
			resultMsg = "ok";
		}
		return resultMsg ;
	}
	
	@RequestMapping("/deleteWish.do")
	@ResponseBody
	public String deleteWish(String id) {
		String result = "no";
		if(wService.DeleteWish(id) > 0 ) {
			result = "ok";
		}
		return result ;
	}
}
