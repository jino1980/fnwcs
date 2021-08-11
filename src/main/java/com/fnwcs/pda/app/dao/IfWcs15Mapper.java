package com.fnwcs.pda.app.dao;

import com.fnwcs.pda.app.model.IfWcs15;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface IfWcs15Mapper {
    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table IF_WCS_15
     *
     * @mbg.generated Wed Aug 11 12:35:31 KST 2021
     */
    int deleteByPrimaryKey(@Param("taskky") String taskky, @Param("taskit") String taskit);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table IF_WCS_15
     *
     * @mbg.generated Wed Aug 11 12:35:31 KST 2021
     */
    int insert(IfWcs15 record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table IF_WCS_15
     *
     * @mbg.generated Wed Aug 11 12:35:31 KST 2021
     */
    IfWcs15 selectByPrimaryKey(@Param("taskky") String taskky, @Param("taskit") String taskit);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table IF_WCS_15
     *
     * @mbg.generated Wed Aug 11 12:35:31 KST 2021
     */
    List<IfWcs15> selectAll();

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table IF_WCS_15
     *
     * @mbg.generated Wed Aug 11 12:35:31 KST 2021
     */
    int updateByPrimaryKey(IfWcs15 record);
}