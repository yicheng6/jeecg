package com.jeecg.gowin.service;
import com.jeecg.gowin.entity.TGowinStudentEntity;
import org.jeecgframework.core.common.service.CommonService;

import java.io.Serializable;

public interface TGowinStudentServiceI extends CommonService{
	
 	public void delete(TGowinStudentEntity entity) throws Exception;
 	
 	public Serializable save(TGowinStudentEntity entity) throws Exception;
 	
 	public void saveOrUpdate(TGowinStudentEntity entity) throws Exception;
 	
}
