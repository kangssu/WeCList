package data.dto;

import org.apache.ibatis.type.Alias;

@Alias("fdto")
public class FollowDto {
  @Override
  public String toString() {
    return "FollowDto [num=" + num + ", to_id=" + to_id + ", from_id=" + from_id + ", follow_cnt="
        + follow_cnt + "]";
  }

  private int num;
  private String to_id;
  private String from_id;
  private int follow_cnt;

  public int getNum() {
    return num;
  }

  public void setNum(int num) {
    this.num = num;
  }

  public String getTo_id() {
    return to_id;
  }

  public void setTo_id(String to_id) {
    this.to_id = to_id;
  }

  public String getFrom_id() {
    return from_id;
  }

  public void setFrom_id(String from_id) {
    this.from_id = from_id;
  }

  public int getFollow_cnt() {
    return follow_cnt;
  }

  public void setFollow_cnt(int follow_cnt) {
    this.follow_cnt = follow_cnt;
  }
}
