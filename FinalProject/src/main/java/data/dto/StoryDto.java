package data.dto;

import java.sql.Timestamp;
import org.apache.ibatis.type.Alias;

@Alias("sldto")
public class StoryDto {
  // 회원 table
  private String idx;
  private String id;
  private String nickname;
  private String profileimg;
  private String category;

  // 스토리 table
  private String num;
  private String title;
  private String content;
  private String thumbnail_file;
  private String read_count;
  private Timestamp writeday;

  public String getRead_count() {
    return read_count;
  }

  public void setRead_count(String read_count) {
    this.read_count = read_count;
  }

  public String getThumbnail_file() {
    return thumbnail_file;
  }

  public void setThumbnail_file(String thumbnail_file) {
    this.thumbnail_file = thumbnail_file;
  }

  public String getNickname() {
    return nickname;
  }

  public void setNickname(String nickname) {
    this.nickname = nickname;
  }

  public String getId() {
    return id;
  }

  public void setId(String id) {
    this.id = id;
  }

  public String getIdx() {
    return idx;
  }

  public void setIdx(String idx) {
    this.idx = idx;
  }

  public String getProfileimg() {
    return profileimg;
  }

  public void setProfileimg(String profileimg) {
    this.profileimg = profileimg;
  }

  public String getCategory() {
    return category;
  }

  public void setCategory(String category) {
    this.category = category;
  }

  public String getNum() {
    return num;
  }

  public void setNum(String num) {
    this.num = num;
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

  public Timestamp getWriteday() {
    return writeday;
  }

  public void setWriteday(Timestamp writeday) {
    this.writeday = writeday;
  }

}
