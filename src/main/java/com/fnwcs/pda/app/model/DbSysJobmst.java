package com.fnwcs.pda.app.model;

import java.math.BigDecimal;
import java.util.Date;

public class DbSysJobmst {

	/**
	 * This field was generated by MyBatis Generator. This field corresponds to the database column DB_SYS_JOBMST.JOB_NO
	 * @mbg.generated  Wed Aug 11 12:35:31 KST 2021
	 */
	private String jobNo;
	/**
	 * This field was generated by MyBatis Generator. This field corresponds to the database column DB_SYS_JOBMST.SUB_JOB_NO
	 * @mbg.generated  Wed Aug 11 12:35:31 KST 2021
	 */
	private String subJobNo;
	/**
	 * This field was generated by MyBatis Generator. This field corresponds to the database column DB_SYS_JOBMST.LANK_SEQ
	 * @mbg.generated  Wed Aug 11 12:35:31 KST 2021
	 */
	private String lankSeq;
	/**
	 * This field was generated by MyBatis Generator. This field corresponds to the database column DB_SYS_JOBMST.CMD_DIV
	 * @mbg.generated  Wed Aug 11 12:35:31 KST 2021
	 */
	private String cmdDiv;
	/**
	 * This field was generated by MyBatis Generator. This field corresponds to the database column DB_SYS_JOBMST.JOB_STS
	 * @mbg.generated  Wed Aug 11 12:35:31 KST 2021
	 */
	private String jobSts;
	/**
	 * This field was generated by MyBatis Generator. This field corresponds to the database column DB_SYS_JOBMST.JOB_DTM
	 * @mbg.generated  Wed Aug 11 12:35:31 KST 2021
	 */
	private Date jobDtm;
	/**
	 * This field was generated by MyBatis Generator. This field corresponds to the database column DB_SYS_JOBMST.INV_NO
	 * @mbg.generated  Wed Aug 11 12:35:31 KST 2021
	 */
	private String invNo;
	/**
	 * This field was generated by MyBatis Generator. This field corresponds to the database column DB_SYS_JOBMST.BCR_MOVE
	 * @mbg.generated  Wed Aug 11 12:35:31 KST 2021
	 */
	private String bcrMove;
	/**
	 * This field was generated by MyBatis Generator. This field corresponds to the database column DB_SYS_JOBMST.BCR_POS
	 * @mbg.generated  Wed Aug 11 12:35:31 KST 2021
	 */
	private String bcrPos;
	/**
	 * This field was generated by MyBatis Generator. This field corresponds to the database column DB_SYS_JOBMST.BCR_DTM
	 * @mbg.generated  Wed Aug 11 12:35:31 KST 2021
	 */
	private Date bcrDtm;
	/**
	 * This field was generated by MyBatis Generator. This field corresponds to the database column DB_SYS_JOBMST.PID_NO
	 * @mbg.generated  Wed Aug 11 12:35:31 KST 2021
	 */
	private String pidNo;
	/**
	 * This field was generated by MyBatis Generator. This field corresponds to the database column DB_SYS_JOBMST.DPS_CNT
	 * @mbg.generated  Wed Aug 11 12:35:31 KST 2021
	 */
	private Integer dpsCnt;
	/**
	 * This field was generated by MyBatis Generator. This field corresponds to the database column DB_SYS_JOBMST.DPS_CMP_CNT
	 * @mbg.generated  Wed Aug 11 12:35:31 KST 2021
	 */
	private Integer dpsCmpCnt;
	/**
	 * This field was generated by MyBatis Generator. This field corresponds to the database column DB_SYS_JOBMST.ERR_CD
	 * @mbg.generated  Wed Aug 11 12:35:31 KST 2021
	 */
	private String errCd;
	/**
	 * This field was generated by MyBatis Generator. This field corresponds to the database column DB_SYS_JOBMST.ERR_MSG
	 * @mbg.generated  Wed Aug 11 12:35:31 KST 2021
	 */
	private String errMsg;
	/**
	 * This field was generated by MyBatis Generator. This field corresponds to the database column DB_SYS_JOBMST.BAR_DATA
	 * @mbg.generated  Wed Aug 11 12:35:31 KST 2021
	 */
	private String barData;
	/**
	 * This field was generated by MyBatis Generator. This field corresponds to the database column DB_SYS_JOBMST.DSP_DATA
	 * @mbg.generated  Wed Aug 11 12:35:31 KST 2021
	 */
	private String dspData;
	/**
	 * This field was generated by MyBatis Generator. This field corresponds to the database column DB_SYS_JOBMST.WEIGHT
	 * @mbg.generated  Wed Aug 11 12:35:31 KST 2021
	 */
	private BigDecimal weight;
	/**
	 * This field was generated by MyBatis Generator. This field corresponds to the database column DB_SYS_JOBMST.REMARKS
	 * @mbg.generated  Wed Aug 11 12:35:31 KST 2021
	 */
	private String remarks;
	/**
	 * This field was generated by MyBatis Generator. This field corresponds to the database column DB_SYS_JOBMST.REG_USER_ID
	 * @mbg.generated  Wed Aug 11 12:35:31 KST 2021
	 */
	private String regUserId;
	/**
	 * This field was generated by MyBatis Generator. This field corresponds to the database column DB_SYS_JOBMST.REG_DTM
	 * @mbg.generated  Wed Aug 11 12:35:31 KST 2021
	 */
	private Date regDtm;
	/**
	 * This field was generated by MyBatis Generator. This field corresponds to the database column DB_SYS_JOBMST.MOD_USER_ID
	 * @mbg.generated  Wed Aug 11 12:35:31 KST 2021
	 */
	private String modUserId;
	/**
	 * This field was generated by MyBatis Generator. This field corresponds to the database column DB_SYS_JOBMST.MOD_DTM
	 * @mbg.generated  Wed Aug 11 12:35:31 KST 2021
	 */
	private Date modDtm;
	/**
	 * This field was generated by MyBatis Generator. This field corresponds to the database column DB_SYS_JOBMST.BKCK_FG
	 * @mbg.generated  Wed Aug 11 12:35:31 KST 2021
	 */
	private String bkckFg;

