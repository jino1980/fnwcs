package com.fnwcs.pda.app.dao;

import com.fnwcs.pda.app.model.DbComMnumst;
import java.util.List;

public interface DbComMnumstMapper {
    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table DB_COM_MNUMST
     *
     * @mbg.generated Wed Aug 11 12:35:31 KST 2021
     */
    int deleteByPrimaryKey(String mMnid);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table DB_COM_MNUMST
     *
     * @mbg.generated Wed Aug 11 12:35:31 KST 2021
     */
    int insert(DbComMnumst record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table DB_COM_MNUMST
     *
     * @mbg.generated Wed Aug 11 12:35:31 KST 2021
     */
    DbComMnumst selectByPrimaryKey(String mMnid);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table DB_COM_MNUMST
     *
     * @mbg.generated Wed Aug 11 12:35:31 KST 2021
     */
    List<DbComMnumst> selectAll();

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table DB_COM_MNUMST
     *
     * @mbg.generated Wed Aug 11 12:35:31 KST 2021
     */
    int updateByPrimaryKey(DbComMnumst record);
}