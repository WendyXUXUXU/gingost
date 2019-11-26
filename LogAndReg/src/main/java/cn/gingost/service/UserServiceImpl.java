package cn.gingost.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.gingost.dao.UserMapper;
import cn.gingost.pojo.User;
/*
 * Service层，本例过于简单，其实可以不写
 * 直接在Controller层中自动注入UserMapper usermapper
 * 使用userMapper对象直接调用方法即可
 */
@Service
public class UserServiceImpl implements UserService {
	@Autowired
	private UserMapper userMapper;

	@Override
	public User findOne(User user) {
		// TODO Auto-generated method stub
		return userMapper.findOne(user);
	}

	@Override
	public void addOne(User user) {
		userMapper.addOne(user);
		// TODO Auto-generated method stub

	}

	@Override
	public User checkReg(String username) {
		// TODO Auto-generated method stub
		return userMapper.checkReg(username);
	}

}
