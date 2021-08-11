package com.fnwcs.pda.app.dao;

import com.fnwcs.pda.app.model.DbComUsrmst;
import java.util.List;

public interface DbComUsrmstMapper {
    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table DB_COM_USRMST
     *
     * @mbg.generated Wed Aug 11 12:35:31 KST 2021
     */
    int deleteByPrimaryKey(String uUsid);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table DB_COM_USRMST
     *
     * @mbg.generated Wed Aug 11 12:35:31 KST 2021
     */
    int insert(DbComUsrmst record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table DB_COM_USRMST
     *
     * @mbg.generated Wed Aug 11 12:35:31 KST 2021
     */
    DbComUsrmst selectByPrimaryKey(String uUsid);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table DB_COM_USRMST
     *
     * @mbg.generated Wed Aug 11 12:35:31 KST 2021
     */
    List<DbComUsrmst> selectAll();

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table DB_COM_USRMST
     *
     * @mbg.generated Wed Aug 11 12:35:31 KST 2021
     */
    int updateByPrimaryKey(DbComUsrmst record);
}