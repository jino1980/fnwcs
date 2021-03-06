package com.fnwcs.pda.app.dao;

import com.fnwcs.pda.app.model.IfWcs11;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface IfWcs11Mapper {
    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table IF_WCS_11
     *
     * @mbg.generated Wed Aug 11 12:35:31 KST 2021
     */
    int deleteByPrimaryKey(@Param("invcno") String invcno, @Param("locasr") String locasr);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table IF_WCS_11
     *
     * @mbg.generated Wed Aug 11 12:35:31 KST 2021
     */
    int insert(IfWcs11 record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table IF_WCS_11
     *
     * @mbg.generated Wed Aug 11 12:35:31 KST 2021
     */
    IfWcs11 selectByPrimaryKey(@Param("invcno") String invcno, @Param("locasr") String locasr);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table IF_WCS_11
     *
     * @mbg.generated Wed Aug 11 12:35:31 KST 2021
     */
    List<IfWcs11> selectAll();

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table IF_WCS_11
     *
     * @mbg.generated Wed Aug 11 12:35:31 KST 2021
     */
    int updateByPrimaryKey(IfWcs11 record);
}