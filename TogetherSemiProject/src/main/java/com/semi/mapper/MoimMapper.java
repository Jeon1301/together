package com.semi.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

import com.semi.dto.MoimDto;

@Mapper
public interface MoimMapper {
	public int getMaxNum();
	public int getTotalCount();
	public void insertMoim(MoimDto dto);
	public List<MoimDto> getPagingList(Map<String, Integer> map);//map:start,perpage
	public void updateJjimcount(Map<String, Integer> map);//unum, mnum
	public MoimDto getData(int mnum);
	public void deleteMoim(int mnum);
	public void updateMoim(MoimDto dto);
	public int overlappedMname(MoimDto dto);
	public int pressJjim(Map<String, Object> map);//unum, mnum
	public List<MoimDto> getCategoryPagingList(Map<String, Integer> map);
}
