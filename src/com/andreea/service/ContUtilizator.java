package com.andreea.service;

public class ContUtilizator {

	private String user;
	private String parola;

	public ContUtilizator(String numeUtilizator, String gen, String parola) {
		super();
		this.user = numeUtilizator;
		this.parola = parola;
	}

	public String getNumeUtilizator() {
		return user;
	}

	public void setNumeUtilizator(String numeUtilizator) {
		this.user = numeUtilizator;
	}

	public String getParola() {
		return parola;
	}

	public void setParola(String parola) {
		this.parola = parola;
	}

}
