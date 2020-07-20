package kkk.kkk.kkk;

import lombok.Data;
import lombok.Setter;
import lombok.Getter;

@Data
@Setter
@Getter
public class DTO {
	private String id, password, tel;
	private int code;

	private String title, content, wdate, reply_content, rdate, redate;
	private int hit, cont_num, num, re_num;

	private int rn, rcnt, r_rn;
	private int start, end, startpage, endpage;
	private int pageNUM;
	private String skey, sval;
}// class end