	/**
	 * This method was generated by MyBatis Generator. This method returns the value of the database column DB_SYS_JOBMST.JOB_NO
	 * @return  the value of DB_SYS_JOBMST.JOB_NO
	 * @mbg.generated  Wed Aug 11 12:35:31 KST 2021
	 */
	public String getJobNo() {
		return jobNo;
	}

	/**
	 * This method was generated by MyBatis Generator. This method sets the value of the database column DB_SYS_JOBMST.JOB_NO
	 * @param jobNo  the value for DB_SYS_JOBMST.JOB_NO
	 * @mbg.generated  Wed Aug 11 12:35:31 KST 2021
	 */
	public void setJobNo(String jobNo) {
		this.jobNo = jobNo == null ? null : jobNo.trim();
	}

	/**
	 * This method was generated by MyBatis Generator. This method returns the value of the database column DB_SYS_JOBMST.SUB_JOB_NO
	 * @return  the value of DB_SYS_JOBMST.SUB_JOB_NO
	 * @mbg.generated  Wed Aug 11 12:35:31 KST 2021
	 */
	public String getSubJobNo() {
		return subJobNo;
	}

	/**
	 * This method was generated by MyBatis Generator. This method sets the value of the database column DB_SYS_JOBMST.SUB_JOB_NO
	 * @param subJobNo  the value for DB_SYS_JOBMST.SUB_JOB_NO
	 * @mbg.generated  Wed Aug 11 12:35:31 KST 2021
	 */
	public void setSubJobNo(String subJobNo) {
		this.subJobNo = subJobNo == null ? null : subJobNo.trim();
	}

	/**
	 * This method was generated by MyBatis Generator. This method returns the value of the database column DB_SYS_JOBMST.LANK_SEQ
	 * @return  the value of DB_SYS_JOBMST.LANK_SEQ
	 * @mbg.generated  Wed Aug 11 12:35:31 KST 2021
	 */
	public String getLankSeq() {
		return lankSeq;
	}

