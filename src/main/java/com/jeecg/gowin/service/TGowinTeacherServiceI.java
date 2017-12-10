package com.jeecg.gowin.service;
import com.jeecg.gowin.entity.TGowinTeacherEntity;
import org.jeecgframework.core.common.service.CommonService;

import java.io.Serializable;

public interface TGowinTeacherServiceI extends CommonService{
	
 	public void delete(TGowinTeacherEntity entity) throws Exception;
 	
 	public Serializable save(TGowinTeacherEntity entity) throws Exception;
 	
 	public void saveOrUpdate(TGowinTeacherEntity entity) throws Exception;
 	
}
