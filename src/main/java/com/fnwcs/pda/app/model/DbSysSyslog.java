package com.fnwcs.pda.app.model;

import java.util.Date;

public class DbSysSyslog {

	/**
	 * This field was generated by MyBatis Generator. This field corresponds to the database column DB_SYS_SYSLOG.USER_ID
	 * @mbg.generated  Wed Aug 11 12:35:31 KST 2021
	 */
	private String userId;
	/**
	 * This field was generated by MyBatis Generator. This field corresponds to the database column DB_SYS_SYSLOG.CONN_DTM
	 * @mbg.generated  Wed Aug 11 12:35:31 KST 2021
	 */
	private Date connDtm;
	/**
	 * This field was generated by MyBatis Generator. This field corresponds to the database column DB_SYS_SYSLOG.USER_NAME
	 * @mbg.generated  Wed Aug 11 12:35:31 KST 2021
	 */
	private String userName;
	/**
	 * This field was generated by MyBatis Generator. This field corresponds to the database column DB_SYS_SYSLOG.END_DTM
	 * @mbg.generated  Wed Aug 11 12:35:31 KST 2021
	 */
	private Date endDtm;
	/**
	 * This field was generated by MyBatis Generator. This field corresponds to the database column DB_SYS_SYSLOG.CP_IP
	 * @mbg.generated  Wed Aug 11 12:35:31 KST 2021
	 */
	private String cpIp;
	/**
	 * This field was generated by MyBatis Generator. This field corresponds to the database column DB_SYS_SYSLOG.CP_NAME
	 * @mbg.generated  Wed Aug 11 12:35:31 KST 2021
	 */
	private String cpName;
	/**
	 * This field was generated by MyBatis Generator. This field corresponds to the database column DB_SYS_SYSLOG.CONN_LOG
	 * @mbg.generated  Wed Aug 11 12:35:31 KST 2021
	 */
	private String connLog;

	/**
	 * This method was generated by MyBatis Generator. This method returns the value of the database column DB_SYS_SYSLOG.USER_ID
	 * @return  the value of DB_SYS_SYSLOG.USER_ID
	 * @mbg.generated  Wed Aug 11 12:35:31 KST 2021
	 */
	public String getUserId() {
		return userId;
	}

	/**
	 * This method was generated by MyBatis Generator. This method sets the value of the database column DB_SYS_SYSLOG.USER_ID
	 * @param userId  the value for DB_SYS_SYSLOG.USER_ID
	 * @mbg.generated  Wed Aug 11 12:35:31 KST 2021
	 */
	public void setUserId(String userId) {
		this.userId = userId == null ? null : userId.trim();
	}

	/**
	 * This method was generated by MyBatis Generator. This method returns the value of the database column DB_SYS_SYSLOG.CONN_DTM
	 * @return  the value of DB_SYS_SYSLOG.CONN_DTM
	 * @mbg.generated  Wed Aug 11 12:35:31 KST 2021
	 */
	public Date getConnDtm() {
		return connDtm;
	}

	/**
	 * This method was generated by MyBatis Generator. This method sets the value of the database column DB_SYS_SYSLOG.CONN_DTM
	 * @param connDtm  the value for DB_SYS_SYSLOG.CONN_DTM
	 * @mbg.generated  Wed Aug 11 12:35:31 KST 2021
	 */
	public void setConnDtm(Date connDtm) {
		this.connDtm = connDtm;
	}

	/**
	 * This method was generated by MyBatis Generator. This method returns the value of the database column DB_SYS_SYSLOG.USER_NAME
	 * @return  the value of DB_SYS_SYSLOG.USER_NAME
	 * @mbg.generated  Wed Aug 11 12:35:31 KST 2021
	 */
	public String getUserName() {
		return userName;
	}

	/**
	 * This method was generated by MyBatis Generator. This method sets the value of the database column DB_SYS_SYSLOG.USER_NAME
	 * @param userName  the value for DB_SYS_SYSLOG.USER_NAME
	 * @mbg.generated  Wed Aug 11 12:35:31 KST 2021
	 */
	public void setUserName(String userName) {
		this.userName = userName == null ? null : userName.trim();
	}

	/**
	 * This method was generated by MyBatis Generator. This method returns the value of the database column DB_SYS_SYSLOG.END_DTM
	 * @return  the value of DB_SYS_SYSLOG.END_DTM
	 * @mbg.generated  Wed Aug 11 12:35:31 KST 2021
	 */
	public Date getEndDtm() {
		return endDtm;
	}

	/**
	 * This method was generated by MyBatis Generator. This method sets the value of the database column DB_SYS_SYSLOG.END_DTM
	 * @param endDtm  the value for DB_SYS_SYSLOG.END_DTM
	 * @mbg.generated  Wed Aug 11 12:35:31 KST 2021
	 */
	public void setEndDtm(Date endDtm) {
		this.endDtm = endDtm;
	}

	/**
	 * This method was generated by MyBatis Generator. This method returns the value of the database column DB_SYS_SYSLOG.CP_IP
	 * @return  the value of DB_SYS_SYSLOG.CP_IP
	 * @mbg.generated  Wed Aug 11 12:35:31 KST 2021
	 */
	public String getCpIp() {
		return cpIp;
	}

	/**
	 * This method was generated by MyBatis Generator. This method sets the value of the database column DB_SYS_SYSLOG.CP_IP
	 * @param cpIp  the value for DB_SYS_SYSLOG.CP_IP
	 * @mbg.generated  Wed Aug 11 12:35:31 KST 2021
	 */
	public void setCpIp(String cpIp) {
		this.cpIp = cpIp == null ? null : cpIp.trim();
	}

	/**
	 * This method was generated by MyBatis Generator. This method returns the value of the database column DB_SYS_SYSLOG.CP_NAME
	 * @return  the value of DB_SYS_SYSLOG.CP_NAME
	 * @mbg.generated  Wed Aug 11 12:35:31 KST 2021
	 */
	public String getCpName() {
		return cpName;
	}

	/**
	 * This method was generated by MyBatis Generator. This method sets the value of the database column DB_SYS_SYSLOG.CP_NAME
	 * @param cpName  the value for DB_SYS_SYSLOG.CP_NAME
	 * @mbg.generated  Wed Aug 11 12:35:31 KST 2021
	 */
	public void setCpName(String cpName) {
		this.cpName = cpName == null ? null : cpName.trim();
	}

	/**
	 * This method was generated by MyBatis Generator. This method returns the value of the database column DB_SYS_SYSLOG.CONN_LOG
	 * @return  the value of DB_SYS_SYSLOG.CONN_LOG
	 * @mbg.generated  Wed Aug 11 12:35:31 KST 2021
	 */
	public String getConnLog() {
		return connLog;
	}

	/**
	 * This method was generated by MyBatis Generator. This method sets the value of the database column DB_SYS_SYSLOG.CONN_LOG
	 * @param connLog  the value for DB_SYS_SYSLOG.CONN_LOG
	 * @mbg.generated  Wed Aug 11 12:35:31 KST 2021
	 */
	public void setConnLog(String connLog) {
		this.connLog = connLog == null ? null : connLog.trim();
	}
}