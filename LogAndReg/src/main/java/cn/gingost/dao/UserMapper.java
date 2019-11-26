package cn.gingost.dao;

import cn.gingost.pojo.User;

public interface UserMapper {
	//用户登录
	User findOne(User user);
	//用户注册
	void addOne(User user);
	//注册时的重名检测
	User checkReg(String username);
}
