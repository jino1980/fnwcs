package com.fnwcs.pda.app.dao;

import com.fnwcs.pda.app.model.DbSysErrlog;
import java.util.Date;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface DbSysErrlogMapper {
    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table DB_SYS_ERRLOG
     *
     * @mbg.generated Wed Aug 11 12:35:31 KST 2021
     */
    int deleteByPrimaryKey(@Param("logDtm") Date logDtm, @Param("logSeq") Long logSeq);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table DB_SYS_ERRLOG
     *
     * @mbg.generated Wed Aug 11 12:35:31 KST 2021
     */
    int insert(DbSysErrlog record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table DB_SYS_ERRLOG
     *
     * @mbg.generated Wed Aug 11 12:35:31 KST 2021
     */
    DbSysErrlog selectByPrimaryKey(@Param("logDtm") Date logDtm, @Param("logSeq") Long logSeq);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table DB_SYS_ERRLOG
     *
     * @mbg.generated Wed Aug 11 12:35:31 KST 2021
     */
    List<DbSysErrlog> selectAll();

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table DB_SYS_ERRLOG
     *
     * @mbg.generated Wed Aug 11 12:35:31 KST 2021
     */
    int updateByPrimaryKey(DbSysErrlog record);
}