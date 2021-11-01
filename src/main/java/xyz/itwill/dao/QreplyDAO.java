package xyz.itwill.dao;

import java.util.List;

import xyz.itwill.dto.Qreply;

public interface QreplyDAO {
	// ��� ��ȸ
	public List<Qreply> list(int qno) throws Exception;

	// ��� ��ȸ
	public void write(Qreply qreply) throws Exception;

	// ��� ����
	public void modify(Qreply qreply) throws Exception;

	// ��� ����
	public void delete(Qreply qreply) throws Exception;
}
