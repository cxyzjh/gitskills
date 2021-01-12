package com.manage.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.manage.dao.TreeDao;
import com.manage.entity.Trees;
import com.manage.service.TreeService;

@Service
public class TreeServiceImpl implements TreeService {
	@Autowired
	private TreeDao treeDao;

	@Override
	public List<Trees> getTreegrid(Trees tree) {
		return treeDao.getTreegrid(tree);
	}
}
