package xyz.itwill.service;

import java.util.List;
import java.util.Map;

import xyz.itwill.dto.Qna;
import xyz.itwill.util.Criteria;

public interface QnaService {
	public List<Qna> qlist(Criteria cri) throws Exception; 
	public Qna qread(int qno) throws Exception;
	public void qwrite(Qna qna) throws Exception;
	public void qupdate(Qna qna) throws Exception;
	public void qdelete(int qno) throws Exception;
	public int qlistCount() throws Exception;
	/////////////////////����������/////////////////////
	List<Qna> getQnaListById(String id); //���� ���Ǹ��
	int getMyQnaCount(String id); //���� ���ǰǼ�
	List<Qna> getMyQnaList(Map<String, Object> map); //���� ���Ǹ��

	/////////////////////������ ������/////////////////////
	//���ù���
	int getTodayQnaCount();
	List<Qna> getTodayQnaList();
	//�˻���� 
	int getSearchQnaCount(Map<String, Object> map);
	List<Qna> getSearchQnaList(Map<String, Object> map);
}
