package xyz.itwill.mapper;

import java.util.List;
import java.util.Map;

import xyz.itwill.dto.Qna;

public interface QnaMapper {

	
	
	
	
	
	
	
	/////////////////////����������/////////////////////
	List<Qna> selectQnaListById(String id); //���� ���Ǹ��
	int selectMyQnaCount(String id); //���� ���ǰǼ�
	List<Qna> selectMyQnaList(Map<String, Object> map); //���� ���Ǹ��

	/////////////////////������ ������/////////////////////
	//���ÿ���
	int selectTodayQnaCount();
	List<Qna> selectTodayQnaList();
	//�˻���� 
	int selectSearchQnaCount(Map<String, Object> map);
	List<Qna> selectSearchQnaList(Map<String, Object> map);
}
