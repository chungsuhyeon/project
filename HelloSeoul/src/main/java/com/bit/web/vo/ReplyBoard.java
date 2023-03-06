package com.bit.web.vo;

import lombok.Data;

@Data
public class ReplyBoard {
	private int rep_no;
	private int com_no;
	private String user_id;
	private String rep_cont;
	private String rep_regdate;
	private String user_nick;
}
