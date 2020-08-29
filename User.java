package com.taxcpc.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import javax.persistence.Table;

import lombok.Data;

@Data
@Entity
@Table(name = "TB_USER_MASTER")
public class User {

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	@Column(name = "USER_ID")
	private Integer userId; 
	
	@Column(name = "USER_NAME")
	private String userName;
	
	@Column(name = "SHORT_NAME")
	private String shortName;
	
	@Column(name = "USER_LEVEL")
	private String userLevel;
	
	@Column(name = "LOGIN_ID")
	private String userLogId;
	
	@Column(name = "LOGIN_PWD")
	private String userLogPwd;
	
	@Column(name = "ENTITY_CODE")
	private String entityCode = "R1";
	
	@Column(name = "CLIENT_CODE")
	private String clientCode;
	
	@Column(name = "RESET_TOKEN")
	private String resetToken;
	
	@OneToOne(fetch = FetchType.EAGER)
	//@Column(name = "ROLE_ID")
	@JoinColumn(name="ROLE_ID")
	private Role usrRoleId;
	
	//@OneToOne(fetch = FetchType.EAGER)
	//@Column(name = "ROLE_ID")
	//private Role roles;
	
	@Column(name = "ACTIVE_FLAG")
	private String userFlag;
	
	
	
//	@Column(name = "CREATED_BY_DATE")
//	@Temporal(TemporalType.TIMESTAMP)
//	@CreatedDate
//	@DateTimeFormat(pattern = "dd-MM-yyyy hh:mm:ss")
//	private Date userCreatedOn;
//	
//	@Column(name = "UPDATED_BY_DATE")
//	@Temporal(TemporalType.TIMESTAMP)
//	@LastModifiedDate
//	@DateTimeFormat(pattern = "dd-MM-yyyy hh:mm:ss")
//	private Date userUpdatedOn;
//	
//	   @CreatedBy
//	    @Column(name = "created_by")
//	    private User createdBy;
//	   
//	   @LastModifiedBy
//	    @Column(name = "last_modified_by")
//	    private User lastModifiedBy;

	public Role getUsrRoleId() {
		return usrRoleId;
	}

	public void setUsrRoleId(Role usrRoleId) {
		this.usrRoleId = usrRoleId;
	}

	public User() {
	}

	public Integer getUserId() {
		return userId;
	}

	public void setUserId(Integer userId) {
		this.userId = userId;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getShortName() {
		return shortName;
	}

	public void setShortName(String shortName) {
		this.shortName = shortName;
	}

	public String getUserLevel() {
		return userLevel;
	}

	public void setUserLevel(String userLevel) {
		this.userLevel = userLevel;
	}

	public String getUserLogId() {
		return userLogId;
	}

	public void setUserLogId(String userLogId) {
		this.userLogId = userLogId;
	}

	public String getUserLogPwd() {
		return userLogPwd;
	}

	public void setUserLogPwd(String userLogPwd) {
		this.userLogPwd = userLogPwd;
	}

	public String getEntityCode() {
		return entityCode;
	}

	public void setEntityCode(String entityCode) {
		this.entityCode = entityCode;
	}

	public String getClientCode() {
		return clientCode;
	}

	public void setClientCode(String clientCode) {
		this.clientCode = clientCode;
	}




//	public Role getRoles() {
//		return roles;
//	}
//
//	public void setRoles(Role roles) {
//		this.roles = roles;
//	}

	public String getUserFlag() {
		return userFlag;
	}

	public void setUserFlag(String userFlag) {
		this.userFlag = userFlag;
	}
	
}
