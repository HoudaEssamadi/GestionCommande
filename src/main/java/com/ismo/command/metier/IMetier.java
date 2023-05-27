package com.ismo.command.metier;

import java.util.List;

public interface IMetier<T> {

	List<T> getAll();
}
