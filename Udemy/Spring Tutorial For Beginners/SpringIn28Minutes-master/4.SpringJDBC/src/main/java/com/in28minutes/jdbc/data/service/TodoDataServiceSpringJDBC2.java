package com.in28minutes.jdbc.data.service;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

import org.apache.log4j.LogManager;
import org.apache.log4j.Logger;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.jdbc.datasource.SingleConnectionDataSource;

import com.in28minutes.jdbc.hsql.HsqlDatabase;
import com.in28minutes.jdbc.model.Todo;

class NewTodoMapper implements RowMapper<Todo> {
	public Todo mapRow(ResultSet rs, int rowNum) throws SQLException {
		return new Todo(rs.getInt(1), rs.getString(2), rs.getBoolean(3));
	}
}

public class TodoDataServiceSpringJDBC2 {

	private static final String INSERT_TODO_QUERY = "INSERT INTO TODO(DESCRIPTION,IS_DONE) VALUES(?, ?)";

	private static final String DELETE_TODO_QUERY = "DELETE FROM TODO WHERE ID=?";

	private static final String SELECT_ALL_TODOS = "SELECT * FROM TODO";
		
	HsqlDatabase db = new HsqlDatabase();

	JdbcTemplate jdbcTemplate = new JdbcTemplate(
			new SingleConnectionDataSource(db.conn, false));

	public static Logger logger = LogManager
			.getLogger(TodoDataServiceSpringJDBC2.class);

	public void insertTodos(List<Todo> todos) {
		for (Todo todo : todos) {
			insertTodo(todo);
		}
	}

	private void insertTodo(Todo todo) {
		jdbcTemplate.update(INSERT_TODO_QUERY, todo.getDescription(),
				todo.isDone());
	}

	public void deleteTodo(int id) {
		jdbcTemplate.update(DELETE_TODO_QUERY, id);
	}

	// BeanPropertyRowMapper is used because we have a Todo class and the database fields are mapped to it.
	public List<Todo> retrieveAllTodos() throws SQLException {
		return jdbcTemplate.query("SELECT * FROM TODO",
				new BeanPropertyRowMapper<Todo>(Todo.class));
	}
	
	// Custom implementation of the Mapper
	public List<Todo> retrieveAllTodos2() throws SQLException {
		return jdbcTemplate.query(SELECT_ALL_TODOS, new RowMapper<Todo>() {
			public Todo mapRow(ResultSet rs, int rowNum) throws SQLException {
				return new Todo(rs.getInt(1), rs.getString(2), rs.getBoolean(3));
			}
		});
	}
	
	// Custom implementation of the Mapper using a class
	public List<Todo> retrieveAllTodos3() throws SQLException {
		return jdbcTemplate.query(SELECT_ALL_TODOS, new NewTodoMapper());
	}
	
	
	public static void main(String[] args) throws SQLException {

		TodoDataServiceSpringJDBC2 dataservice = new TodoDataServiceSpringJDBC2();

		dataservice.insertTodos(Arrays.asList(new Todo(0, "New Todo fasdf1", false)));
		dataservice.deleteTodo(1);
		//List<Todo> todos = dataservice.retrieveAllTodos();
		//List<Todo> todos = dataservice.retrieveAllTodos2();
		List<Todo> todos = dataservice.retrieveAllTodos3();
		logger.info(todos);
		dataservice.db.closeConnection();
	}
}
