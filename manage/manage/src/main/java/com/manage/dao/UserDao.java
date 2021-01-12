package com.manage.dao;

import java.util.List;
import java.util.Map;

import com.manage.entity.User;
public interface UserDao {
	public User getLogin(User user);
	public List<User> getAllUser(Map<String,Object> map);
	public int getUserCount(Map<String,Object> map);
	public int saveUser(User use);
	public int updateUser(User use);
	public int deleteUser(int[] ids);
    public int delUserRole(String userId);
    public int saveUserRole(Map<String,Object> map);
}
