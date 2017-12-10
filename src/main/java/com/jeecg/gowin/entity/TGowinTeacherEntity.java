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
 * @Description: 教师管理
 * @author onlineGenerator
 * @date 2017-12-10 22:59:40
 * @version V1.0   
 *
 */
@Entity
@Table(name = "t_gowin_teacher", schema = "")
@SuppressWarnings("serial")
public class TGowinTeacherEntity implements java.io.Serializable {
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
	/**工号*/
	@Excel(name="工号",width=15)
	private java.lang.String gh;
	/**姓名*/
	@Excel(name="姓名",width=15)
	private java.lang.String xm;
	/**身份证件号*/
	@Excel(name="身份证件号",width=15)
	private java.lang.String sfzjh;
	/**出生日期*/
	@Excel(name="出生日期",width=15,format = "yyyy-MM-dd")
	private java.util.Date csrq;
	/**性别*/
	@Excel(name="性别",width=15,dicCode="xbm")
	private java.lang.String xbm;
	/**民族*/
	@Excel(name="民族",width=15)
	private java.lang.String mzm;
	/**婚姻状态*/
	@Excel(name="婚姻状态",width=15,dicCode="hyzkm")
	private java.lang.String hyzkm;
	/**政治面貌*/
	@Excel(name="政治面貌",width=15)
	private java.lang.String zzmmm;
	/**籍贯*/
	@Excel(name="籍贯",width=15)
	private java.lang.String jg;
	/**系统账号*/
	@Excel(name="系统账号",width=15,dictTable ="t_s_base_user",dicCode ="username",dicText ="username")
	private java.lang.String sysAccount;
	
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
	 *@return: java.lang.String  工号
	 */

	@Column(name ="GH",nullable=false,length=32)
	public java.lang.String getGh(){
		return this.gh;
	}

	/**
	 *方法: 设置java.lang.String
	 *@param: java.lang.String  工号
	 */
	public void setGh(java.lang.String gh){
		this.gh = gh;
	}
	/**
	 *方法: 取得java.lang.String
	 *@return: java.lang.String  姓名
	 */

	@Column(name ="XM",nullable=false,length=32)
	public java.lang.String getXm(){
		return this.xm;
	}

	/**
	 *方法: 设置java.lang.String
	 *@param: java.lang.String  姓名
	 */
	public void setXm(java.lang.String xm){
		this.xm = xm;
	}
	/**
	 *方法: 取得java.lang.String
	 *@return: java.lang.String  身份证件号
	 */

	@Column(name ="SFZJH",nullable=false,length=32)
	public java.lang.String getSfzjh(){
		return this.sfzjh;
	}

	/**
	 *方法: 设置java.lang.String
	 *@param: java.lang.String  身份证件号
	 */
	public void setSfzjh(java.lang.String sfzjh){
		this.sfzjh = sfzjh;
	}
	/**
	 *方法: 取得java.util.Date
	 *@return: java.util.Date  出生日期
	 */

	@Column(name ="CSRQ",nullable=true,length=32)
	public java.util.Date getCsrq(){
		return this.csrq;
	}

	/**
	 *方法: 设置java.util.Date
	 *@param: java.util.Date  出生日期
	 */
	public void setCsrq(java.util.Date csrq){
		this.csrq = csrq;
	}
	/**
	 *方法: 取得java.lang.String
	 *@return: java.lang.String  性别
	 */

	@Column(name ="XBM",nullable=false,length=32)
	public java.lang.String getXbm(){
		return this.xbm;
	}

	/**
	 *方法: 设置java.lang.String
	 *@param: java.lang.String  性别
	 */
	public void setXbm(java.lang.String xbm){
		this.xbm = xbm;
	}
	/**
	 *方法: 取得java.lang.String
	 *@return: java.lang.String  民族
	 */

	@Column(name ="MZM",nullable=false,length=32)
	public java.lang.String getMzm(){
		return this.mzm;
	}

	/**
	 *方法: 设置java.lang.String
	 *@param: java.lang.String  民族
	 */
	public void setMzm(java.lang.String mzm){
		this.mzm = mzm;
	}
	/**
	 *方法: 取得java.lang.String
	 *@return: java.lang.String  婚姻状态
	 */

	@Column(name ="HYZKM",nullable=false,length=32)
	public java.lang.String getHyzkm(){
		return this.hyzkm;
	}

	/**
	 *方法: 设置java.lang.String
	 *@param: java.lang.String  婚姻状态
	 */
	public void setHyzkm(java.lang.String hyzkm){
		this.hyzkm = hyzkm;
	}
	/**
	 *方法: 取得java.lang.String
	 *@return: java.lang.String  政治面貌
	 */

	@Column(name ="ZZMMM",nullable=false,length=32)
	public java.lang.String getZzmmm(){
		return this.zzmmm;
	}

	/**
	 *方法: 设置java.lang.String
	 *@param: java.lang.String  政治面貌
	 */
	public void setZzmmm(java.lang.String zzmmm){
		this.zzmmm = zzmmm;
	}
	/**
	 *方法: 取得java.lang.String
	 *@return: java.lang.String  籍贯
	 */

	@Column(name ="JG",nullable=false,length=32)
	public java.lang.String getJg(){
		return this.jg;
	}

	/**
	 *方法: 设置java.lang.String
	 *@param: java.lang.String  籍贯
	 */
	public void setJg(java.lang.String jg){
		this.jg = jg;
	}
	/**
	 *方法: 取得java.lang.String
	 *@return: java.lang.String  系统账号
	 */

	@Column(name ="SYS_ACCOUNT",nullable=true,length=32)
	public java.lang.String getSysAccount(){
		return this.sysAccount;
	}

	/**
	 *方法: 设置java.lang.String
	 *@param: java.lang.String  系统账号
	 */
	public void setSysAccount(java.lang.String sysAccount){
		this.sysAccount = sysAccount;
	}
}
