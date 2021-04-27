package com.kh.notice.model.vo;

import java.sql.Date;

public class Question {
	
	private int qNo;
	private int mEM_NO_Q;
	private int oR_NO_Q;
	private String qTitle;
	private String qContent;
	private Date qDate;
	private String qField;
	private String qAnswerYn;
	private String qEmailYn;
	private String qSmsYn;
	private String qDelYn;
	private String aContent;
	private Date aDate;
	private String qAttachment;
	
	public Question() {}

	public Question(int qNo, int mEM_NO_Q, int oR_NO_Q, String qTitle, String qContent, Date qDate, String qField,
			String qAnswerYn, String qEmailYn, String qSmsYn, String qDelYn, String aContent, Date aDate,
			String qAttachment) {
		super();
		this.qNo = qNo;
		this.mEM_NO_Q = mEM_NO_Q;
		this.oR_NO_Q = oR_NO_Q;
		this.qTitle = qTitle;
		this.qContent = qContent;
		this.qDate = qDate;
		this.qField = qField;
		this.qAnswerYn = qAnswerYn;
		this.qEmailYn = qEmailYn;
		this.qSmsYn = qSmsYn;
		this.qDelYn = qDelYn;
		this.aContent = aContent;
		this.aDate = aDate;
		this.qAttachment = qAttachment;
	}
	
	

	public Question(Date qDate, String qTitle,  String qField, String qAnswerYn, int oR_NO_Q) {
		super();
		this.oR_NO_Q = oR_NO_Q;
		this.qTitle = qTitle;
		this.qDate = qDate;
		this.qField = qField;
		this.qAnswerYn = qAnswerYn;
	}

	public int getqNo() {
		return qNo;
	}

	public void setqNo(int qNo) {
		this.qNo = qNo;
	}

	public int getmEM_NO_Q() {
		return mEM_NO_Q;
	}

	public void setmEM_NO_Q(int mEM_NO_Q) {
		this.mEM_NO_Q = mEM_NO_Q;
	}

	public int getoR_NO_Q() {
		return oR_NO_Q;
	}

	public void setoR_NO_Q(int oR_NO_Q) {
		this.oR_NO_Q = oR_NO_Q;
	}

	public String getqTitle() {
		return qTitle;
	}

	public void setqTitle(String qTitle) {
		this.qTitle = qTitle;
	}

	public String getqContent() {
		return qContent;
	}

	public void setqContent(String qContent) {
		this.qContent = qContent;
	}

	public Date getqDate() {
		return qDate;
	}

	public void setqDate(Date qDate) {
		this.qDate = qDate;
	}

	public String getqField() {
		return qField;
	}

	public void setqField(String qField) {
		this.qField = qField;
	}

	public String getqAnswerYn() {
		return qAnswerYn;
	}

	public void setqAnswerYn(String qAnswerYn) {
		this.qAnswerYn = qAnswerYn;
	}

	public String getqEmailYn() {
		return qEmailYn;
	}

	public void setqEmailYn(String qEmailYn) {
		this.qEmailYn = qEmailYn;
	}

	public String getqSmsYn() {
		return qSmsYn;
	}

	public void setqSmsYn(String qSmsYn) {
		this.qSmsYn = qSmsYn;
	}

	public String getqDelYn() {
		return qDelYn;
	}

	public void setqDelYn(String qDelYn) {
		this.qDelYn = qDelYn;
	}

	public String getaContent() {
		return aContent;
	}

	public void setaContent(String aContent) {
		this.aContent = aContent;
	}

	public Date getaDate() {
		return aDate;
	}

	public void setaDate(Date aDate) {
		this.aDate = aDate;
	}

	public String getqAttachment() {
		return qAttachment;
	}

	public void setqAttachment(String qAttachment) {
		this.qAttachment = qAttachment;
	}

	@Override
	public String toString() {
		return "Question [qNo=" + qNo + ", mEM_NO_Q=" + mEM_NO_Q + ", oR_NO_Q=" + oR_NO_Q + ", qTitle=" + qTitle
				+ ", qContent=" + qContent + ", qDate=" + qDate + ", qField=" + qField + ", qAnswerYn=" + qAnswerYn
				+ ", qEmailYn=" + qEmailYn + ", qSmsYn=" + qSmsYn + ", qDelYn=" + qDelYn + ", aContent=" + aContent
				+ ", aDate=" + aDate + ", qAttachment=" + qAttachment + "]";
	}

	
	
	
	
	

	
	
	

}