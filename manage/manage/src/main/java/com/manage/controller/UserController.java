package com.manage.controller;

import java.io.UnsupportedEncodingException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.apache.ibatis.annotations.Param;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.manage.bean.DataGridResult;
import com.manage.entity.User;
import com.manage.service.UserService;

@Controller
@RequestMapping("/user")
public class UserController {
	Logger logger = Logger.getLogger(UserController.class);
	@Autowired
	private UserService service;

	@RequestMapping("/logout")
	@ResponseBody
	public Object logout(String userCode, String password, HttpSession session) {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("success", true);
		session.removeAttribute("user");
		return map;
	}

	@RequestMapping("/login")
	@ResponseBody
	public Object getLogin(String userCode, String password, HttpSession session) {
		User user = new User();
		user.setUserCode(userCode);
		user.setPwd(password);
		User u = service.getLogin(user);
		Map<String, Object> map = new HashMap<String, Object>();
		if (u != null && !"".equals(u.getUserName())) {
			map.put("success", true);
			session.setAttribute("user", u);
		} else {
			map.put("success", false);
		}
		return map;
	}

	/**
	 * 查询所用用户
	 * 
	 * @param page
	 * @param rows
	 * @param use
	 * @return
	 */
	@RequestMapping("/getAllUser")
	@ResponseBody
	public Object getAllUser(@Param(value = "page") int page, @Param(value = "rows") int rows, User use) {
		DataGridResult<User> result = new DataGridResult<User>();
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("startNum", (page - 1) * rows);
		map.put("pageSize", rows);
		map.put("userCode", use.getUserCode());
		map.put("userName", use.getUserName());
		map.put("email", use.getEmail());
		map.put("pwd", use.getPwd());
		result.setTotal(service.getUserCount(map));
		result.setRows(service.getAllUser(map));
		return result;
	}

	/**
	 * 保存用户信息
	 * 
	 * @param use
	 * @return
	 * @throws UnsupportedEncodingException
	 */
	@RequestMapping("/saveUser")
	@ResponseBody
	public Object saveUser(User use) throws UnsupportedEncodingException {
		// 防止乱码
		use.setUserName(new String(use.getUserName().getBytes("ISO-8859-1"), "UTF-8"));
		int count = service.saveUser(use);
		Map<String, Object> map = new HashMap<String, Object>();
		if (count > 0) {
			map.put("success", true);
		}
		return map;
	}

	/**
	 * 更新用户信息
	 * 
	 * @param use
	 * @return
	 * @throws UnsupportedEncodingException
	 */
	@RequestMapping("/updateUser")
	@ResponseBody
	public Object updateUser(User use) throws UnsupportedEncodingException {
		use.setUserName(new String(use.getUserName().getBytes("ISO-8859-1"), "UTF-8"));
		int count = service.updateUser(use);
		Map<String, Object> map = new HashMap<String, Object>();
		if (count > 0) {
			map.put("success", true);
		}
		return map;
	}

	/**
	 * 删除用户信息,可批量删除
	 * 
	 * @param ids
	 * @return
	 */
	@RequestMapping("/deleteUser")
	@ResponseBody
	public Object deleteUser(int[] ids) {
		int count = service.deleteUser(ids);
		Map<String, Object> map = new HashMap<String, Object>();
		if (count > 0) {
			map.put("success", true);
		}
		return map;
	}
}
