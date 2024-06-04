package com.itbank.model;

import java.util.List;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;

import com.itbank.vo.ReplyVO;

public interface ReplyDAO {

	@Select("select * from reply_view where d_idx = #{idx} order by idx desc")
	List<ReplyVO> selectAll(int idx);

	
	@Insert("insert into reply(d_idx, a_idx, contents) "
			+ "values(#{d_idx}, #{a_idx}, #{contents})")
	int insert(ReplyVO input);

}
