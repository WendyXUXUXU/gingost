package cn.gingost.controller;

import java.text.SimpleDateFormat;
import java.util.Date;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping("/")
public class PagesController {

	@RequestMapping("{page}")
	public String page(@PathVariable String page) {
		return page;
	}

	@RequestMapping("user/getTime")
	@ResponseBody
	public String getTime() {
		Date date = new Date();
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy年MM月dd日");
		String now = sdf.format(date);
		return now;
	}
}
