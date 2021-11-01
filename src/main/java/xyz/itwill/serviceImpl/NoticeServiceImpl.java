package xyz.itwill.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import xyz.itwill.dao.NoticeDAO;
import xyz.itwill.dto.Notice;
import xyz.itwill.service.NoticeService;
import xyz.itwill.util.Criteria;

@Service
public class NoticeServiceImpl implements NoticeService {

	@Autowired
	private NoticeDAO dao;
	
	@Override
	public List<Notice> list(Criteria cri) throws Exception {
		return dao.list(cri);
	}

	@Override
	public Notice read(int nno) throws Exception {
		// TODO Auto-generated method stub
		return dao.read(nno);
	}

	@Override
	public void write(Notice notice) throws Exception {
		dao.write(notice);
		
	}

	@Override
	public void update(Notice notice) throws Exception {
		dao.update(notice);
		
	}

	@Override
	public void delete(int nno) throws Exception {
		dao.delete(nno);
		
	}

	@Override
	public int listCount() throws Exception {
		return dao.listCount();
	}

	

}