	/**
	 * This method was generated by MyBatis Generator. This method sets the value of the database column DB_SYS_JOBMST.LANK_SEQ
	 * @param lankSeq  the value for DB_SYS_JOBMST.LANK_SEQ
	 * @mbg.generated  Wed Aug 11 12:35:31 KST 2021
	 */
	public void setLankSeq(String lankSeq) {
		this.lankSeq = lankSeq == null ? null : lankSeq.trim();
	}

	/**
	 * This method was generated by MyBatis Generator. This method returns the value of the database column DB_SYS_JOBMST.CMD_DIV
	 * @return  the value of DB_SYS_JOBMST.CMD_DIV
	 * @mbg.generated  Wed Aug 11 12:35:31 KST 2021
	 */
	public String getCmdDiv() {
		return cmdDiv;
	}

	/**
	 * This method was generated by MyBatis Generator. This method sets the value of the database column DB_SYS_JOBMST.CMD_DIV
	 * @param cmdDiv  the value for DB_SYS_JOBMST.CMD_DIV
	 * @mbg.generated  Wed Aug 11 12:35:31 KST 2021
	 */
	public void setCmdDiv(String cmdDiv) {
		this.cmdDiv = cmdDiv == null ? null : cmdDiv.trim();
	}

	/**
	 * This method was generated by MyBatis Generator. This method returns the value of the database column DB_SYS_JOBMST.JOB_STS
	 * @return  the value of DB_SYS_JOBMST.JOB_STS
	 * @mbg.generated  Wed Aug 11 12:35:31 KST 2021
	 */
	public String getJobSts() {
		return jobSts;
	}

	/**
	 * This method was generated by MyBatis Generator. This method sets the value of the database column DB_SYS_JOBMST.JOB_STS
	 * @param jobSts  the value for DB_SYS_JOBMST.JOB_STS
	 * @mbg.generated  Wed Aug 11 12:35:31 KST 2021
	 */
	public void setJobSts(String jobSts) {
		this.jobSts = jobSts == null ? null : jobSts.trim();
	}

	/**
	 * This method was generated by MyBatis Generator. This method returns the value of the database column DB_SYS_JOBMST.JOB_DTM
	 * @return  the value of DB_SYS_JOBMST.JOB_DTM
	 * @mbg.generated  Wed Aug 11 12:35:31 KST 2021
	 */
	public Date getJobDtm() {
		return jobDtm;
	}

	/**
	 * This method was generated by MyBatis Generator. This method sets the value of the database column DB_SYS_JOBMST.JOB_DTM
	 * @param jobDtm  the value for DB_SYS_JOBMST.JOB_DTM
	 * @mbg.generated  Wed Aug 11 12:35:31 KST 2021
	 */
	public void setJobDtm(Date jobDtm) {
		this.jobDtm = jobDtm;
	}

	/**
	 * This method was generated by MyBatis Generator. This method returns the value of the database column DB_SYS_JOBMST.INV_NO
	 * @return  the value of DB_SYS_JOBMST.INV_NO
	 * @mbg.generated  Wed Aug 11 12:35:31 KST 2021
	 */
	public String getInvNo() {
		return invNo;
	}

	/**
	 * This method was generated by MyBatis Generator. This method sets the value of the database column DB_SYS_JOBMST.INV_NO
	 * @param invNo  the value for DB_SYS_JOBMST.INV_NO
	 * @mbg.generated  Wed Aug 11 12:35:31 KST 2021
	 */
	public void setInvNo(String invNo) {
		this.invNo = invNo == null ? null : invNo.trim();
	}

	/**
	 * This method was generated by MyBatis Generator. This method returns the value of the database column DB_SYS_JOBMST.BCR_MOVE
	 * @return  the value of DB_SYS_JOBMST.BCR_MOVE
	 * @mbg.generated  Wed Aug 11 12:35:31 KST 2021
	 */
	public String getBcrMove() {
		return bcrMove;
	}

	/**
	 * This method was generated by MyBatis Generator. This method sets the value of the database column DB_SYS_JOBMST.BCR_MOVE
	 * @param bcrMove  the value for DB_SYS_JOBMST.BCR_MOVE
	 * @mbg.generated  Wed Aug 11 12:35:31 KST 2021
	 */
	public void setBcrMove(String bcrMove) {
		this.bcrMove = bcrMove == null ? null : bcrMove.trim();
	}

