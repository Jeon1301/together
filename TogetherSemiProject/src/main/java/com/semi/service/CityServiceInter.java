package com.semi.service;

import java.util.List;
import java.util.Map;

import com.semi.dto.CbReBoardDto;
import com.semi.dto.CityBoardDto;
import com.semi.dto.UserDto;

public interface CityServiceInter {
	public int getTotalCountCity(String city1, String city2);
	public CityBoardDto getDetailbycbnum(int cbnum);
	public UserDto getDetailbyunum(int unum);
	public void insertCity(CityBoardDto dto);

	public List<CityBoardDto> getCityList(String city1, String city2);


	public String preContent(int num);
	public String nxtContent(int num);

	public String preNum(int num);
	public String nxtNum(int num);
	public void newComment(CbReBoardDto dto);
	public int getTotalComment();

	/**
	public void updateCity(CityBoardDto dto);
	public void deleteCity(int cbnum);
	**/
}
