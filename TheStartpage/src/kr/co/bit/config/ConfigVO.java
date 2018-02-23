package kr.co.bit.config;


public class ConfigVO {
	private String email;
	private String params;
	private String[] nameArray;
	private String[] optionArray;
	private int[] xPointArray;
	private int[] yPointArray;
	private int[] widthArray;
	private int[] heightArray;
	
	public String[] getOptionArray() {
		return optionArray;
	}
	public void setOptionArray(String[] optionArray) {
		this.optionArray = optionArray;
	}

	public int[] getWidthArray() {
		return widthArray;
	}
	public void setWidthArray(int[] widthArray) {
		this.widthArray = widthArray;
	}
	public int[] getHeightArray() {
		return heightArray;
	}
	public void setHeightArray(int[] heightArray) {
		this.heightArray = heightArray;
	}
	public String[] getNameArray() {
		return nameArray;
	}
	public void setNameArray(String[] nameArray) {
		this.nameArray = nameArray;
	}
	public int[] getxPointArray() {
		return xPointArray;
	}
	public void setxPointArray(int[] xPointArray) {
		this.xPointArray = xPointArray;
	}
	public int[] getyPointArray() {
		return yPointArray;
	}
	public void setyPointArray(int[] yPointArray) {
		this.yPointArray = yPointArray;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getParams() {
		return params;
	}
	public void setParams(String params) {
		this.params = params;
	}
	
	
}
