package data.dto;

import java.util.Date;
import org.apache.ibatis.type.Alias;

@Alias("orderdto")
public class OrderDTO {
 private  long order_num;
 private Date order_day;
 private  int shipping_cost;
// usersjoin table
 private String user_id;
 private  int user_idx;
 private String dlvr_name;
 private String dlvr_phone;
 private String dlvr_email;
 private String dlvr_addr1;
 private String dlvr_addr2;
 private int dlvr_status;
  // shop table
 private int shop_num;
 private String shop_option;
 private String shop_qty;
 private int shop_price;

 @Override
 public String toString() {
  return "OrderDTO{" +
      "order_num=" + order_num +
      ", order_day=" + order_day +
      ", shipping_cost=" + shipping_cost +
      ", user_idx=" + user_idx +
      ", user_id=" + user_id +
      ", dlvr_name='" + dlvr_name + '\'' +
      ", dlvr_phone='" + dlvr_phone + '\'' +
      ", dlvr_email='" + dlvr_email + '\'' +
      ", dlvr_addr1='" + dlvr_addr1 + '\'' +
      ", dlvr_addr2='" + dlvr_addr2 + '\'' +
      ", dlvr_status=" + dlvr_status +
      ", shop_num=" + shop_num +
      ", shop_option='" + shop_option + '\'' +
      ", shop_qty='" + shop_qty + '\'' +
      ", shop_price=" + shop_price +
      '}' + "\n";
 }

 public String getUser_id() {
  return user_id;
 }

 public void setUser_id(String user_id) {
  this.user_id = user_id;
 }

 public long getOrder_num() {
  return order_num;
 }

 public void setOrder_num(long order_num) {
  this.order_num = order_num;
 }

 public Date getOrder_day() {
  return order_day;
 }

 public void setOrder_day(Date order_day) {
  this.order_day = order_day;
 }

 public int getShipping_cost() {
  return shipping_cost;
 }

 public void setShipping_cost(int shipping_cost) {
  this.shipping_cost = shipping_cost;
 }

 public int getUser_idx() {
  return user_idx;
 }

 public void setUser_idx(int user_idx) {
  this.user_idx = user_idx;
 }

 public String getDlvr_name() {
  return dlvr_name;
 }

 public void setDlvr_name(String dlvr_name) {
  this.dlvr_name = dlvr_name;
 }

 public String getDlvr_phone() {
  return dlvr_phone;
 }

 public void setDlvr_phone(String dlvr_phone) {
  this.dlvr_phone = dlvr_phone;
 }

 public String getDlvr_email() {
  return dlvr_email;
 }

 public void setDlvr_email(String dlvr_email) {
  this.dlvr_email = dlvr_email;
 }

 public String getDlvr_addr1() {
  return dlvr_addr1;
 }

 public void setDlvr_addr1(String dlvr_addr1) {
  this.dlvr_addr1 = dlvr_addr1;
 }

 public String getDlvr_addr2() {
  return dlvr_addr2;
 }

 public void setDlvr_addr2(String dlvr_addr2) {
  this.dlvr_addr2 = dlvr_addr2;
 }

 public int getDlvr_status() {
  return dlvr_status;
 }

 public void setDlvr_status(int dlvr_status) {
  this.dlvr_status = dlvr_status;
 }

 public int getShop_num() {
  return shop_num;
 }

 public void setShop_num(int shop_num) {
  this.shop_num = shop_num;
 }

 public String getShop_option() {
  return shop_option;
 }

 public void setShop_option(String shop_option) {
  this.shop_option = shop_option;
 }

 public String getShop_qty() {
  return shop_qty;
 }

 public void setShop_qty(String shop_qty) {
  this.shop_qty = shop_qty;
 }

 public int getShop_price() {
  return shop_price;
 }

 public void setShop_price(int shop_price) {
  this.shop_price = shop_price;
 }
}
