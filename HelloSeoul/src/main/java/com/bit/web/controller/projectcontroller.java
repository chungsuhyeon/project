package com.bit.web.controller;


import java.util.HashMap;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.bit.web.dao.ProjectDao;
import com.bit.web.vo.ComBoard;
import com.bit.web.vo.ReplyBoard;


@Controller
public class projectcontroller {
	@Resource
	ProjectDao dao;
	@PostMapping(value="boardInsert")
	public String boardInsert(ComBoard board) {
		board.setCom_no(dao.selectBoradNo());
		dao.boardInsert(board);
		return "redirect:/boardSelect";
	}
	@GetMapping(value="boardSelect")
	public String boardSelect(ComBoard board,Model model) {
		model.addAttribute("board",dao.selectBoard());
		return "pages/ComList";
	}
	@RequestMapping(value="infoSelect")
	public String infoSelect(int no,Model model) {
		dao.hitAction(no);
		model.addAttribute("info", dao.selectInfoBoard(no));
		return "pages/ComInfo";
	}
	@RequestMapping(value="deleteCom")
	public String deleteCom(int no,Model model) {
		dao.deleteBoard(no);
		model.addAttribute("board",dao.selectBoard());	
		return "pages/ComList";
	}
	@RequestMapping(value="modifyAction")
	public String modifyAction(int no,Model model) {
		model.addAttribute("info",dao.selectInfoBoard(no));
		return "pages/Commodify";
	}
	@RequestMapping(value="boardUpdate")
	public String boardUpdate(int no,ComBoard board,Model model) {
		board.setCom_no(no);
		dao.updateBoard(board);
		model.addAttribute("board",dao.selectBoard());
		return "pages/ComList";
	}
	@PostMapping(value="replyInsert")
	public String replyInsert(String reply,ReplyBoard reboard,int no) {
		reboard.setRep_cont(reply);
		reboard.setCom_no(no);
		reboard.setRep_no(dao.replyBoardNo());
		return "good";	
	}
}
	