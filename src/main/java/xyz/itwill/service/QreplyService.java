package xyz.itwill.service;

import java.util.List;

import xyz.itwill.dto.Qreply;

public interface QreplyService {
	// ��� ��ȸ
	public List<Qreply> list(int qno) throws Exception;

	// ��� �Է�
	public void write(Qreply qreply) throws Exception;

	// ��� ����
	public void modify(Qreply qreply) throws Exception;

	// ��� ����
	public void delete(Qreply qreply) throws Exception;
}
