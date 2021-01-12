package com.manage.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.manage.entity.Trees;
import com.manage.service.TreeService;

@Controller
@RequestMapping("/tree")
public class TreeController {
	@Autowired
	private TreeService treeService;

	/**
	 * »ñÈ¡²Ëµ¥Ê÷
	 * 
	 * @param tree
	 * @return
	 */
	@RequestMapping("/getTreegrid")
	@ResponseBody
	public Object getTreeGird(Trees tree) {
		List<Trees> list = treeService.getTreegrid(tree);
		return list;
	}
}
