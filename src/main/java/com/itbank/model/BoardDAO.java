package com.itbank.model;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Select;

import com.itbank.component.Paging;
import com.itbank.vo.BoardVO;

public interface BoardDAO {

	@Select("select banner from v$version")
	String test();
 
	List<BoardVO> selectAll(Paging pg);

	int insert(BoardVO input);

	BoardVO selectOne(int idx);

	@Delete("delete from board where idx = #{idx}")
	int delete(int idx);

	int update(BoardVO input);

	@Select("select count(*) from board")
	int totalBoard();
}
