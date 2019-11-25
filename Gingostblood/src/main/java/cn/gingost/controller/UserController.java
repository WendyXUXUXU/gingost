package cn.gingost.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import cn.gingost.pojo.User;
import cn.gingost.service.UserService;

@Controller
public class UserController {
	@Autowired
	private UserService userService;

	@RequestMapping("/login")
	public String login(User user,HttpSession session,Model model) {
		User u = userService.findOne(user);
		session.setAttribute("user", u);
		String msg="用户名或密码错误";
		model.addAttribute("msg",msg);
		if(u!=null) {
			return "main_login";
		}else
			return "login_view";
	}
}
