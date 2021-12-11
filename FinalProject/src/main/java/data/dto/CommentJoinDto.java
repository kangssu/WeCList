package data.dto;

import java.sql.Timestamp;
import org.apache.ibatis.type.Alias;
import com.fasterxml.jackson.annotation.JsonFormat;

@Alias("chdto")
public class CommentJoinDto {
  // usersjoin 테이블
  private String id;
  private String nickname;
  private String profileimg;

  // story_comment 테이블
  private String idx;
  private String num;
  private String reidx;
  private String regroup;
  private String writer;
  private String content;
  @JsonFormat(pattern = "yyyy-MM-dd HH:mm")
  private Timestamp writeday;

  public String getId() {
    return id;
  }

  public void setId(String id) {
    this.id = id;
  }

  public String getNickname() {
    return nickname;
  }

  public void setNickname(String nickname) {
    this.nickname = nickname;
  }

  public String getProfileimg() {
    return profileimg;
  }

  public void setProfileimg(String profileimg) {
    this.profileimg = profileimg;
  }

  public String getIdx() {
    return idx;
  }

  public void setIdx(String idx) {
    this.idx = idx;
  }

  public String getNum() {
    return num;
  }

  public void setNum(String num) {
    this.num = num;
  }

  public String getReidx() {
    return reidx;
  }

  public void setReidx(String reidx) {
    this.reidx = reidx;
  }

  public String getRegroup() {
    return regroup;
  }

  public void setRegroup(String regroup) {
    this.regroup = regroup;
  }

  public String getWriter() {
    return writer;
  }

  public void setWriter(String writer) {
    this.writer = writer;
  }

  public String getContent() {
    return content;
  }

  public void setContent(String content) {
    this.content = content;
  }

  public Timestamp getWriteday() {
    return writeday;
  }

  public void setWriteday(Timestamp writeday) {
    this.writeday = writeday;
  }


}
