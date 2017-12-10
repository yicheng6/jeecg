package com.jeecg.gowin.service;
import com.jeecg.gowin.entity.TGowinClassEntity;
import org.jeecgframework.core.common.service.CommonService;

import java.io.Serializable;

public interface TGowinClassServiceI extends CommonService{
	
 	public void delete(TGowinClassEntity entity) throws Exception;
 	
 	public Serializable save(TGowinClassEntity entity) throws Exception;
 	
 	public void saveOrUpdate(TGowinClassEntity entity) throws Exception;
 	
}