	/**
	 * This method was generated by MyBatis Generator. This method returns the value of the database column DB_SYS_JOBMST.BCR_POS
	 * @return  the value of DB_SYS_JOBMST.BCR_POS
	 * @mbg.generated  Wed Aug 11 12:35:31 KST 2021
	 */
	public String getBcrPos() {
		return bcrPos;
	}

	/**
	 * This method was generated by MyBatis Generator. This method sets the value of the database column DB_SYS_JOBMST.BCR_POS
	 * @param bcrPos  the value for DB_SYS_JOBMST.BCR_POS
	 * @mbg.generated  Wed Aug 11 12:35:31 KST 2021
	 */
	public void setBcrPos(String bcrPos) {
		this.bcrPos = bcrPos == null ? null : bcrPos.trim();
	}

	/**
	 * This method was generated by MyBatis Generator. This method returns the value of the database column DB_SYS_JOBMST.BCR_DTM
	 * @return  the value of DB_SYS_JOBMST.BCR_DTM
	 * @mbg.generated  Wed Aug 11 12:35:31 KST 2021
	 */
	public Date getBcrDtm() {
		return bcrDtm;
	}

	/**
	 * This method was generated by MyBatis Generator. This method sets the value of the database column DB_SYS_JOBMST.BCR_DTM
	 * @param bcrDtm  the value for DB_SYS_JOBMST.BCR_DTM
	 * @mbg.generated  Wed Aug 11 12:35:31 KST 2021
	 */
	public void setBcrDtm(Date bcrDtm) {
		this.bcrDtm = bcrDtm;
	}

	/**
	 * This method was generated by MyBatis Generator. This method returns the value of the database column DB_SYS_JOBMST.PID_NO
	 * @return  the value of DB_SYS_JOBMST.PID_NO
	 * @mbg.generated  Wed Aug 11 12:35:31 KST 2021
	 */
	public String getPidNo() {
		return pidNo;
	}

	/**
	 * This method was generated by MyBatis Generator. This method sets the value of the database column DB_SYS_JOBMST.PID_NO
	 * @param pidNo  the value for DB_SYS_JOBMST.PID_NO
	 * @mbg.generated  Wed Aug 11 12:35:31 KST 2021
	 */
	public void setPidNo(String pidNo) {
		this.pidNo = pidNo == null ? null : pidNo.trim();
	}

	/**
	 * This method was generated by MyBatis Generator. This method returns the value of the database column DB_SYS_JOBMST.DPS_CNT
	 * @return  the value of DB_SYS_JOBMST.DPS_CNT
	 * @mbg.generated  Wed Aug 11 12:35:31 KST 2021
	 */
	public Integer getDpsCnt() {
		return dpsCnt;
	}

	/**
	 * This method was generated by MyBatis Generator. This method sets the value of the database column DB_SYS_JOBMST.DPS_CNT
	 * @param dpsCnt  the value for DB_SYS_JOBMST.DPS_CNT
	 * @mbg.generated  Wed Aug 11 12:35:31 KST 2021
	 */
	public void setDpsCnt(Integer dpsCnt) {
		this.dpsCnt = dpsCnt;
	}

	/**
	 * This method was generated by MyBatis Generator. This method returns the value of the database column DB_SYS_JOBMST.DPS_CMP_CNT
	 * @return  the value of DB_SYS_JOBMST.DPS_CMP_CNT
	 * @mbg.generated  Wed Aug 11 12:35:31 KST 2021
	 */
	public Integer getDpsCmpCnt() {
		return dpsCmpCnt;
	}

	/**
	 * This method was generated by MyBatis Generator. This method sets the value of the database column DB_SYS_JOBMST.DPS_CMP_CNT
	 * @param dpsCmpCnt  the value for DB_SYS_JOBMST.DPS_CMP_CNT
	 * @mbg.generated  Wed Aug 11 12:35:31 KST 2021
	 */
	public void setDpsCmpCnt(Integer dpsCmpCnt) {
		this.dpsCmpCnt = dpsCmpCnt;
	}

