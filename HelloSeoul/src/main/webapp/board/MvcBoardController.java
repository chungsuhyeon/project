package com.bit.web.controller;

import java.io.File;
import java.io.FileOutputStream;
import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.bit.web.dao.boardMemberDao;
import com.bit.web.vo.boardMemberBean;
import com.bit.web.vo.postBoardBean;

@Controller
public class MvcBoardController {
	
	@Autowired
	private boardMemberDao dao;
	private boardMemberBean bean;
	
	@GetMapping(value = "loginCheck")
	public String IdCheck(String id,String password,HttpServletRequest request,Model model) {
		if(password.equals(dao.getPassword(id))) {
			HashMap<String,Object>map=new HashMap<String, Object>();
			request.getSession().setAttribute("id", id);
			request.getSession().setMaxInactiveInterval(60*60);
			model.addAttribute("list", dao.selectPostList(map));
			return "board/board";
		}else {
			return "redirect:/board/signin.jsp";
		}
		
	}
	
	@PostMapping(value = "ajaxFindBoardID")
	@ResponseBody
	public String findBoardId(@RequestParam(value = "id",required = false, defaultValue = "BLUE")String id) {
		return dao.ajaxGetBoardId(id)!=null?String.valueOf(true):String.valueOf(false);
	}
	
	@PostMapping(value = "boardMemberInsert")
	public String boardMemberInsert(@ModelAttribute (name="boardMember") boardMemberBean bean) {
		bean.setNo(dao.getSequence());
		System.out.println(bean);
		dao.insertBoardMember(bean);
		return "board/signin";
	}
	
	@RequestMapping(value = "postInsert")
	public String boardPostInsert(postBoardBean bean,Model model){//,@RequestParam(value = "file",required = false, defaultValue = "noImage.jpg")MultipartFile file) {
		
//		String loc = "E:\\downWeb\\mvcWeb\\mvcWeb\\src\\main\\webapp\\board\\img";
//		FileOutputStream fos = null;
//		String orginFile = file.getOriginalFilename();
//		if (orginFile.length() > 0) {
//			try {
//				fos = new FileOutputStream(loc + orginFile);
//				fos.write(file.getBytes());
//				bean.setFilename(orginFile);
//			} catch (Exception e) {
//				// TODO: handle exception
//				e.printStackTrace();
//			}
//
//		}
		bean.setNo(dao.postSequence());
		bean.setFilename("noFile");
		if(bean.getJob().equals("new")) {
			bean.setPnum(bean.getNo());
			bean.setRef(bean.getNo());
		}else {
			HashMap<String, Object>map = new HashMap<String, Object>();
			map.put("job",bean.getJob());
			map.put("pnum",bean.getPnum());
			map.put("ref",bean.getRef());
			map.put("step",bean.getStep());
			dao.updateReply(map);
			dao.updateStep(map);
			bean.setStep(bean.getStep()+1);
			bean.setLev(bean.getLev()+1);
			
		}
		System.out.println(bean);
		dao.insertPostBoard(bean);
		HashMap<String,Object>map=new HashMap<String, Object>();
		model.addAttribute("list", dao.selectPostList(map));
		
		return "board/board";
	}
	
//	@RequestMapping(value = "download")
//	public ModelAndView downloadProcess(@RequestParam(value = "fileName",required=false,defaultValue="noImg.jpg")String fileName) {
//		String locations = "E:\\downWeb\\mvcWeb\\mvcWeb\\src\\main\\webapp\\board\\img";
//		File file=new File(locations.concat(fileName));
//		System.out.println(file);
//		
//		return new ModelAndView("download","downloadFile",file);
//	}
	
//	@RequestMapping(value = "postlist")
//	public String listPosting(ModelMap model) {
//		HashMap<String, Object>map=new HashMap<String, Object>();
//		model.addAttribute("list", dao.selectPostList(map));
//		return "board/board";
//	}
	
	@RequestMapping(value = "hitProccess")
	public String hitProccess(int no,String job,String page,String id) {
		dao.updateHit(no);
		return "redirect:/infoProccess?no="+no+"&job="+job+"&page="+page;
	}
	
	@RequestMapping(value = "infoProccess")
	public String infoProccess(Model model,int no,String job,String page,String id) {
//		String infono = dao.getInfoNo(no);
//		String emojiId = dao.getEmojiId(id);
//		if(infono.equals(no)&& emojiId.equals(id) ) {   //elseif 둘다 있으면 넘어감 else 넣어줌   
//			System.out.println("test");
//		}
		System.out.println(id);
		System.out.println("infoProccess");
		model.addAttribute("info", dao.selectPostInfo(no));
		return "board/info";
	}
	
	@PostMapping(value = "goodAction")
	public String goodAction(int no,String id) {
		return "";
	}
	
	@RequestMapping(value = "deleteAction")
	public String deleteProcess(int no) {
		dao.deletePost(no);
		return "board/board";
	}

}











