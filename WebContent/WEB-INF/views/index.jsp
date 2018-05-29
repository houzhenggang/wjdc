<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta name="viewport" content="width=device-width,initial-scale=1, minimum-scale=1.0, maximum-scale=1, user-scalable=no, minimal-ui">
<title>问卷调查</title>
<script type="text/javascript" src="resources/js/jquery-1.11.0.js"></script>
		<!--自定义-->
		<link rel="stylesheet" href="resources/css/index.css" />
		<link rel="stylesheet" href="resources/css/style.css" />
<script type="text/javascript">
	function checkForm(){
		debugger;
		var name = document.forms["wjdcForm"].examineenameInput;
		var phone = document.forms["wjdcForm"].examineeidInput;
		var hzyycjpx = document.forms["wjdcForm"].examineehzyyInput;
		var jgpj = document.forms["wjdcForm"].examineecenterschool.value;
		var yjsspj = document.forms["wjdcForm"].examineeyjssschool.value;
		var ztmyd = document.forms["wjdcForm"].examineeztmydschool.value;
		var gjyj = document.forms["wjdcForm"].examineegjyjInput;
		
		var regSpace = /^\S+$/;  //选项不能为空
		var regPho = /^1[0-9]{10}$/;  //验证手机号
		if(!regSpace.test(name.value)){
			alert("姓名不能为空~");
			return false;	
		}if(!regSpace.test(phone.value)){
			alert("手机号不能为空~");
			return false;	
		}if(!regSpace.test(hzyycjpx.value)){
			alert("参加培训原因不能为空~");
			return false;	
		}if(!regSpace.test(gjyj.value)){
			alert("请填写对我们的改进意见~");
			return false;	
		}if(!regPho.test(phone.value)){
			alert("请输入正确的手机号~");
			return false;	
		}
		$.ajax({
			type:"POST",
			url:"/wjdc/wjdcInfo",
			data:$("#wjdcForm").serialize(),
			success:function(res){
				alert(res);
				window.close();
			},
		    fail:function(res){
			   alert(res);
			   window.close();
			}
			
		})
	}
</script>	
</head>
<body class="test-body">
	<form name="wjdcForm" action="#" id="wjdcForm" >
	<!--header-start-->
		<header class="header-wrap testheader-wrap">
			<!--title-satrt-->
			<div class="testheader-title"><span>关于凌智拓展对贵公司的一项调查</span></div>
			<!--title-end-->

		</header>
		<!--header-end-->
		
		<!--输入项-start-->
		<div class="examineeWrap">
			<!--基本信息-start-->
			<div class="examineeBasic-information">
				<!--姓名-->
				<div class="examineeBasic-li examineeName">
					<div class="examineeBasic-liLeft"><span>姓名:</span></div>
					<div class="examineeBasic-liRight">
						<input type="text" name="examineenameInput" value="" placeholder="请输入姓名" class="examineenameInput" id="examineenameInput" />
					</div>
				</div>
				<div class="line"></div>
				<!--联系方式-->
				<div class="examineeBasic-li examineeId">
					<div class="examineeBasic-liLeft"><span>手机号码:</span></div>
					<div class="examineeBasic-liRight">
						<input type="text" name="examineeidInput" value="" placeholder="联系方式" class="examineeidInput" id="examineeidInput" />
					</div>
				</div>
				<div class="line"></div>
				<!--何种原因参加培训-->
				<div class="examineeBasic-li examineeId">
					<div class="examineeBasic-liLeft"><span>何种原因参加培训:</span></div>
					<div class="examineeBasic-liRight">
						<input type="text" name="examineehzyyInput" value="" placeholder="何种原因参加培训" class="examineehzyyInput" id="examineehzyyInput" />
					</div>
				</div>
				<div class="line"></div>
				<!--教官评价-->
				<div class="examineeBasic-li examineeSchool">
					<div class="examineeBasic-liLeft"><span>教官评价:</span></div>
					<div class="examineeBasic-liRight">
						<select name="examineecenterschool" class="examineecenterschool">
							<option value="非常满意">非常满意</option>
							<option value="满意">满意</option>
							<option value="一般">一般</option>
							<option value="不太满意">不太满意</option>
						</select>
					</div>
				</div>
				<div class="line"></div>
				<!--硬件设施评价-->
				<div class="examineeBasic-li examineeSchool">
					<div class="examineeBasic-liLeft"><span>硬件设施评价:</span></div>
					<div class="examineeBasic-liRight">
						<select name="examineeyjssschool" class="examineeyjssschool">
							<option value="非常满意">非常满意</option>
							<option value="满意">满意</option>
							<option value="一般">一般</option>
							<option value="不太满意">不太满意</option>
						</select>
					</div>
				</div>
				<div class="line"></div>
				
				<!--中心校-->
				<div class="examineeBasic-li examineeSchool">
					<div class="examineeBasic-liLeft"><span>整体满意度:</span></div>
					<div class="examineeBasic-liRight">
						<select name="examineeztmydschool" class="examineeztmydschool">
						 	<option value="非常满意">非常满意</option>
							<option value="满意">满意</option>
							<option value="一般">一般</option>
							<option value="不太满意">不太满意</option>
						</select>
					</div>
				</div>
				<div class="line"></div>
				<!--改进意见-->
				<div class="examineeBasic-li examineeId">
					<div class="examineeBasic-liLeft"><span>改进意见(建议):</span></div>
					<div class="examineeBasic-liRight">
						<input type="text" name="examineegjyjInput" value="" placeholder="如果公司一但采用您的宝贵意见，会有相应的奖励哦" class="examineegjyjInput"  />
					</div>
				</div>
				<div class="line"></div>
				<!--提交-->
				<div class="examineeBasic-li examineeButton">
					<!-- <div class="examineeSubmit">提交</div> -->
					<input type="button" onclick="checkForm()" value="提交" class="examineeSubmit"/>
				</div>
			</div>
			<!--基本信息-end-->
		</div>
		<!--输入项-end-->
	
	</form>
</body>

</html>