package xyz.itwill.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.util.HtmlUtils;

import xyz.itwill.dto.Qna;
import xyz.itwill.dto.Qreply;
import xyz.itwill.dto.Users;
import xyz.itwill.service.QnaService;
import xyz.itwill.service.QreplyService;
import xyz.itwill.util.Criteria;
import xyz.itwill.util.PageMaker;

@Controller
public class QnaController {
	
	@Autowired
	private QnaService qnaService;
	
	@Autowired
	private QreplyService qreplyService;
	
	

	// �����ϴ� ���� ������ �̵�
	@RequestMapping(value = "/jaju")
	public String jaju() {
		return "qna/jaju";
	}

	// �̿� ���� �ȳ� ������ �̵�
	@RequestMapping(value = "/rc_price_raise")
	public String rcPriceRaise() {
		return "qna/rc_price_raise";
	}

	// Q&A ����Ʈ ���
	@RequestMapping(value = "/qna_list", method = RequestMethod.GET)
	public String qlist(Model model, Criteria cri, HttpSession session) throws Exception {
		//HttpSession ��ü�� ����� ȸ�� ���� �ҷ�����
		Users loginSession=(Users)session.getAttribute("loginSession");	
	
		model.addAttribute("qlist", qnaService.qlist(cri));
		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(cri);
		pageMaker.setTotalCount(qnaService.qlistCount());
		model.addAttribute("pageMaker", pageMaker);
		model.addAttribute("loginSession", loginSession);
		return "qna/qna_list";

	}

	// Q&A ����ȸ
	@RequestMapping(value = "/qna_detail", method = RequestMethod.GET)
	public String qgetRead(Qna qna, Model model) throws Exception {
		model.addAttribute("qread", qnaService.qread(qna.getQno()));
		
		List<Qreply> reply = null;
		reply = qreplyService.list(qna.getQno());
		model.addAttribute("reply", reply);
		return "qna/qna_detail";
	
	
	
	}

	// Q&A �ۼ�(������, �α��λ���� �� �ۼ� ����)
	@RequestMapping(value = "/qna_write", method = RequestMethod.GET)
	public String qgetWrite() throws Exception {
		return "qna/qna_write";
	}

	@RequestMapping(value = "/qna_write", method = RequestMethod.POST)
	public String qpostWrite(Qna qna, HttpSession session, Model model) throws Exception {
		//HttpSession ��ü�� ����� ȸ�� ���� �ҷ�����
		Users loginSession=(Users)session.getAttribute("loginSession");		
		
		qna.setQcontent(HtmlUtils.htmlEscape(qna.getQcontent()));
		qnaService.qwrite(qna);
		model.addAttribute("loginSession", loginSession);
		return "redirect:/qna_list";
	}

	// Q&A ����(������ , ���ۼ��� �� ���� ����)
	@RequestMapping(value = "/qna_modify", method = RequestMethod.GET)
	public String qgetModify(Qna qna, Model model) throws Exception {
		model.addAttribute("qread", qnaService.qread(qna.getQno()));
		return "qna/qna_modify";
	}

	@RequestMapping(value = "/qna_modify", method = RequestMethod.POST)
	public String qpostModify(Qna qna) throws Exception {
		qna.setQtitle(HtmlUtils.htmlEscape(qna.getQtitle()));
		qna.setQcontent(HtmlUtils.htmlEscape(qna.getQcontent()));
		qnaService.qupdate(qna);
		return "redirect:/qna_detail?qno=" + qna.getQno();
	}

	// Q&A ����
	@RequestMapping(value = "/qna_delete", method = RequestMethod.GET)
	public String qgetDelete(int qno) throws Exception {
		qnaService.qdelete(qno);
		return "redirect:/qna_list";
	}
	/*
	 * //QnA ����Ʈ ���
	 * 
	 * @RequestMapping(value = "/QnA_list") public String qqnaList() { return
	 * "QnA/QnA_list"; }
	 * 
	 * //QnA �� ��ȸ(�α��� ����ڸ� ����)
	 * 
	 * @RequestMapping(value = "/QnA_detail") public String qnaDetail() { return
	 * "QnA/QnA_detail"; }
	 * 
	 * //QnA ����(���ۼ���, �����ڸ� ����)
	 * 
	 * @RequestMapping(value = "/QnA_modify") public String qnaModify() { return
	 * "QnA/QnA_modify"; }
	 * 
	 * //QnA �۾���(�α��� ����ڸ� ����)
	 * 
	 * @RequestMapping(value = "/QnA_write") public String qnaWrite() { return
	 * "QnA/QnA_write"; }
	 */

}
