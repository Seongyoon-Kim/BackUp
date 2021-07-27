package com.afd.member.qna;

public class QnaDTO {
	
	private String techQnaSeq;
	private String memberSeq;
	private String title;
	private String content;
	private String regdate;
	private String readcount;
	private String image;
	
	private String nickName;
	private String id;
	private String ccnt;
	private String isNew;

	public String getIsNew() {
		return isNew;
	}
	public void setIsNew(String isNew) {
		this.isNew = isNew;
	}
	public String getCcnt() {
		return ccnt;
	}
	public void setCcnt(String ccnt) {
		this.ccnt = ccnt;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	@Override
	public String toString() {
		return "QnaDTO [techQnaSeq=" + techQnaSeq + ", memberSeq=" + memberSeq + ", title=" + title + ", content="
				+ content + ", regdate=" + regdate + ", readcount=" + readcount + ", image=" + image + ", nickName="
				+ nickName + "]";
	}
	public String getNickName() {
		return nickName;
	}
	public void setNickName(String nickName) {
		this.nickName = nickName;
	}
	public String getTechQnaSeq() {
		return techQnaSeq;
	}
	public void setTechQnaSeq(String techQnaSeq) {
		this.techQnaSeq = techQnaSeq;
	}
	public String getMemberSeq() {
		return memberSeq;
	}
	public void setMemberSeq(String memberSeq) {
		this.memberSeq = memberSeq;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getRegdate() {
		return regdate;
	}
	public void setRegdate(String regdate) {
		this.regdate = regdate;
	}
	public String getReadcount() {
		return readcount;
	}
	public void setReadcount(String readcount) {
		this.readcount = readcount;
	}
	public String getImage() {
		return image;
	}
	public void setImage(String image) {
		this.image = image;
	}
	
	

}
