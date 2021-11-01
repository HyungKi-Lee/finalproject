package xyz.itwill.service;

import java.util.List;

import xyz.itwill.dto.Qreply;

public interface QreplyService {
	// ´ñ±Û Á¶È¸
	public List<Qreply> list(int qno) throws Exception;

	// ´ñ±Û ÀÔ·Â
	public void write(Qreply qreply) throws Exception;

	// ´ñ±Û ¼öÁ¤
	public void modify(Qreply qreply) throws Exception;

	// ´ñ±Û »èÁ¦
	public void delete(Qreply qreply) throws Exception;
}
