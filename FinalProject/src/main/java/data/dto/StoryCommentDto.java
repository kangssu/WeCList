package data.dto;

import java.sql.Timestamp;
import org.apache.ibatis.type.Alias;
import com.fasterxml.jackson.annotation.JsonFormat;

@Alias("scdto")
public class StoryCommentDto {
  private int idx;
  private int num;
  private int reidx;
  private int regroup;
  private String writer;
  private String content;
  @JsonFormat(pattern = "yyyy-MM-dd HH:mm")
  private Timestamp writeday;

  public int getIdx() {
    return idx;
  }

  public void setIdx(int idx) {
    this.idx = idx;
  }

  public int getNum() {
    return num;
  }

  public void setNum(int num) {
    this.num = num;
  }

  public int getReidx() {
    return reidx;
  }

  public void setReidx(int reidx) {
    this.reidx = reidx;
  }

  public int getRegroup() {
    return regroup;
  }

  public void setRegroup(int regroup) {
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
