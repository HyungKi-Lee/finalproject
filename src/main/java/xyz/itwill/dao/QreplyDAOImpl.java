package xyz.itwill.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import xyz.itwill.dto.Qreply;

@Repository
public class QreplyDAOImpl  implements QreplyDAO {
	
	@Autowired
	private SqlSession session;

	private static String namespace = "xyz.itwill.mapper.QreplyMapper";

	// ¥Ò±€ ¡∂»∏
	@Override
	public List<Qreply> list(int qno) throws Exception {
		return session.selectList(namespace + ".qreplyList", qno);
	}

	// ¥Ò±€ ¿€º∫
	@Override
	public void write(Qreply qreply) throws Exception {
		session.insert(namespace + ".qreplyWrite", qreply);
	
		
	}

	// ¥Ò±€ ºˆ¡§
	@Override
	public void modify(Qreply qreply) throws Exception {
		session.update(namespace + ".qreplyModify", qreply);
	}

	// ¥Ò±€ ªË¡¶
	@Override
	public void delete(Qreply qreply) throws Exception {
		session.delete(namespace + ".qreplyDelete", qreply);
	}
}
