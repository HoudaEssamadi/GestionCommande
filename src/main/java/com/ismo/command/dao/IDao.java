package com.ismo.command.dao;

import java.util.List;

public interface IDao<T> {
	
	List<T> getAll();

}
