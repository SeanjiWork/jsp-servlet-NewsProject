package com.javaweb.model;


public class UserModel extends AbstractModel<UserModel>{
	
	private String userName;
	private String fullName;
	private String password;
	private int status;
	private long roleid;
	private RoleModel role;
	
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public int getStatus() {
		return status;
	}
	public void setStatus(int status) {
		this.status = status;
	}
	public long getRoleid() {
		return roleid;
	}
	public void setRoleid(long roleid) {
		this.roleid = roleid;
	}
	public RoleModel getRole() {
		return role;
	}
	public void setRole(RoleModel role) {
		this.role = role;
	}
	public String getFullname() {
		return fullName;
	}
	public void setFullname(String fullName) {
		this.fullName = fullName;
	}
	

}
