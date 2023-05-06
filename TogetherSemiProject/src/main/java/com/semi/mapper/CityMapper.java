package com.semi.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;
import com.semi.dto.CityBoardDto;
import com.semi.dto.UserDto;

@Mapper
public interface CityMapper {
	public int getTotalCountCity(String city1, String city2);
	public List<CityBoardDto> getCityList(String city1, String city2);

	public CityBoardDto getDetailbycbnum(int cbnum);
	public UserDto getDetailbyunum(int unum);
	public void insertCity(CityBoardDto dto);
	/**
	public void insertCity(CityBoardDto dto);
	public void updateCity(CityBoardDto dto);
	public void deleteCity(int cbnum);
	**/
	}
	

