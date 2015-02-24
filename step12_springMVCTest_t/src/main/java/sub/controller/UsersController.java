package sub.controller;

import java.util.List;

import javax.annotation.Resource;

import model.domain.UsersVo;
import model.service.UsersService;

import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class UsersController {
	 
	
	@Resource(name="uService")
    private UsersService uService;
	
	@RequestMapping("/insert.do")
	@ResponseBody
	public String insert(UsersVo UsersVo) {
		String resultMsg = "id";
		int result = uService.uInsert(UsersVo);
		if(result > 0 )  {
			resultMsg = "ok";
		}
		return resultMsg ;
	}
	
	
	/* 스프링 웹 설정 파일 참조 : springAjaxMyBatis-servlet.xml  
		<bean id="jsonView" class="net.sf.json.spring.web.servlet.view.JsonView" >
			<property name="contentType" value="text/html;charset=UTF-8" />
		</bean> */
	@RequestMapping("/select.do")
	public ModelAndView select(){
		List<UsersVo> list =  uService.uSelect();
		ModelAndView mv = new ModelAndView();
		mv.addObject("list", list);			
		mv.setViewName("jsonView");	//id=jsonView 객체를 찾아서 JsonView실행
		return mv;
	}
	
	/*@RequestMapping("/selectWish.do")
	public ModelAndView selectWish(){
		System.out.println("------controller-------");
		List<UsersVo> list =  uService.uSelectWish();
		ModelAndView mv = new ModelAndView();
		mv.addObject("list", list);			
		mv.setViewName("jsonView");	//id=jsonView 객체를 찾아서 JsonView실행
		return mv;
	}*/
	
	@RequestMapping("/delete.do")
	@ResponseBody
	public String delete(String studentNo) {
		String result = "no";
		if(uService.uDelete(studentNo) > 0 ) {
			result = "ok";
		}
		return result ;
	}
	
	@RequestMapping("idCheck.do")
	@ResponseBody
	public ResponseEntity<String> usersIdCheck(String id){
		String checkMsg = "사용가능";
		
		UsersVo vo = uService.usersIdCheck(id);
		if(vo != null){
			checkMsg = "중복";
		}
		HttpHeaders resHeader = new HttpHeaders();
		resHeader.add("Content-Type", "text/html;charset=UTF-8");
		ResponseEntity resultMsg = new ResponseEntity<String>(checkMsg, resHeader, HttpStatus.OK);
		return resultMsg;
	}
	
	@RequestMapping("/login.do")
	@ResponseBody
	public ModelAndView usersLogin(UsersVo vo1){
		
		UsersVo vo = uService.usersLogin(vo1);
		ModelAndView mv = new ModelAndView();
		mv.addObject("vo", vo);			
		mv.setViewName("jsonView");	//id=jsonView 객체를 찾아서 JsonView실행
		return mv;

	}
	
	
	
	
	
	
	
	
	
	
/*	public void usersLogin(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String url = "404.html";	
		UsersVo vo = new UsersVo(request.getParameter("id"),request.getParameter("pw"));
		System.out.println(vo);
		try {			
			request.getSession().setAttribute("vo", uService.usersLogin(vo));
			System.out.println("굿");
			request.getSession().setAttribute("loginStatus", "ok");
			url = "index.html";
		} catch (Exception e) {	
			e.printStackTrace();
			request.getSession().setAttribute("error", "에러");
		}
		request.getRequestDispatcher(url).forward(request, response);
	}*/
	
	
	
	@RequestMapping(value="A.do")
	public String getProcess(){
		return "welcome";
	}
	
	@RequestMapping(value="B.do")
	public String getProcesss(){
		return "login";
	}
	
	@RequestMapping(value="C.do")
	public String getProcessC(){
		return "welcome4";
	}
}