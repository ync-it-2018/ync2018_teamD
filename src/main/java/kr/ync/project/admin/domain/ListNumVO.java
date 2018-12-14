package kr.ync.project.admin.domain;
/**
 * 
 * ListNumVO.java
 *
 * @Author : 이우호
 * @Date   : 2018. 12. 14.
 * @Description 
 *  페이징에 필요한 정보
 *
 */
public class ListNumVO {

	private int strNum;
	private int nowNum;
	private int s_listNum;
	private int e_listNum;
	private int cnt;
	
	public ListNumVO() {
		this.strNum = 1;
		this.nowNum = 1;
	}
	
	public void setstrNum(int strNum) {

		if (strNum <= 0) {
			this.strNum = 1;
			return;
		}

		this.strNum = strNum;
	}

	public void setnowNum(int nowNum) {

		this.nowNum = nowNum;
	}

	public int getstrNum() {
		return strNum;
	}
	
	public int getnowNum() {
		return nowNum;
	}

	@Override
	public String toString() {
		return "ListNumVO [strNum=" + strNum + ", " + "nowNum=" + nowNum + ", " + "cnt=" + cnt 
				+ ", " + "s_listNum=" + s_listNum + ", " + "e_listNum=" + e_listNum + "]";
	}

	public void setCnt(int cnt) {
		// TODO Auto-generated method stub
		if(cnt<=10) {
			this.cnt = 1;
		}else {
			this.cnt = (cnt/10) + 1;
		}
	}
	public int getCnt() {
		// TODO Auto-generated method stub
		return cnt;
	}
	
	public void sets_listNum(int nowNum) {
		// TODO Auto-generated method stub
		if(nowNum == 1) {
			s_listNum = 0;
		}else {
			s_listNum = (nowNum-1)*10;
		}
	}
	public int gets_listNum() {
		// TODO Auto-generated method stub
		return s_listNum;
	}
	
	public void sete_listNum(int s_listNum) {
		// TODO Auto-generated method stub
		e_listNum = s_listNum+9;
	}
	public int gete_listNum() {
		// TODO Auto-generated method stub
		return e_listNum;
	}
}
