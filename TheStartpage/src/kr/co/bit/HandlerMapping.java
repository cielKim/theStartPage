package kr.co.bit;

import java.util.HashMap;
import java.util.Map;

import kr.co.bit.controller.Controller;
import kr.co.bit.itnews.ItnewsController;
import kr.co.bit.itword.ItwordController;
import kr.co.bit.config.ConfigController;
import kr.co.bit.config.ConfigProcessController;
import kr.co.bit.config.MyConfigProcessController;
import kr.co.bit.login.LoginProcessController;
import kr.co.bit.login.LogoutController;
import kr.co.bit.member.FindPwdController;
import kr.co.bit.member.JoinCheckController;
import kr.co.bit.member.JoinProcessController;
import kr.co.bit.memopad.MemoDeleteController;
import kr.co.bit.memopad.MemoWriteController;
import kr.co.bit.papersearch.SearchController;
import kr.co.bit.tipandinfo.TipAndInfoController;
import kr.co.bit.weather.WeatherController;

public class HandlerMapping {
	private Map<String, Controller> mappings = null;
	
	public HandlerMapping() {
		mappings = new HashMap<String, Controller>();
		// 예시
		// mappings.put("/freeBoardList.do", new FreeBoardListController());
		mappings.put("/joinProcess.do", new JoinProcessController());
		mappings.put("/joinCheck.do", new JoinCheckController());
		mappings.put("/login.do", new LoginProcessController());
		mappings.put("/logout.do", new LogoutController());
		mappings.put("/config.do", new ConfigController());
		mappings.put("/configProcess.do", new ConfigProcessController());
		mappings.put("/myConfigProcess.do", new MyConfigProcessController());
		mappings.put("/search.do", new SearchController());
		mappings.put("/itword.do", new ItwordController());
		mappings.put("/memoWrite.do", new MemoWriteController());
		mappings.put("/memoDelete.do", new MemoDeleteController());
		mappings.put("/weather.do", new WeatherController());
		mappings.put("/itnews.do", new ItnewsController());
		mappings.put("/tipandinfo.do", new TipAndInfoController());
		mappings.put("/findPwd.do", new FindPwdController());
		
		}
	public Controller getContoller(String uri) {
		return mappings.get(uri);
	}
	
}
