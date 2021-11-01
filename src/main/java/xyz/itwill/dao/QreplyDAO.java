package xyz.itwill.dao;

import java.util.List;

import xyz.itwill.dto.Qreply;

public interface QreplyDAO {
	// ´ñ±Û Á¶È¸
	public List<Qreply> list(int qno) throws Exception;

	// ´ñ±Û Á¶È¸
	public void write(Qreply qreply) throws Exception;

	// ´ñ±Û ¼öÁ¤
	public void modify(Qreply qreply) throws Exception;

	// ´ñ±Û »èÁ¦
	public void delete(Qreply qreply) throws Exception;
}
