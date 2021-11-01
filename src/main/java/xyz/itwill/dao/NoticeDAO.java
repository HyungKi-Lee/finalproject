package xyz.itwill.dao;

import java.util.List;

import xyz.itwill.dto.Notice;
import xyz.itwill.util.Criteria;

public interface NoticeDAO {
	public List<Notice> list(Criteria cri) throws Exception; 
	public Notice read(int nno) throws Exception;
	public void write(Notice notice) throws Exception;
	public void update(Notice notice) throws Exception;
	public void delete(int nno) throws Exception;
	public int listCount() throws Exception;
}
