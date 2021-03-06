package com.fnwcs.pda.app.dao;

import com.fnwcs.pda.app.model.DbComCfg;
import java.util.List;

public interface DbComCfgMapper {
    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table DB_COM_CFG
     *
     * @mbg.generated Wed Aug 11 12:35:31 KST 2021
     */
    int deleteByPrimaryKey(String hostName);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table DB_COM_CFG
     *
     * @mbg.generated Wed Aug 11 12:35:31 KST 2021
     */
    int insert(DbComCfg record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table DB_COM_CFG
     *
     * @mbg.generated Wed Aug 11 12:35:31 KST 2021
     */
    DbComCfg selectByPrimaryKey(String hostName);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table DB_COM_CFG
     *
     * @mbg.generated Wed Aug 11 12:35:31 KST 2021
     */
    List<DbComCfg> selectAll();

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table DB_COM_CFG
     *
     * @mbg.generated Wed Aug 11 12:35:31 KST 2021
     */
    int updateByPrimaryKey(DbComCfg record);
}