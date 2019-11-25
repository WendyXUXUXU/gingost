package cn.gingost.service;



import cn.gingost.pojo.User;

public interface UserService {
	public User findOne(User user);
	public void addOne(User user);
}
