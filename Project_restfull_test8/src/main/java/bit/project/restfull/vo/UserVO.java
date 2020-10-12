package bit.project.restfull.vo;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.Setter;
import lombok.extern.log4j.Log4j;

@Log4j
@Getter
@Setter
@AllArgsConstructor
public class UserVO {

	private String member_id;
	private String pw;
	private String name;
	private String birth;
	private String gender;
	private String phone;
	private String email;
	private int enabled;
	private String grade_name;
	
	public UserVO() {
		this("member_id", "pw", "name", "birth", "gender", "phone", "email", 1, "�ѹ���");
	}	
	
	public String getAuthorities() {
		String authorities = "ROLE_USER";
		return authorities;
	}
}
