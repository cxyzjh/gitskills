package com.manage.service.impl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.manage.dao.UserDao;
import com.manage.entity.User;
import com.manage.service.UserService;
@Service
public class UserServiceImpl implements UserService {
	@Autowired
	private UserDao dao;
	public User getLogin(User user) {
		return dao.getLogin(user);
	}

	public List<User> getAllUser(Map<String, Object> map) {

		return dao.getAllUser(map);
	}

	public int getUserCount(Map<String, Object> map) {

		return dao.getUserCount(map);
	}

	public int saveUser(User use) {

		return dao.saveUser(use);
	}

	public int updateUser(User use) {

		return dao.updateUser(use);
	}

	public int deleteUser(int[] ids) {

		return dao.deleteUser(ids);
	}
}
