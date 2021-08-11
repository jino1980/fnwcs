package com.fnwcs.pda.app.dao;

import com.fnwcs.pda.app.model.IfWcs01;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface IfWcs01Mapper {
    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table IF_WCS_01
     *
     * @mbg.generated Wed Aug 11 12:35:31 KST 2021
     */
    int deleteByPrimaryKey(@Param("ownrky") String ownrky, @Param("skukey") String skukey);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table IF_WCS_01
     *
     * @mbg.generated Wed Aug 11 12:35:31 KST 2021
     */
    int insert(IfWcs01 record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table IF_WCS_01
     *
     * @mbg.generated Wed Aug 11 12:35:31 KST 2021
     */
    IfWcs01 selectByPrimaryKey(@Param("ownrky") String ownrky, @Param("skukey") String skukey);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table IF_WCS_01
     *
     * @mbg.generated Wed Aug 11 12:35:31 KST 2021
     */
    List<IfWcs01> selectAll();

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table IF_WCS_01
     *
     * @mbg.generated Wed Aug 11 12:35:31 KST 2021
     */
    int updateByPrimaryKey(IfWcs01 record);
}