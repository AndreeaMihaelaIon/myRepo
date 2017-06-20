package com.andreea.service;

public class Produs {

	private int id;
	private double pret;
	private String denumire;
	private int stoc;
	private String numePoza;
	private String descriere;

	public Produs(int id, double pret, String denumire, int stoc, String numePoza, String descriere) {
		super();
		this.id = id;
		this.pret = pret;
		this.denumire = denumire;
		this.stoc = stoc;
		this.numePoza = numePoza;
		this.descriere = descriere;
	}

	public Produs() {
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public double getPret() {
		return pret;
	}

	public void setPret(double pret) {
		this.pret = pret;
	}

	public String getDenumire() {
		return denumire;
	}

	public void setDenumire(String denumire) {
		this.denumire = denumire;
	}

	public int getStoc() {
		return stoc;
	}

	public void setStoc(int stoc) {
		this.stoc = stoc;
	}

	public String getNumePoza() {
		return numePoza;
	}

	public void setNumePoza(String numePoza) {
		this.numePoza = numePoza;
	}

	public String getDescriere() {
		return descriere;
	}

	public void setDescriere(String descriere) {
		this.descriere = descriere;
	}

}
