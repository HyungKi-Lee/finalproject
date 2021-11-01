package xyz.itwill.dto;
/*
�̸�       ��?       ����            
-------- -------- ------------- 
ID       NOT NULL VARCHAR2(20)  - ���̵�(�ߺ��Ұ�)
PW       NOT NULL VARCHAR2(200) - ��й�ȣ
NAME     NOT NULL VARCHAR2(20)  - �̸�
EMAIL    NOT NULL VARCHAR2(30)  - �̸���(�ߺ��Ұ�)
PHONE    NOT NULL VARCHAR2(20)  - ��ȭ��ȣ
BIRTHDAY NOT NULL DATE          - �������
ZIPCODE  NOT NULL VARCHAR2(10)  - �����ȣ
ADDRESS1 NOT NULL VARCHAR2(150) - ���ּ�1
ADDRESS2 NOT NULL VARCHAR2(50)  - ���ּ�2
JOINDATE NOT NULL DATE          - ���Գ�¥
STATUS   NOT NULL NUMBER(1)     - 0 = Ż��ȸ�� / 1 = �Ϲ�ȸ�� / 9 = ������   
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
