package com.fnwcs.pda.app.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import com.fnwcs.pda.app.model.DbComUsraut;
import com.fnwcs.pda.app.service.UserAuthSerivce;

@RestController
@RequestMapping("/fnwcs/pda/user/*")
public class UserAutController {
	
	@Autowired
	private UserAuthSerivce usrAutSvc;
	
	private static final Logger logger = LoggerFactory.getLogger(UserAutController.class);
	
	
	@RequestMapping(value = "hello", method = {RequestMethod.GET, RequestMethod.POST})
	public String HelloWorld() {
		return "Hello World";
	}
	
	@RequestMapping(value = "getUsrAutList/{usrId}", method = {RequestMethod.GET, RequestMethod.POST})
	public @ResponseBody List<DbComUsraut> selectUsrAutList(@PathVariable String usrId) {
	    logger.info("@@@@@@@@@@@ getUsrAutList usrId =>>"+usrId);
	    
	    Map<String,Object> paramMap = new HashMap();
	    paramMap.put("usrId", usrId);
	    
	    List<DbComUsraut> list = usrAutSvc.selectUsrAutList(paramMap);
		return list;
	}
}
