package dao;

import java.util.ArrayList;

import bean.sachbean;

public class sachdao {
	public ArrayList<sachbean> dssach = new ArrayList<sachbean>();
	public ArrayList<sachbean> getsach() {
		dssach.add(new sachbean("s1", "Cấu trúc dữ liệu", "Nguyễn Hoảng Hà", 100, 100000, "b1.jpg", "tin"));
		dssach.add(new sachbean("s2", "Cấu trúc dữ liệu", "Nguyễn Hoảng Hà", 100, 100000, "b2.jpg", "tin"));
		dssach.add(new sachbean("s3", "Cơ sở toán", "Nguyễn Hoảng Hà", 100, 100000, "b3.jpg", "toan"));
		dssach.add(new sachbean("s4", "Giải tích", "Nguyễn Hoảng Hà", 100, 100000, "b4.jpg", "toan"));
		dssach.add(new sachbean("s5", "Truyền Kiều", "Nguyễn Hoảng Hà", 100, 100000, "b5.jpg", "van"));
		
		return dssach;
	}
	
	public ArrayList<sachbean> timKiemTheoLoai(ArrayList<sachbean> ds ,String maLoai) {
		ArrayList<sachbean> dsSachCungMa = new ArrayList<sachbean>();
		for (sachbean item: ds) {
			if (item.getMaLoai().equals(maLoai)) {
				dsSachCungMa.add(item);
			}
		}
		
		return dsSachCungMa;
	}
	
	public ArrayList<sachbean> timKiemTheoTen(ArrayList<sachbean> ds ,String tenSach) {
		ArrayList<sachbean> dsSachCungTen = new ArrayList<sachbean>();
		for (sachbean item: ds) {
			if (item.getTenSach().toLowerCase().contains(tenSach.toLowerCase())) {
				dsSachCungTen.add(item);
			}
		}
		
		return dsSachCungTen;
	}
}