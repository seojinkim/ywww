package sub.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import model.domain.CommentsVo;
import model.service.CommentsService;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class CommentsController {
	@Resource(name="cService")
    private CommentsService cService;
	
	@RequestMapping(value="insertComments", method=RequestMethod.GET)
//	@ResponseBody
	public String insertComments(CommentsVo vo, HttpServletRequest request) {
		
		System.out.println(vo);
		System.out.println("Controller!!!!!!!!!!");
		String resultMsg = "id";
		int result = cService.insertComments(vo);
		if(result > 0 )  {
			resultMsg = "ok";
		}
		return resultMsg ;
	}
}