	/**
	 * This method was generated by MyBatis Generator. This method returns the value of the database column DB_SYS_JOBMST.ERR_CD
	 * @return  the value of DB_SYS_JOBMST.ERR_CD
	 * @mbg.generated  Wed Aug 11 12:35:31 KST 2021
	 */
	public String getErrCd() {
		return errCd;
	}

	/**
	 * This method was generated by MyBatis Generator. This method sets the value of the database column DB_SYS_JOBMST.ERR_CD
	 * @param errCd  the value for DB_SYS_JOBMST.ERR_CD
	 * @mbg.generated  Wed Aug 11 12:35:31 KST 2021
	 */
	public void setErrCd(String errCd) {
		this.errCd = errCd == null ? null : errCd.trim();
	}

	/**
	 * This method was generated by MyBatis Generator. This method returns the value of the database column DB_SYS_JOBMST.ERR_MSG
	 * @return  the value of DB_SYS_JOBMST.ERR_MSG
	 * @mbg.generated  Wed Aug 11 12:35:31 KST 2021
	 */
	public String getErrMsg() {
		return errMsg;
	}

	/**
	 * This method was generated by MyBatis Generator. This method sets the value of the database column DB_SYS_JOBMST.ERR_MSG
	 * @param errMsg  the value for DB_SYS_JOBMST.ERR_MSG
	 * @mbg.generated  Wed Aug 11 12:35:31 KST 2021
	 */
	public void setErrMsg(String errMsg) {
		this.errMsg = errMsg == null ? null : errMsg.trim();
	}

	/**
	 * This method was generated by MyBatis Generator. This method returns the value of the database column DB_SYS_JOBMST.BAR_DATA
	 * @return  the value of DB_SYS_JOBMST.BAR_DATA
	 * @mbg.generated  Wed Aug 11 12:35:31 KST 2021
	 */
	public String getBarData() {
		return barData;
	}

	/**
	 * This method was generated by MyBatis Generator. This method sets the value of the database column DB_SYS_JOBMST.BAR_DATA
	 * @param barData  the value for DB_SYS_JOBMST.BAR_DATA
	 * @mbg.generated  Wed Aug 11 12:35:31 KST 2021
	 */
	public void setBarData(String barData) {
		this.barData = barData == null ? null : barData.trim();
	}

	/**
	 * This method was generated by MyBatis Generator. This method returns the value of the database column DB_SYS_JOBMST.DSP_DATA
	 * @return  the value of DB_SYS_JOBMST.DSP_DATA
	 * @mbg.generated  Wed Aug 11 12:35:31 KST 2021
	 */
	public String getDspData() {
		return dspData;
	}

	/**
	 * This method was generated by MyBatis Generator. This method sets the value of the database column DB_SYS_JOBMST.DSP_DATA
	 * @param dspData  the value for DB_SYS_JOBMST.DSP_DATA
	 * @mbg.generated  Wed Aug 11 12:35:31 KST 2021
	 */
	public void setDspData(String dspData) {
		this.dspData = dspData == null ? null : dspData.trim();
	}

	/**
	 * This method was generated by MyBatis Generator. This method returns the value of the database column DB_SYS_JOBMST.WEIGHT
	 * @return  the value of DB_SYS_JOBMST.WEIGHT
	 * @mbg.generated  Wed Aug 11 12:35:31 KST 2021
	 */
	public BigDecimal getWeight() {
		return weight;
	}

	/**
	 * This method was generated by MyBatis Generator. This method sets the value of the database column DB_SYS_JOBMST.WEIGHT
	 * @param weight  the value for DB_SYS_JOBMST.WEIGHT
	 * @mbg.generated  Wed Aug 11 12:35:31 KST 2021
	 */
	public void setWeight(BigDecimal weight) {
		this.weight = weight;
	}

	/**
	 * This method was generated by MyBatis Generator. This method returns the value of the database column DB_SYS_JOBMST.REMARKS
	 * @return  the value of DB_SYS_JOBMST.REMARKS
	 * @mbg.generated  Wed Aug 11 12:35:31 KST 2021
	 */
	public String getRemarks() {
		return remarks;
	}

