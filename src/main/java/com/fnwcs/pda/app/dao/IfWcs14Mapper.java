package com.fnwcs.pda.app.dao;

import com.fnwcs.pda.app.model.IfWcs14;
import java.util.List;

public interface IfWcs14Mapper {
    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table IF_WCS_14
     *
     * @mbg.generated Wed Aug 11 12:35:31 KST 2021
     */
    int deleteByPrimaryKey(String locaky);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table IF_WCS_14
     *
     * @mbg.generated Wed Aug 11 12:35:31 KST 2021
     */
    int insert(IfWcs14 record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table IF_WCS_14
     *
     * @mbg.generated Wed Aug 11 12:35:31 KST 2021
     */
    IfWcs14 selectByPrimaryKey(String locaky);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table IF_WCS_14
     *
     * @mbg.generated Wed Aug 11 12:35:31 KST 2021
     */
    List<IfWcs14> selectAll();

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table IF_WCS_14
     *
     * @mbg.generated Wed Aug 11 12:35:31 KST 2021
     */
    int updateByPrimaryKey(IfWcs14 record);
}