package com.fnwcs.pda.app.dao;

import com.fnwcs.pda.app.model.DbSysSyslog;
import java.util.Date;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface DbSysSyslogMapper {
    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table DB_SYS_SYSLOG
     *
     * @mbg.generated Wed Aug 11 12:35:31 KST 2021
     */
    int deleteByPrimaryKey(@Param("userId") String userId, @Param("connDtm") Date connDtm);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table DB_SYS_SYSLOG
     *
     * @mbg.generated Wed Aug 11 12:35:31 KST 2021
     */
    int insert(DbSysSyslog record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table DB_SYS_SYSLOG
     *
     * @mbg.generated Wed Aug 11 12:35:31 KST 2021
     */
    DbSysSyslog selectByPrimaryKey(@Param("userId") String userId, @Param("connDtm") Date connDtm);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table DB_SYS_SYSLOG
     *
     * @mbg.generated Wed Aug 11 12:35:31 KST 2021
     */
    List<DbSysSyslog> selectAll();

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table DB_SYS_SYSLOG
     *
     * @mbg.generated Wed Aug 11 12:35:31 KST 2021
     */
    int updateByPrimaryKey(DbSysSyslog record);
}