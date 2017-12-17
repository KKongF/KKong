package com.dcowin.kong;

import java.text.DateFormat;
import java.util.Date;
import java.util.List;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		
		String formattedDate = dateFormat.format(date);
		
		model.addAttribute("serverTime", formattedDate );
		
		return "default";
	}
	
	@RequestMapping("/getUserList.do")
	private String getUserList(/*@ModelAttribute UserVO inVO*/) throws Exception {
		// 서비스에서 사용자리스트 조회
		//List<UserVO> userList = userMgmSvc.selectUserList(inVO);
		
		// 클라이언트로 데이터를 전송하기 위해 WrapperVO로 감싸기
		//WrapperVO rtnVO = new WeapperVO();
		//rtnVO.setAaData(userList);
		
		// json String으로 parsing
		//String jsonString = JsonUtil.objectToJsonString(rtnVO);
		String jsonString = "{{email:night08@naver.com, fullNmKr:공유신, userStatCd:NR, superUser:Y},"
				+ "{email:jiyen618@naver.com, fullNmKr:민지연, userStatCd:MR, superUser:N}}";
		return "test";
	}
	
}
