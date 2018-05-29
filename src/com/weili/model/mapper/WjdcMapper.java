package com.weili.model.mapper;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;

import com.weili.model.WjdcModel;

public interface WjdcMapper {
	//插入前检查手机号是否重复
	@Select("SELECT count(1) FROM T_DCWJ_USER WHERE PHONE = #{phone}")
	Integer regCheckPhone(String phone);
	//插入问卷调查信息
	@Insert("INSERT INTO T_DCWJ_USER (ID,NAME,PHONE,HZYYCJPX,JGPJ,YJSSPJ,ZTMYD,GJYJ)"
			+ "VALUES(#{id},#{name},#{phone},#{hzyycjpx},#{jgpj},#{yjsspj},#{ztmyd},#{gjyj})")
	Integer insertUser(WjdcModel wjdcModel);
}