	/**
	 * This method was generated by MyBatis Generator. This method sets the value of the database column DB_SYS_JOBMST.REMARKS
	 * @param remarks  the value for DB_SYS_JOBMST.REMARKS
	 * @mbg.generated  Wed Aug 11 12:35:31 KST 2021
	 */
	public void setRemarks(String remarks) {
		this.remarks = remarks == null ? null : remarks.trim();
	}

	/**
	 * This method was generated by MyBatis Generator. This method returns the value of the database column DB_SYS_JOBMST.REG_USER_ID
	 * @return  the value of DB_SYS_JOBMST.REG_USER_ID
	 * @mbg.generated  Wed Aug 11 12:35:31 KST 2021
	 */
	public String getRegUserId() {
		return regUserId;
	}

	/**
	 * This method was generated by MyBatis Generator. This method sets the value of the database column DB_SYS_JOBMST.REG_USER_ID
	 * @param regUserId  the value for DB_SYS_JOBMST.REG_USER_ID
	 * @mbg.generated  Wed Aug 11 12:35:31 KST 2021
	 */
	public void setRegUserId(String regUserId) {
		this.regUserId = regUserId == null ? null : regUserId.trim();
	}

	/**
	 * This method was generated by MyBatis Generator. This method returns the value of the database column DB_SYS_JOBMST.REG_DTM
	 * @return  the value of DB_SYS_JOBMST.REG_DTM
	 * @mbg.generated  Wed Aug 11 12:35:31 KST 2021
	 */
	public Date getRegDtm() {
		return regDtm;
	}

	/**
	 * This method was generated by MyBatis Generator. This method sets the value of the database column DB_SYS_JOBMST.REG_DTM
	 * @param regDtm  the value for DB_SYS_JOBMST.REG_DTM
	 * @mbg.generated  Wed Aug 11 12:35:31 KST 2021
	 */
	public void setRegDtm(Date regDtm) {
		this.regDtm = regDtm;
	}

	/**
	 * This method was generated by MyBatis Generator. This method returns the value of the database column DB_SYS_JOBMST.MOD_USER_ID
	 * @return  the value of DB_SYS_JOBMST.MOD_USER_ID
	 * @mbg.generated  Wed Aug 11 12:35:31 KST 2021
	 */
	public String getModUserId() {
		return modUserId;
	}

	/**
	 * This method was generated by MyBatis Generator. This method sets the value of the database column DB_SYS_JOBMST.MOD_USER_ID
	 * @param modUserId  the value for DB_SYS_JOBMST.MOD_USER_ID
	 * @mbg.generated  Wed Aug 11 12:35:31 KST 2021
	 */
	public void setModUserId(String modUserId) {
		this.modUserId = modUserId == null ? null : modUserId.trim();
	}

	/**
	 * This method was generated by MyBatis Generator. This method returns the value of the database column DB_SYS_JOBMST.MOD_DTM
	 * @return  the value of DB_SYS_JOBMST.MOD_DTM
	 * @mbg.generated  Wed Aug 11 12:35:31 KST 2021
	 */
	public Date getModDtm() {
		return modDtm;
	}

	/**
	 * This method was generated by MyBatis Generator. This method sets the value of the database column DB_SYS_JOBMST.MOD_DTM
	 * @param modDtm  the value for DB_SYS_JOBMST.MOD_DTM
	 * @mbg.generated  Wed Aug 11 12:35:31 KST 2021
	 */
	public void setModDtm(Date modDtm) {
		this.modDtm = modDtm;
	}

	/**
	 * This method was generated by MyBatis Generator. This method returns the value of the database column DB_SYS_JOBMST.BKCK_FG
	 * @return  the value of DB_SYS_JOBMST.BKCK_FG
	 * @mbg.generated  Wed Aug 11 12:35:31 KST 2021
	 */
	public String getBkckFg() {
		return bkckFg;
	}

	/**
	 * This method was generated by MyBatis Generator. This method sets the value of the database column DB_SYS_JOBMST.BKCK_FG
	 * @param bkckFg  the value for DB_SYS_JOBMST.BKCK_FG
	 * @mbg.generated  Wed Aug 11 12:35:31 KST 2021
	 */
	public void setBkckFg(String bkckFg) {
		this.bkckFg = bkckFg == null ? null : bkckFg.trim();
	}
}