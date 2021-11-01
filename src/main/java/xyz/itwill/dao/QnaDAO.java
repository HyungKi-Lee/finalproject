package xyz.itwill.dao;

import java.util.List;
import java.util.Map;

import xyz.itwill.dto.Qna;
import xyz.itwill.util.Criteria;

public interface QnaDAO {
	public List<Qna> qlist(Criteria cri) throws Exception; 
	public Qna qread(int qno) throws Exception;
	public void qwrite(Qna qna) throws Exception;
	public void qupdate(Qna qna) throws Exception;
	public void qdelete(int qno) throws Exception;
	public int qlistCount() throws Exception;
	public void qHit(int qno) throws Exception;
	
	/////////////////////����������/////////////////////
	List<Qna> selectQnaListById(String id); //���� ���Ǹ��
	int selectMyQnaCount(String id); //���� ���ǰǼ�
	List<Qna> selectMyQnaList(Map<String, Object> map); //���� ���Ǹ��

	/////////////////////������ ������/////////////////////
	//���ù���
	int selectTodayQnaCount();
	List<Qna> selectTodayQnaList();
	//�˻���� 
	int selectSearchQnaCount(Map<String, Object> map);
	List<Qna> selectSearchQnaList(Map<String, Object> map);
}
