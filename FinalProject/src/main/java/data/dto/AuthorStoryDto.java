package data.dto;

import java.sql.Timestamp;
import org.apache.ibatis.type.Alias;
import org.springframework.web.multipart.MultipartFile;

@Alias("asdto")
public class AuthorStoryDto {
  private String num;
  private String myid;
  private String title;
  private String content;
  private MultipartFile upload;
  private String thumbnail_file;
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

  public String getMyid() {
    return myid;
  }

  public void setMyid(String myid) {
    this.myid = myid;
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

  public String getThumbnail_file() {
    return thumbnail_file;
  }

  public void setThumbnail_file(String thumbnail_file) {
    this.thumbnail_file = thumbnail_file;
  }

  public Timestamp getWriteday() {
    return writeday;
  }

  public void setWriteday(Timestamp writeday) {
    this.writeday = writeday;
  }


}
