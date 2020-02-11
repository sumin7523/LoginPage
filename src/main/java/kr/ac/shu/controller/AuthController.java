package kr.ac.shu.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/auth")
public class AuthController {
		
	// 로그인
	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public ModelAndView loginGET() throws Exception {
		ModelAndView mav = new ModelAndView();

		mav.setViewName("auth/login");
				
		return mav;
	}
	
//	// 로그인 처리
//	@RequestMapping(value = "/login", method = RequestMethod.POST)
//	public ModelAndView loginPOST() throws Exception {
//		ModelAndView mav = new ModelAndView();
//		mav.setViewName("redirect:/dashboard");		
//		return mav;
//	}
	
	
//// 추가
	//@RequestMapping(value = "/add", method = RequestMethod.GET)
//	public ModelAndView addGet() throws Exception {
	//	ModelAndView mav = new ModelAndView();
				
	//	mav.setViewName("auth/register");		

	//	return mav;
	//}
}
