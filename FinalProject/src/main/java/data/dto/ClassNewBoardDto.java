package data.dto;

import java.sql.Timestamp;
import org.apache.ibatis.type.Alias;
import org.springframework.web.multipart.MultipartFile;

@Alias("cdto")
public class ClassNewBoardDto {

	private String num;
	private String name;
	private String myid;
	private String title;
	private String class_op_cate;
	private String class_op_detail;
	private String classprice;
	private String classinfo;
	private String class_process;
	private String uploadfile;
  	private MultipartFile upload;
 	private String uploadfile1;
  	private MultipartFile upload1;
  	private String uploadfile2;
	private MultipartFile upload2;
  	private String uploadfile3;
  	private MultipartFile upload3;
  	private String uploadfile4;
  	private MultipartFile upload4;
  	private String uploadfile5;
  	private MultipartFile upload5;
	private String classheart;
	private Timestamp writeday;
	public String getNum() {
		return num;
	}
	public void setNum(String num) {
		this.num = num;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
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
	public String getClass_op_cate() {
		return class_op_cate;
	}
	public void setClass_op_cate(String class_op_cate) {
		this.class_op_cate = class_op_cate;
	}
	public String getClass_op_detail() {
		return class_op_detail;
	}
	public void setClass_op_detail(String class_op_detail) {
		this.class_op_detail = class_op_detail;
	}
	public String getClassprice() {
		return classprice;
	}
	public void setClassprice(String classprice) {
		this.classprice = classprice;
	}
	public String getClassinfo() {
		return classinfo;
	}
	public void setClassinfo(String classinfo) {
		this.classinfo = classinfo;
	}
	public String getClass_process() {
		return class_process;
	}
	public void setClass_process(String class_process) {
		this.class_process = class_process;
	}
	public String getUploadfile() {
		return uploadfile;
	}
	public void setUploadfile(String uploadfile) {
		this.uploadfile = uploadfile;
	}
	public MultipartFile getUpload() {
		return upload;
	}
	public void setUpload(MultipartFile upload) {
		this.upload = upload;
	}
	public String getUploadfile1() {
		return uploadfile1;
	}
	public void setUploadfile1(String uploadfile1) {
		this.uploadfile1 = uploadfile1;
	}
	public MultipartFile getUpload1() {
		return upload1;
	}
	public void setUpload1(MultipartFile upload1) {
		this.upload1 = upload1;
	}
	public String getUploadfile2() {
		return uploadfile2;
	}
	public void setUploadfile2(String uploadfile2) {
		this.uploadfile2 = uploadfile2;
	}
	public MultipartFile getUpload2() {
		return upload2;
	}
	public void setUpload2(MultipartFile upload2) {
		this.upload2 = upload2;
	}
	public String getUploadfile3() {
		return uploadfile3;
	}
	public void setUploadfile3(String uploadfile3) {
		this.uploadfile3 = uploadfile3;
	}
	public MultipartFile getUpload3() {
		return upload3;
	}
	public void setUpload3(MultipartFile upload3) {
		this.upload3 = upload3;
	}
	public String getUploadfile4() {
		return uploadfile4;
	}
	public void setUploadfile4(String uploadfile4) {
		this.uploadfile4 = uploadfile4;
	}
	public MultipartFile getUpload4() {
		return upload4;
	}
	public void setUpload4(MultipartFile upload4) {
		this.upload4 = upload4;
	}
	public String getUploadfile5() {
		return uploadfile5;
	}
	public void setUploadfile5(String uploadfile5) {
		this.uploadfile5 = uploadfile5;
	}
	public MultipartFile getUpload5() {
		return upload5;
	}
	public void setUpload5(MultipartFile upload5) {
		this.upload5 = upload5;
	}
	public String getClassheart() {
		return classheart;
	}
	public void setClassheart(String classheart) {
		this.classheart = classheart;
	}
	public Timestamp getWriteday() {
		return writeday;
	}
	public void setWriteday(Timestamp writeday) {
		this.writeday = writeday;
	}
}
