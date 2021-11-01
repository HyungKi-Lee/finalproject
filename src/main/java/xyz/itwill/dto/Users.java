package xyz.itwill.dto;
/*
이름       널?       유형            
-------- -------- ------------- 
ID       NOT NULL VARCHAR2(20)  - 아이디(중복불가)
PW       NOT NULL VARCHAR2(200) - 비밀번호
NAME     NOT NULL VARCHAR2(20)  - 이름
EMAIL    NOT NULL VARCHAR2(30)  - 이메일(중복불가)
PHONE    NOT NULL VARCHAR2(20)  - 전화번호
BIRTHDAY NOT NULL DATE          - 생년월일
ZIPCODE  NOT NULL VARCHAR2(10)  - 우편번호
ADDRESS1 NOT NULL VARCHAR2(150) - 상세주소1
ADDRESS2 NOT NULL VARCHAR2(50)  - 상세주소2
JOINDATE NOT NULL DATE          - 가입날짜
STATUS   NOT NULL NUMBER(1)     - 0 = 탈퇴회원 / 1 = 일반회원 / 9 = 관리자   
*/

public class Users {
	private String id;
	private String pw;
	private String name;
	private String email;
	private String phone;
	private String birthday;
	private String zipcode;
	private String address1;
	private String address2;
	private String joindate;
	private int status;
	
	public Users() {
		// TODO Auto-generated constructor stub
	}
	

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getPw() {
		return pw;
	}

	public void setPw(String pw) {
		this.pw = pw;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getBirthday() {
		return birthday;
	}

	public void setBirthday(String birthday) {
		this.birthday = birthday;
	}

	public String getZipcode() {
		return zipcode;
	}

	public void setZipcode(String zipcode) {
		this.zipcode = zipcode;
	}

	public String getAddress1() {
		return address1;
	}

	public void setAddress1(String address1) {
		this.address1 = address1;
	}

	public String getAddress2() {
		return address2;
	}

	public void setAddress2(String address2) {
		this.address2 = address2;
	}

	public String getJoindate() {
		return joindate;
	}

	public void setJoindate(String joindate) {
		this.joindate = joindate;
	}

	public int getStatus() {
		return status;
	}

	public void setStatus(int status) {
		this.status = status;
	}

}
