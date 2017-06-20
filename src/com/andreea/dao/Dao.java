package com.andreea.dao;

import java.util.List;

import com.andreea.service.Produs;

public interface Dao {

	public List<Produs> getAllProducts();
	public List<Produs> getProductsByDenumire(String denumire);
	public Produs getProductById(int id);
	public Produs updateProductStoc(int id);
}
