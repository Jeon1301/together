package com.semi.dto;

import java.sql.Timestamp;
import java.util.List;

import org.apache.ibatis.type.Alias;

import lombok.Data;

@Data
@Alias("UserDto")
public class UserDto {

	private int unum;
	private String uname;
	private String age;
	private String gender;
	private String email;
	private String pass;
	private String hp;
	private String city1;
	private String city2;
	private String category;
	private String inemail;
	private Timestamp joinday;
	private int jjim;
	private List<UserPhotoDto> photoList;
	private int mnum;
	@Override
	public String toString() {
		return "UserDto [unum=" + unum + ", uname=" + uname + ", age=" + age + ", gender=" + gender + ", email=" + email
				+ ", pass=" + pass + ", hp=" + hp + ", city1=" + city1 + ", city2=" + city2 + ",category=" + category + 
				", inemail=" + inemail + ", joinday=" + joinday
				+ "]";
	}
	
	
}
