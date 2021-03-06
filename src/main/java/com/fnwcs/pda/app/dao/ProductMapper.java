package com.fnwcs.pda.app.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.fnwcs.pda.app.model.Product;

@Mapper
public interface ProductMapper {

    Product selectProductById(Long id);
    List<Product> selectAllProducts();
    void insertProduct(Product product);
}