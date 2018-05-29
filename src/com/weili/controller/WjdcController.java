package com.weili.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.weili.model.WjdcModel;
import com.weili.service.WjdcService;
import com.weili.util.UUIDTool;

@Controller
public class WjdcController {
	@Autowired
	private WjdcService wjdcService;

	public WjdcService getWjdcService() {
		return wjdcService;
	}

	public void setWjdcService(WjdcService wjdcService) {
		this.wjdcService = wjdcService;
	}
	//用户调查问卷信息
	@ResponseBody
	@RequestMapping("/wjdcInfo")
	public String insertUserInfo(HttpServletRequest request,HttpServletResponse response){
		/*String id = UUIDTool.getUUID();*/
		String name=request.getParameter("examineenameInput");
		String phone=request.getParameter("examineeidInput");
		String hzyycjpx=request.getParameter("examineehzyyInput");
		String jgpj=request.getParameter("examineecenterschool");
		String yjsspj=request.getParameter("examineeyjssschool");
		String ztmyd=request.getParameter("examineeztmydschool");
		String gjyj=request.getParameter("examineegjyjInput");
		boolean isPhone = wjdcService.regCheckPhone(phone);
		if(isPhone){
			return "您的手机号已经做过调查问卷啦！";
		}else{
			WjdcModel wjdcModel = new WjdcModel();
			wjdcModel.setId(UUIDTool.getUUID());
			wjdcModel.setName(name);
			wjdcModel.setPhone(phone);
			wjdcModel.setHzyycjpx(hzyycjpx);
			wjdcModel.setJgpj(jgpj);
			wjdcModel.setYjsspj(yjsspj);
			wjdcModel.setZtmyd(ztmyd);
			wjdcModel.setGjyj(gjyj);
			
			boolean bool = wjdcService.insertWjdcInfo(wjdcModel);
			if(bool){
				return "感谢您的参与，再见！";
			}else{
				return "调查问卷出错，请重新录入！";
			}
		}
	}
}
