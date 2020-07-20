package kkk.kkk.kkk;

import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class HomeController {

	@Autowired
	DAO dao;
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);

	@RequestMapping(value = "/index.do", method = RequestMethod.GET)
	public String start(HttpSession session, Model model) {
		logger.info("Welcome home! 첫 페이지 입니다~");
		String id = (String) session.getAttribute("login_id");
		if (id != null) {
			model.addAttribute("ids", id);
		}
		List<DTO> dto1 = dao.dbshownotice(1, 6);
		List<DTO> dto2 = dao.dbshownotice(7, 12);
		List<DTO> dto3 = dao.dbshownotice(13, 18);
		List<DTO> dto4 = dao.dbshownotice(19, 24);
		int total = dao.dbcountnotice();
		model.addAttribute("total", total);
		model.addAttribute("dto1", dto1);
		model.addAttribute("dto2", dto2);
		model.addAttribute("dto3", dto3);
		model.addAttribute("dto4", dto4);
		return "home2";
	}

	@RequestMapping(value = "/comment.do", method = RequestMethod.GET)
	public String commentpage(DTO dto, Model model, HttpSession session, HttpServletRequest request, HttpServletResponse response) {
		logger.info("Welcome home! 게시판 페이지 입니다~");

		String pnum = "";
		int pageNUM = 0, pagecount = 0;
		int start = 0, end = 0;
		int startpage = 0, endpage = 0;
		int total = 0;

		pnum = request.getParameter("pageNum");
		if (pnum == "" || pnum == null) {
			pnum = "1";
		}

		pageNUM = Integer.parseInt(pnum);
		total = dao.dbcountnotice();
		if (total == 0)
			total = 1;
		start = (pageNUM - 1) * 15 + 1;
		end = (pageNUM * 15);

		if (total % 15 == 0) {
			pagecount = total / 15;
		} else {
			pagecount = (total / 15) + 1;
		}
		int temp = (pageNUM - 1) % 15;
		startpage = pageNUM - temp;
		endpage = startpage + 9;

		if (endpage > pagecount) {
			endpage = pagecount;
		}

		List<DTO> list = dao.dbshownotice1(start, end);
		model.addAttribute("list", list);
		model.addAttribute("total", total);
		model.addAttribute("pageNUM", pageNUM);
		model.addAttribute("start", start);
		model.addAttribute("end", end);
		model.addAttribute("startpage", startpage);
		model.addAttribute("endpage", endpage);
		model.addAttribute("pagecount", pagecount);

		String id = (String) session.getAttribute("login_id");
		if (id != null) {
			model.addAttribute("ids", id);
		}
		return "notice_board";
	}

	@RequestMapping(value = "/write.do", method = RequestMethod.GET)
	public String writepage(HttpSession session, Model model) {
		logger.info("게시물 작성페이지 입니다.");
		String id = (String) session.getAttribute("login_id");
		if (id != null) {
			model.addAttribute("ids", id);
		}
		return "write";
	}

	@RequestMapping(value = "/login.do", method = RequestMethod.GET)
	public String loginpage(HttpServletResponse response) throws UnsupportedEncodingException, IOException {
		logger.info("로그인 페이지 입니다.");
		return "login";
	}

	@RequestMapping(value = "/regist.do", method = RequestMethod.GET)
	public String registpage() {
		logger.info("회원가입 페이지 입니다.");
		return "regist";
	}

	@RequestMapping(value = "/register.do")
	public String register(DTO dto) {
		System.out.println(dto.getId());
		System.out.println(dto.getPassword());
		System.out.println(dto.getTel());
		System.out.println(dto.getCode());
		dao.registin(dto);

		return "home2";
	}

	@RequestMapping(value = "/loginto.do")
	public String loginer(DTO dto, HttpSession session, Model model, HttpServletRequest request, HttpServletResponse response) throws Exception {
		response.setContentType("text/html; charset=utf-8");
		System.out.println(dto.getId());
		System.out.println(dto.getPassword());
		String result = dto.getId();
		int cnt = dao.dblogin(dto);
		if (cnt == 1) {
			session.setAttribute("login_id", result);
			return "redirect:/index.do";
		} else {
			return "redirect:/login.do?msg=error";
		}
	}

	@RequestMapping(value = "/logout.do")
	public String logouter(HttpSession session) {
		session.invalidate();
		return "home2";
	}

	@RequestMapping(value = "/write_save.do")
	public String writesaver(DTO dto, HttpSession session) {
		System.out.println(dto.getTitle());
		System.out.println(dto.getContent());
		String ids = (String) session.getAttribute("login_id");
		if (ids == null) {
			ids = "unknown user";
		}
		dto.setId(ids);
		dao.dbwritesave(dto);
		return "redirect:/comment.do";
	}

	@RequestMapping(value = "notice_board-detail.do")
	public String showdetail(@RequestParam("cont_num") int s, @RequestParam("row") int rn, DTO dto, HttpServletRequest request, Model model) {
		List<DTO> dtoi = dao.dbdetail(s);
		System.out.println("ss: " + s);
		System.out.println("상세데이터:" + dtoi);
		model.addAttribute("rn", rn);
		model.addAttribute("dtoi", dtoi);
		try {
			List<DTO> dtor = dao.showreplys(s);
			model.addAttribute("dtor", dtor);
			System.out.println(dtor);
		} catch (Exception e) {
			System.out.println("댓글작성 에러 발생: " + e);
		}
		int total = dao.dbcountnotice();
		model.addAttribute("total", total);
		return "notice_board-detail";
	}

	@RequestMapping(value = "editsave.do")
	public String Editsave(DTO dto, HttpServletRequest request, Model model) {
		System.out.println("content!!:" + dto.getContent());
		System.out.println("title!!:" + dto.getTitle());
		System.out.println("number!!:" + dto.getCont_num());
		dao.updatecontent(dto);
		int row=1;

		return "redirect:/notice_board-detail.do?cont_num=" + dto.getCont_num()+"&&row="+row ;
	}

	@RequestMapping(value = "delete.do")
	public String delete_content(@RequestParam("num") int num) {
		dao.deletcontent(num);
		return "redirect:/comment.do";
	}

	@RequestMapping(value = "reply_save.do")
	public String replysave(@RequestParam("reply_content") String ss, @RequestParam("cont_num") int aa, @RequestParam("row") int row, DTO dto, HttpSession session, Model model) {
		String id = (String) session.getAttribute("login_id");
		if (id == null) {
			id = "unknown user";
		}
		dto.setId(id);
		dto.setReply_content(ss);
		try {
			dao.replysave(dto);
		} catch (Exception e) {
			System.out.println("댓글 저장 에러: " + e);
		}
		return "redirect:/notice_board-detail.do?cont_num="+aa+"&&row="+row;
	}
	
	@RequestMapping(value= "nextcontent.do")
	public String nextcontent(@RequestParam("rn") int rn, Model model) {
		int next_cont_num = dao.nextcontentnum(rn);
		return "redirect:/notice_board-detail.do?cont_num="+next_cont_num+"&&row="+(rn+1);
	}
	
	@RequestMapping(value= "previouscontent.do")
	public String previouscontent(@RequestParam("rn") int rn, Model model) {
		int last_cont_num = dao.previouscontentnum(rn);
		return "redirect:/notice_board-detail.do?cont_num="+last_cont_num+"&&row="+(rn-1);
	}

}
