package dao;

import java.util.ArrayList;

import bean.loaibean;

public class loaidao {
	public ArrayList<loaibean> dsloai= new ArrayList<loaibean>();
	   public ArrayList<loaibean> getloai(){
		   dsloai.add(new loaibean("tin", "Công nghệ thông tin"));
		   dsloai.add(new loaibean("ly", "Vật lý"));
		   dsloai.add(new loaibean("toan", "Toán ứng dụng"));
		   dsloai.add(new loaibean("van", "Văn học Việt Nam"));
		   return dsloai;
	   }
}
