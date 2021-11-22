package data.dto;

import java.sql.Timestamp;
import org.apache.ibatis.type.Alias;
import org.springframework.web.multipart.MultipartFile;

@Alias("apdto")
public class AuthorProfileDto {
  private String num;
  private String history;
  private MultipartFile upload;
  private String history_file;
  private String idea;
  private String idea_file;
  private String identity;
  private String identity_file;
  private Timestamp writeday;

  public MultipartFile getUpload() {
    return upload;
  }

  public void setUpload(MultipartFile upload) {
    this.upload = upload;
  }

  public String getNum() {
    return num;
  }

  public void setNum(String num) {
    this.num = num;
  }

  public String getHistory() {
    return history;
  }

  public void setHistory(String history) {
    this.history = history;
  }

  public String getHistory_file() {
    return history_file;
  }

  public void setHistory_file(String history_file) {
    this.history_file = history_file;
  }

  public String getIdea() {
    return idea;
  }

  public void setIdea(String idea) {
    this.idea = idea;
  }

  public String getIdea_file() {
    return idea_file;
  }

  public void setIdea_file(String idea_file) {
    this.idea_file = idea_file;
  }

  public String getIdentity() {
    return identity;
  }

  public void setIdentity(String identity) {
    this.identity = identity;
  }

  public String getIdentity_file() {
    return identity_file;
  }

  public void setIdentity_file(String identity_file) {
    this.identity_file = identity_file;
  }

  public Timestamp getWriteday() {
    return writeday;
  }

  public void setWriteday(Timestamp writeday) {
    this.writeday = writeday;
  }


}
