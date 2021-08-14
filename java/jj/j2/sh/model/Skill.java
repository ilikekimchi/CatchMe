package jj.j2.sh.model;

public class Skill {
	private int skillSeq; //기술 번호(기본키)*자동증가
	private int profileSeq; //이력서 번호(외래키)
	private String skillContent; //기술내용

	
	
	public int getSkillSeq() {
		return skillSeq;
	}
	public void setSkillSeq(int skillSeq) {
		this.skillSeq = skillSeq;
	}
	public int getProfileSeq() {
		return profileSeq;
	}
	public void setProfileSeq(int profileSeq) {
		this.profileSeq = profileSeq;
	}
	public String getSkillContent() {
		return skillContent;
	}
	public void setSkillContent(String skillContent) {
		this.skillContent = skillContent;
	}
	
}
