package com.weili.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.weili.model.WjdcModel;
import com.weili.model.mapper.WjdcMapper;

@Service
public class WjdcService {

	@Autowired
	private WjdcMapper wjdcMapper;

	public void setWjdcMapper(WjdcMapper wjdcMapper) {
		this.wjdcMapper = wjdcMapper;
	}
	//检查手机号是否重复
	public boolean regCheckPhone(String phone){
		Integer count = wjdcMapper.regCheckPhone(phone);
		return count == null || count == 0 ? false : true;
	}
	//用户问卷调查
	public boolean insertWjdcInfo(WjdcModel wjdcModel){
		Integer count = wjdcMapper.insertUser(wjdcModel);
		return count == null || count == 0 ? false : true;
	}
}
