package kkk.kkk.kkk;

import java.util.Date;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Repository;

@Component
@Repository
public class DAO {

	@Autowired
	SqlSessionTemplate temp;
	
	public void registin(DTO dto)	{
		temp.insert("insertregist", dto);
	}

	public int dblogin(DTO dto) {
		System.out.println("dao: "+dto.getId());
		System.out.println("dao: "+dto.getPassword());
		int cnt = temp.selectOne("logincheck", dto);
		return cnt;
	}
	
	public void dbwritesave(DTO dto) {
		temp.insert("writesave", dto);
	}
	
	public int dbcountnotice() {
		int i=0;
		i=temp.selectOne("dbcount");
		return i;
	}
	
	public List<DTO> dbshownotice(int start, int end){
		DTO dto = new DTO();
		dto.setStart(start);
		dto.setEnd(end);
		return temp.selectList("dbcommentatoz", dto);
	}
	
	public List<DTO> dbshownotice1(int start, int end){
		DTO dto = new DTO();
		dto.setStart(start);
		dto.setEnd(end);
		return temp.selectList("dbcommentatoz1", dto);
	}
	
	public List<DTO> dbdetail(int cont_num){
		return temp.selectList("dbshowdetail", cont_num);
	}
	
	public void updatecontent(DTO dto) {
		temp.update("updatecontent", dto);
	}
	
	public void deletcontent(int num) {
		temp.delete("deletecontent", num);
	}
	
	public void replysave(DTO dto) {
		System.out.println("id:"+dto.getId());
		System.out.println("dist:"+dto.getReply_content());
		temp.insert("dbreplysave", dto);
	}
	
	public List<DTO> showreplys(int cont_num){
		return temp.selectList("dbshowreply", cont_num);
	}
	
	public int nextcontentnum(int rn) {
		return temp.selectOne("dbnextcontentnum", rn);
	}
	
	public int previouscontentnum(int rn) {
		return temp.selectOne("dblastcontentnum", rn);
	}
	
	
	
	
	
	
	
	
}