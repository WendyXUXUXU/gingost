package cn.gingost.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;


/*
 * 页面跳转方法
 */
@Controller
public class PagesController {
	@RequestMapping("/{page}")
	public String pageTo(@PathVariable String page) {
		return page;
	}
}
