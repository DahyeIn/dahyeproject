package com.ezen.tiles;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class HomeController {

	@Autowired
	private SqlSession sqlSession;

	@RequestMapping("/main")
	public String ko1() {

		return "main";
	}

	@RequestMapping("/inputdata")
	public String ko3(HttpServletRequest req) {

		String email = req.getParameter("email");
		String name = req.getParameter("name");
		String password = req.getParameter("password");
		String passwordcheck = req.getParameter("passwordcheck");

		Informinter inter = sqlSession.getMapper(Informinter.class);
		inter.inputdata(email, name, password, passwordcheck);

		return "loginform";
	}

	@RequestMapping("/list")
	public String ko4(HttpServletRequest req, Model mo) {

		Informinter inter = sqlSession.getMapper(Informinter.class);
		ArrayList<InformDTO> list = inter.listout();

		mo.addAttribute("list", list);

		return "list";
	}

	@RequestMapping("/delete")
	public String ko5(HttpServletRequest req) {

		String email = req.getParameter("email");

		Informinter inter = sqlSession.getMapper(Informinter.class);
		inter.delete(email);

		return "redirect:list";
	}

	@RequestMapping("/modify")
	public String ko6() {
		return "modify";
	}

	@RequestMapping("/loginform")
	public String ko7() {

		return "loginform";
	}

	@RequestMapping("/loginaction")
	public String ko8(HttpServletRequest req, HttpServletResponse res) {

		String email = req.getParameter("email");
		String password = req.getParameter("password");

		return "main";
	}

	@RequestMapping("/join")
	public String ko8() {

		return "join";
	}

	@RequestMapping("/login")
	public ModelAndView ko9(HttpServletRequest req) {

		String email = req.getParameter("email");
		String password = req.getParameter("password");

		Informinter inter = sqlSession.getMapper(Informinter.class);
		InformDTO dto = inter.login(email, password);

		ModelAndView mav = new ModelAndView();
		if (dto != null) {
			HttpSession hs = req.getSession();
			hs.setAttribute("dto", dto);
			hs.setAttribute("login", true);
			mav.setViewName("redirect:main");
		} else {
			mav.setViewName("redirect:loginform");
		}

		return mav;
	}

	@RequestMapping("/logout")
	public ModelAndView ko10(HttpServletRequest req, HttpServletResponse response) {

		HttpSession session = req.getSession();
		session.removeAttribute("dto");
		session.removeAttribute("login");

		ModelAndView mav = new ModelAndView();
		mav.setViewName("redirect:main");

		return mav;
	}

	@RequestMapping("/boardinput")
	public String ko11() {

		return "boardinput";
	}

	@RequestMapping("/boardinputsave")
	public String ko12(HttpServletRequest req) {

		String email = req.getParameter("email");
		String title = req.getParameter("title");
		String content = req.getParameter("content");

		BoardInter binter = sqlSession.getMapper(BoardInter.class);
		binter.boardinput(email, title, content);

		return "redirect:boardList";
	}

	@RequestMapping("/boardList")
	public ModelAndView ko13(Model mo) {

		BoardInter binter = sqlSession.getMapper(BoardInter.class);

		ArrayList<BoardDTO> blist = binter.list();

		mo.addAttribute("boardlist", blist);

		ModelAndView mav = new ModelAndView();

		return mav;
	}

	private void count(int no) {
		BoardInter binter = sqlSession.getMapper(BoardInter.class);
		binter.count(no);
	}

	@RequestMapping("/detail")
	public String ko14(HttpServletRequest req, Model mo) {

		int no = Integer.parseInt(req.getParameter("no"));

		BoardInter binter = sqlSession.getMapper(BoardInter.class);
		count(no);
		ArrayList<BoardDTO> dlist = binter.detail(no);

		mo.addAttribute("detail", dlist);

		return "detail";
	}

	@RequestMapping("/boardDelete")
	public String ko15(HttpServletRequest req) {

		int no = Integer.parseInt(req.getParameter("no"));

		BoardInter binter = sqlSession.getMapper(BoardInter.class);
		binter.boardDelete(no);

		return "redirect:boardList";
	}

	@RequestMapping("/boardModify")
	public String ko16() {

		return "boardModify";
	}

	@RequestMapping("/boardModifysave")
	public String ko17(HttpServletRequest req) {

		HttpSession hs = req.getSession();

		int no = (Integer) hs.getAttribute("no");
		String email = req.getParameter("email");
		String title = req.getParameter("title");
		String content = req.getParameter("content");

		BoardInter binter = sqlSession.getMapper(BoardInter.class);
		binter.boardModify(no, email, title, content);

		return "redirect:boardList";
	}

}
