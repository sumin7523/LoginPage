package kr.ac.shu.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/")
public class HomeController {
	
	@RequestMapping(value = {"/", ""}, method = RequestMethod.GET)
	public ModelAndView homeGET() throws Exception {
		ModelAndView mav = new ModelAndView();	
		mav.setViewName("redirect:/auth/login");
		return mav;
	}
	
	//로그인 시 첫 화면
	@RequestMapping(value = "/dashboard", method = RequestMethod.GET)
	public ModelAndView dashboardGET() throws Exception {
		ModelAndView mav = new ModelAndView();
		
		//사이트 이동경로
		String breadcrumbTitle = "아무튼 택배"; 
		String[] breadcrumbItem = {"대시보드", breadcrumbTitle};
		mav.addObject("breadcrumbItem", breadcrumbItem);
		
		mav.setViewName("dashboard/dashboard");
		
		return mav;
	}
}

