package cn.gingost.service;

import cn.gingost.pojo.User;


public interface UserService {
	User findOne(User user);
	void addOne(User user);
	User checkReg(String username);
}
