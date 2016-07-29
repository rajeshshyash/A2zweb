package com.a2z.domain;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
@Entity
@Table(name = "user_profile_info")
public class UserProfile implements Serializable {
	private static final long serialVersionUID = 1L;
	
	private Long userPersonalInfoId;
	//private User user;
	private String fatherName;
	private String surName;
	private String gender;
	private String dob;
	private String age;
	private String whatsupNum;
	private String landlineNum;
	private String education;
	private String course;
	private String language;
	private String localAddress;
	private String localCountry;
	private String localState;
	private String localCity;
	private String localZipPostalCode;
	private String permaAddress;
	private String parmaCountry;
	private String permaState;
	private String permaCity;
	private String permaZipPostalCode;
	private String comment;
	
	
	public UserProfile() {
	}
	
	/*public UserProfile(User user) {
		this.user = user;
	}*/

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	@Column(name = "user_profile_info_id", unique = true, nullable = false)
	public Long getUserPersonalInfoId() {
		return userPersonalInfoId;
	}

	public void setUserPersonalInfoId(Long userPersonalInfoId) {
		this.userPersonalInfoId = userPersonalInfoId;
	}

	/*@OneToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "user_id", unique = true, nullable = false)
	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}*/
	
	@Column(name = "father_name", length = 55)
	public String getFatherName() {
		return fatherName;
	}

	public void setFatherName(String fatherName) {
		this.fatherName = fatherName;
	}
	@Column(name = "surname", length = 55)
	public String getSurName() {
		return surName;
	}

	public void setSurName(String surName) {
		this.surName = surName;
	}
	@Column(name = "gender", length = 55)
	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}
	@Column(name = "dob")
	public String getDob() {
		return dob;
	}

	public void setDob(String dob) {
		this.dob = dob;
	}
	@Column(name = "age", length = 55)
	public String getAge() {
		return age;
	}

	public void setAge(String age) {
		this.age = age;
	}
	@Column(name = "whatsup_no")
	public String getWhatsupNum() {
		return whatsupNum;
	}

	public void setWhatsupNum(String whatsupNum) {
		this.whatsupNum = whatsupNum;
	}
	@Column(name = "landline_no")
	public String getLandlineNum() {
		return landlineNum;
	}

	public void setLandlineNum(String landlineNum) {
		this.landlineNum = landlineNum;
	}
	@Column(name = "education")
	public String getEducation() {
		return education;
	}

	public void setEducation(String education) {
		this.education = education;
	}
	@Column(name = "course")
	public String getCourse() {
		return course;
	}

	public void setCourse(String course) {
		this.course = course;
	}
	@Column(name = "language")
	public String getLanguage() {
		return language;
	}

	public void setLanguage(String language) {
		this.language = language;
	}
	@Column(name = "address_local")
	public String getLocalAddress() {
		return localAddress;
	}

	public void setLocalAddress(String localAddress) {
		this.localAddress = localAddress;
	}
	@Column(name = "country_local", length = 64)
	public String getlocalCountry() {
		return localCountry;
	}

	public void setlocalCountry(String localCountry) {
		this.localCountry = localCountry;
	}
	@Column(name = "state_local", length = 64)
	public String getLocalState() {
		return localState;
	}

	public void setLocalState(String localState) {
		this.localState = localState;
	}
	@Column(name = "city_local", length = 64)
	public String getLocalCity() {
		return localCity;
	}

	public void setLocalCity(String localCity) {
		this.localCity = localCity;
	}
	@Column(name = "zip_postal_code_local", length = 64)
	public String getLocalZipPostalCode() {
		return localZipPostalCode;
	}

	public void setLocalZipPostalCode(String localZipPostalCode) {
		this.localZipPostalCode = localZipPostalCode;
	}
	
	@Column(name = "country_parma")
	public String getParmaCountry() {
		return parmaCountry;
	}

	public void setParmaCountry(String parmaCountry) {
		this.parmaCountry = parmaCountry;
	}
	
	@Column(name = "address_perma")
	public String getPermaAddress() {
		return permaAddress;
	}
	
	public void setPermaAddress(String permaAddress) {
		this.permaAddress = permaAddress;
	}
	@Column(name = "state_parma", length = 64)
	public String getPermaState() {
		return permaState;
	}

	public void setPermaState(String permaState) {
		this.permaState = permaState;
	}
	@Column(name = "city_perma", length = 64)
	public String getPermaCity() {
		return permaCity;
	}

	public void setPermaCity(String permaCity) {
		this.permaCity = permaCity;
	}
	@Column(name = "zip_postal_code_perma", length = 64)
	public String getPermaZipPostalCode() {
		return permaZipPostalCode;
	}

	public void setPermaZipPostalCode(String permaZipPostalCode) {
		this.permaZipPostalCode = permaZipPostalCode;
	}
	@Column(name = "comment")
	public String getComment() {
		return comment;
	}
	
	public void setComment(String comment) {
		this.comment = comment;
	}

	@Override
	public String toString() {
		return "UserProfile [userPersonalInfoId=" + userPersonalInfoId + ", fatherName=" + fatherName + ", surName="
				+ surName + ", gender=" + gender + ", dob=" + dob + ", age=" + age + ", whatsupNum=" + whatsupNum
				+ ", landlineNum=" + landlineNum + ", education=" + education + ", course=" + course + ", language="
				+ language + ", localAddress=" + localAddress + ", localCountry=" + localCountry + ", localState="
				+ localState + ", localCity=" + localCity + ", localZipPostalCode=" + localZipPostalCode
				+ ", permaAddress=" + permaAddress + ", parmaCountry=" + parmaCountry + ", permaState=" + permaState
				+ ", permaCity=" + permaCity + ", permaZipPostalCode=" + permaZipPostalCode + ", comment=" + comment
				+ "]";
	}

	 
	
}
