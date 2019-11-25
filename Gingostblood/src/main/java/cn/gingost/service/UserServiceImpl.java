package cn.gingost.service;



import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.gingost.dao.UserMapper;
import cn.gingost.pojo.User;

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
		// TODO Auto-generated method stub
		userMapper.addOne(user);
	}

}
