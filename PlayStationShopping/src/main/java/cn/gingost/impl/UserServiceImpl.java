package cn.gingost.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.gingost.dao.UserDao;
import cn.gingost.pojo.User;
import cn.gingost.service.UserService;

@Service
public class UserServiceImpl implements UserService {
	@Autowired
	private UserDao userDao;

	@Override
	public User findOne(String username, String userpwd) {
		// TODO Auto-generated method stub
		if (username == null || username == "") {
			throw new IllegalArgumentException("用户名不能为空");
		} else if (userpwd == null || userpwd == "") {
			throw new IllegalArgumentException("密码不能为空");
		}
		User user = userDao.findOne(username, userpwd);
		if (user == null) {
			throw new RuntimeException("用户名或密码错误");
		}
		return user;
	}

	@Override
	public void checkReg(String username, String useremail, Long userphone) {
		// TODO Auto-generated method stub
		User u1 = userDao.checkRegName(username);
		User u2 = userDao.checkRegEmail(useremail);
		User u3 = userDao.checkRegPhone(userphone);
		if(u1 != null) {
			throw new RuntimeException("用户名已经存在");
		}
		if(u2!=null) {
			throw new RuntimeException("邮箱已经存在");
		}
		if(u3!=null) {
			throw new RuntimeException("手机号已经存在");
		}
	}

	@Override
	public int addOne(User user) {
		// TODO Auto-generated method stub
		int row = userDao.addOne(user);
		if (row == 0) {
			throw new RuntimeException("由于不可知力量，注册失败");
		}
		return 1;
	}

	@Override
	public User resetPwd(String username) {
		// TODO Auto-generated method stub
		User user=userDao.resetPwd(username);
		if(user==null) {
			throw new RuntimeException("用户名不存在");
		}
		return user;
	}
}
