package xyz.itwill.serviceImpl;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import xyz.itwill.dao.QreplyDAO;
import xyz.itwill.dto.Qreply;
import xyz.itwill.service.QreplyService;

@Service
public class QreplyServiceImpl implements QreplyService{
	@Inject
	private QreplyDAO qreplyDAO;

	// ´ñ±Û Á¶È¸
	@Override
	public List<Qreply> list(int qno) throws Exception {
	    return qreplyDAO.list(qno);
	}

	@Override
	public void write(Qreply qreply) throws Exception {
	    qreplyDAO.write(qreply);
	}

	@Override
	public void modify(Qreply qreply) throws Exception {
	    qreplyDAO.modify(qreply);
	}

	@Override
	public void delete(Qreply qreply) throws Exception {
	    qreplyDAO.delete(qreply);
	}
}
