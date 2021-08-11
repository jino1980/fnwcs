package com.fnwcs.pda.app;

import java.sql.Connection;
import java.sql.DatabaseMetaData;
import java.sql.SQLException;

import javax.sql.DataSource;

import org.junit.jupiter.api.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.test.context.junit4.SpringRunner;

import lombok.extern.slf4j.Slf4j;

@RunWith(SpringRunner.class)
@SpringBootTest
@Slf4j
public class DbTest {

	@Autowired
	DataSource dataSource;
	
	@Autowired
    JdbcTemplate jdbcTemplate;
	
	@Test
	public void connection() throws SQLException {
		try(Connection connection = dataSource.getConnection()) {
			DatabaseMetaData metaData = connection.getMetaData();
			log.info("DBCP: " + dataSource.getClass()); // 사용하는 DBCP 타입 확인
			log.info("URL : " + metaData.getURL());
			log.info("DriverName : " + metaData.getDriverName());
			log.info("UserNmae : " + metaData.getUserName());
			
			// JdbcTemplate
	        jdbcTemplate.execute("INSERT INTO Products (prod_name, prod_price) values ('버킷햇', 6900)");
		}
	}
}