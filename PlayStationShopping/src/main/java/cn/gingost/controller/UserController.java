package cn.gingost.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import cn.gingost.pojo.User;
import cn.gingost.service.UserService;
import cn.gingost.vo.JsonResult;

@Controller
@RequestMapping("/user/")
public class UserController {
	@Autowired	
	private UserService userService;
	@RequestMapping("doFindOne")
	@ResponseBody
	public JsonResult doFindOne(String username,String userpwd) {
		return new JsonResult(userService.findOne(username, userpwd));
	}
	@RequestMapping("doLogin")
	public String doLogin(String username,String userpwd,Model model) {
		User user=userService.findOne(username, userpwd);
		model.addAttribute("user",user);
		return "sys/main_login";
	}
	@RequestMapping("doCheckReg")
	@ResponseBody
	public JsonResult doCheckReg(String username, String useremail, Long userphone) {
		userService.checkReg(username, useremail, userphone);
		return new JsonResult("？？？？");
	}
	@RequestMapping("doAddOne")
	public String doAddOne(User user) {
		userService.addOne(user);
		return "redirect:/regok";
	}
	@RequestMapping("doRestPwd")
	@ResponseBody
	public JsonResult doRestPwd(String username) {
		return new JsonResult(userService.resetPwd(username));
	}
}
