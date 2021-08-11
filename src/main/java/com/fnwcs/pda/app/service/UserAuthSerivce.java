package com.fnwcs.pda.app.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.fnwcs.pda.app.common.SoftLabHumUtils;
import com.fnwcs.pda.app.dao.DbComUsrautMapper;
import com.fnwcs.pda.app.model.DbComUsraut;

@Transactional(readOnly = true)
@Service
public class UserAuthSerivce {

    @Autowired
    private DbComUsrautMapper dbComUsrautDAO;
    
    public List<DbComUsraut> selectUsrAutList(Map<String,Object> map) {
        return dbComUsrautDAO.selectAll();
    }

    @Transactional(readOnly = false, propagation = Propagation.REQUIRED)
    public void addUsrAut(Map<String,Object> map) {
    	dbComUsrautDAO.insert(SoftLabHumUtils.convertMapToVo(map, DbComUsraut.class));
    }
}
