package com.pack1;

import java.io.Serializable;

public class CustomerBean implements Serializable {
	private String u_name,p_word,f_name,l_name,c_add,c_mid,c_phno;
	public String getU_name() {
		return u_name;
	}
	public void setU_name(String u_name) {
		this.u_name = u_name;
	}
	public String getP_word() {
		return p_word;
	}
	public void setP_word(String p_word) {
		this.p_word = p_word;
	}
	public String getF_name() {
		return f_name;
	}
	public void setF_name(String f_name) {
		this.f_name = f_name;
	}
	public String getL_name() {
		return l_name;
	}
	public void setL_name(String l_name) {
		this.l_name = l_name;
	}
	public String getC_add() {
		return c_add;
	}
	public void setC_add(String c_add) {
		this.c_add = c_add;
	}
	public String getC_mid() {
		return c_mid;
	}
	public void setC_mid(String c_mid) {
		this.c_mid = c_mid;
	}
	public String getC_phno() {
		return c_phno;
	}
	public void setC_phno(String c_phno) {
		this.c_phno = c_phno;
	}
	public CustomerBean()
	{

	}

}
