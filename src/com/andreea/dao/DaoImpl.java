package com.andreea.dao;

import java.sql.*;
import java.util.*;

import com.andreea.service.Produs;
import com.andreea.utils.DBUtils;

public class DaoImpl implements Dao {

	// singleton
	private static DaoImpl instance;

	private DaoImpl() {

	}

	public static DaoImpl getInstance() {
		if (instance == null) {
			instance = new DaoImpl();
		}
		return instance;
	}

	public List<Produs> getAllProducts() {
		Connection con = DBUtils.getConnection();
		try {
			PreparedStatement preps = con.prepareStatement("SELECT * FROM produs");

			java.sql.ResultSet rs = preps.executeQuery();
			List<Produs> prodList = new ArrayList<>();

			while (rs.next()) {
				int id = rs.getInt("id");
				double pret = rs.getDouble("pret");
				String denumire = rs.getString("denumire");
				int stoc = rs.getInt("stoc");
				String numePoza = rs.getString("numePoza");
				String descriere = rs.getString("descriere");

				Produs prod = new Produs(id, pret, denumire, stoc, numePoza, descriere);
				prodList.add(prod);
			}
			sortProdList(prodList);
			return prodList;

		} catch (SQLException e) {
			e.printStackTrace();
			return null;
		} finally {
			try {
				con.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
	}

	@Override
	public List<Produs> getProductsByDenumire(String denumire) {
		Connection con = DBUtils.getConnection();
		try {
			PreparedStatement prep = con.prepareStatement("select * from produs where denumire LIKE ?");

			prep.setString(1, "%" + denumire + "%");

			ResultSet rs = prep.executeQuery();

			List<Produs> prodList = new ArrayList<>();

			while (rs.next()) {
				int id = rs.getInt("id");
				double pret = rs.getDouble("pret");
				String den = rs.getString("denumire");
				int stoc = rs.getInt("stoc");
				String numePoza = rs.getString("numePoza");
				String descriere = rs.getString("descriere");

				Produs prod = new Produs(id, pret, den, stoc, numePoza, descriere);
				prodList.add(prod);
			}
			sortProdList(prodList);
			return prodList;

		} catch (SQLException e) {

			e.printStackTrace();
			return null;
		} finally {
			try {
				con.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
	}

	private void sortProdList(List<Produs> prodList) {
		Collections.sort(prodList, (Produs o1, Produs o2) -> {
			return o1.getDenumire().compareTo(o2.getDenumire());
		});
	}

	@Override
	public Produs getProductById(int id) {
		Connection con = DBUtils.getConnection();
		try {
			PreparedStatement preps = con.prepareStatement("SELECT * FROM produs WHERE id = ?");
			preps.setInt(1, id);
			ResultSet rs = preps.executeQuery();

			Produs prod = new Produs();
			if (rs.next()) {
				int idProd = rs.getInt("id");
				double pret = rs.getDouble("pret");
				String denumire = rs.getString("denumire");
				int stoc = rs.getInt("stoc");
				String numePoza = rs.getString("numePoza");
				String descriere = rs.getString("descriere");

				prod.setId(idProd);
				prod.setPret(pret);
				prod.setDenumire(denumire);
				prod.setStoc(stoc);
				prod.setNumePoza(numePoza);
				prod.setDescriere(descriere);
			}

			return prod;

		} catch (SQLException e) {
			e.printStackTrace();
			return null;
		} finally {
			try {
				con.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
	}

	@Override
	public void updateProductStoc(int id) {
		Connection con = DBUtils.getConnection();
		try {
			PreparedStatement preps = con.prepareStatement("UPDATE produs SET stoc=stoc-1  WHERE id=?");
			preps.setInt(1, id);
			preps.executeUpdate();

		} catch (SQLException e) {
			e.printStackTrace();
		}

	}
}
