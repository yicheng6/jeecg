package com.jeecg.gowin.entity;

import java.math.BigDecimal;
import java.util.Date;
import java.lang.String;
import java.lang.Double;
import java.lang.Integer;
import java.math.BigDecimal;
import javax.xml.soap.Text;
import java.sql.Blob;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import org.hibernate.annotations.GenericGenerator;
import javax.persistence.SequenceGenerator;
import org.jeecgframework.poi.excel.annotation.Excel;

/**   
 * @Title: Entity
 * @Description: 班级管理
 * @author onlineGenerator
 * @date 2017-12-10 22:59:23
 * @version V1.0   
 *
 */
@Entity
@Table(name = "t_gowin_class", schema = "")
@SuppressWarnings("serial")
public class TGowinClassEntity implements java.io.Serializable {
	/**主键*/
	private java.lang.String id;
	/**创建人名称*/
	private java.lang.String createName;
	/**创建人登录名称*/
	private java.lang.String createBy;
	/**创建日期*/
	private java.util.Date createDate;
	/**更新人名称*/
	private java.lang.String updateName;
	/**更新人登录名称*/
	private java.lang.String updateBy;
	/**更新日期*/
	private java.util.Date updateDate;
	/**班级代码*/
	@Excel(name="班级代码",width=15)
	private java.lang.String xzbdm;
	/**班级名称*/
	@Excel(name="班级名称",width=15)
	private java.lang.String xzbmc;
	/**班主任*/
	@Excel(name="班主任",width=15,dictTable ="t_gowin_teacher",dicCode ="gh",dicText ="xm")
	private java.lang.String bzrgh;
	
	/**
	 *方法: 取得java.lang.String
	 *@return: java.lang.String  主键
	 */
	@Id
	@GeneratedValue(generator = "paymentableGenerator")
	@GenericGenerator(name = "paymentableGenerator", strategy = "uuid")

	@Column(name ="ID",nullable=false,length=36)
	public java.lang.String getId(){
		return this.id;
	}

	/**
	 *方法: 设置java.lang.String
	 *@param: java.lang.String  主键
	 */
	public void setId(java.lang.String id){
		this.id = id;
	}
	/**
	 *方法: 取得java.lang.String
	 *@return: java.lang.String  创建人名称
	 */

	@Column(name ="CREATE_NAME",nullable=true,length=50)
	public java.lang.String getCreateName(){
		return this.createName;
	}

	/**
	 *方法: 设置java.lang.String
	 *@param: java.lang.String  创建人名称
	 */
	public void setCreateName(java.lang.String createName){
		this.createName = createName;
	}
	/**
	 *方法: 取得java.lang.String
	 *@return: java.lang.String  创建人登录名称
	 */

	@Column(name ="CREATE_BY",nullable=true,length=50)
	public java.lang.String getCreateBy(){
		return this.createBy;
	}

	/**
	 *方法: 设置java.lang.String
	 *@param: java.lang.String  创建人登录名称
	 */
	public void setCreateBy(java.lang.String createBy){
		this.createBy = createBy;
	}
	/**
	 *方法: 取得java.util.Date
	 *@return: java.util.Date  创建日期
	 */

	@Column(name ="CREATE_DATE",nullable=true,length=20)
	public java.util.Date getCreateDate(){
		return this.createDate;
	}

	/**
	 *方法: 设置java.util.Date
	 *@param: java.util.Date  创建日期
	 */
	public void setCreateDate(java.util.Date createDate){
		this.createDate = createDate;
	}
	/**
	 *方法: 取得java.lang.String
	 *@return: java.lang.String  更新人名称
	 */

	@Column(name ="UPDATE_NAME",nullable=true,length=50)
	public java.lang.String getUpdateName(){
		return this.updateName;
	}

	/**
	 *方法: 设置java.lang.String
	 *@param: java.lang.String  更新人名称
	 */
	public void setUpdateName(java.lang.String updateName){
		this.updateName = updateName;
	}
	/**
	 *方法: 取得java.lang.String
	 *@return: java.lang.String  更新人登录名称
	 */

	@Column(name ="UPDATE_BY",nullable=true,length=50)
	public java.lang.String getUpdateBy(){
		return this.updateBy;
	}

	/**
	 *方法: 设置java.lang.String
	 *@param: java.lang.String  更新人登录名称
	 */
	public void setUpdateBy(java.lang.String updateBy){
		this.updateBy = updateBy;
	}
	/**
	 *方法: 取得java.util.Date
	 *@return: java.util.Date  更新日期
	 */

	@Column(name ="UPDATE_DATE",nullable=true,length=20)
	public java.util.Date getUpdateDate(){
		return this.updateDate;
	}

	/**
	 *方法: 设置java.util.Date
	 *@param: java.util.Date  更新日期
	 */
	public void setUpdateDate(java.util.Date updateDate){
		this.updateDate = updateDate;
	}
	/**
	 *方法: 取得java.lang.String
	 *@return: java.lang.String  班级代码
	 */

	@Column(name ="XZBDM",nullable=false,length=32)
	public java.lang.String getXzbdm(){
		return this.xzbdm;
	}

	/**
	 *方法: 设置java.lang.String
	 *@param: java.lang.String  班级代码
	 */
	public void setXzbdm(java.lang.String xzbdm){
		this.xzbdm = xzbdm;
	}
	/**
	 *方法: 取得java.lang.String
	 *@return: java.lang.String  班级名称
	 */

	@Column(name ="XZBMC",nullable=false,length=32)
	public java.lang.String getXzbmc(){
		return this.xzbmc;
	}

	/**
	 *方法: 设置java.lang.String
	 *@param: java.lang.String  班级名称
	 */
	public void setXzbmc(java.lang.String xzbmc){
		this.xzbmc = xzbmc;
	}
	/**
	 *方法: 取得java.lang.String
	 *@return: java.lang.String  班主任
	 */

	@Column(name ="BZRGH",nullable=false,length=32)
	public java.lang.String getBzrgh(){
		return this.bzrgh;
	}

	/**
	 *方法: 设置java.lang.String
	 *@param: java.lang.String  班主任
	 */
	public void setBzrgh(java.lang.String bzrgh){
		this.bzrgh = bzrgh;
	}
}
