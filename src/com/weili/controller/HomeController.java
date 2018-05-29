package com.weili.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.weili.service.WjdcService;

@Controller
public class HomeController {

	@Autowired
	private WjdcService wjdcService;
	

	public void setWjdcService(WjdcService wjdcService) {
		this.wjdcService = wjdcService;
	}


	@RequestMapping(value = "/welcome", method = RequestMethod.GET)
	public String welcome() {
		return "index";
	}
}
