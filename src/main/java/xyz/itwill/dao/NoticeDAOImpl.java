package xyz.itwill.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import xyz.itwill.dto.Notice;
import xyz.itwill.util.Criteria;

@Repository
public class NoticeDAOImpl implements NoticeDAO  {

	@Autowired
	private SqlSession sqlSession;
	private static String namespace = "xyz.itwill.mapper.NoticeMapper";
	
	@Override
	public List<Notice> list(Criteria cri) throws Exception {
		return sqlSession.selectList(namespace + ".listPage", cri);
	}
	@Override
	public Notice read(int nno) throws Exception {
		return sqlSession.selectOne(namespace + ".read", nno);
	}
	@Override
	public void write(Notice notice) throws Exception {
		sqlSession.insert(namespace + ".insert", notice);
		
	}
	@Override
	public void update(Notice notice) throws Exception {
		sqlSession.update(namespace + ".update", notice);
		
	}
	@Override
	public void delete(int nno) throws Exception {
		sqlSession.delete(namespace + ".delete", nno);
		
	}
	@Override
	public int listCount() throws Exception {
		return sqlSession.selectOne(namespace + ".listCount");
	}
	

}
