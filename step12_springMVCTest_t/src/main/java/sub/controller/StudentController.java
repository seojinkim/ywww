package sub.controller;

import java.util.List;

import javax.annotation.Resource;

import model.domain.StudentVo;
import model.service.StudentService;

import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class StudentController {
	
	@Resource(name="stService")
    private StudentService stService;
	
	@RequestMapping("/insert.do")
	@ResponseBody
	public String insert(StudentVo studentVo) {
		String resultMsg = "no";
		int result = stService.studentInsert(studentVo);
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
		List<StudentVo> list =  stService.studentSelect();
		ModelAndView mv = new ModelAndView();
		mv.addObject("list", list);			
		mv.setViewName("jsonView");	//id=jsonView 객체를 찾아서 JsonView실행
		return mv;
	}
	

	@RequestMapping("/delete.do")
	@ResponseBody
	public String delete(String studentNo) {
		String result = "no";
		if(stService.studentDelete(studentNo) > 0 ) {
			result = "ok";
		}
		return result ;
	}
	
	@RequestMapping("idCheck.do")
	@ResponseBody
	public ResponseEntity<String> studentNoCheck(String no){
		String checkMsg = "사용가능";
		
		StudentVo vo = stService.studentNoCheck(no);
		if(vo != null){
			checkMsg = "중복";
		}
		HttpHeaders resHeader = new HttpHeaders();
		resHeader.add("Content-Type", "text/html;charset=UTF-8");
		ResponseEntity resultMsg = new ResponseEntity<String>(checkMsg, resHeader, HttpStatus.OK);
		return resultMsg;
	}
}