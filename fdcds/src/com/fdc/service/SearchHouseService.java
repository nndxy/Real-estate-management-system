package com.fdc.service;

import java.util.List;

import com.fdc.dao.HouseNewsDAO;
import com.fdc.pojo.HouseNews;

public class SearchHouseService {
	private HouseNewsDAO houseNewsDAO;

	public HouseNewsDAO getHouseNewsDAO() {
		return houseNewsDAO;
	}

	public void setHouseNewsDAO(HouseNewsDAO houseNewsDAO) {
		this.houseNewsDAO = houseNewsDAO;
	}
	
	public List<HouseNews> getHouse(String region, int lfloor, int rfloor, 
			int lprice, int rprice, int larea, int rarea, int newstype) {
		
		String[] PropertyName;
		Object[] Value;
		int status = 1;
		if(region.equals("houseRegion") == true) {
			PropertyName = new String[5];
			PropertyName[0] = "houseNewsStatus";
			PropertyName[1] = "newsType";
			PropertyName[2] = "houseFloor";
			PropertyName[3] = "housePrice";
			PropertyName[4] = "houseArea";
			Value = new Object[8];
			Value[0] = status;
			Value[1] = newstype;
			Value[2] = lfloor;
			Value[3] = rfloor;
			Value[4] = lprice;
			Value[5] = rprice;
			Value[6] = larea;
			Value[7] = rarea;
			
		}
		
		else {
			PropertyName = new String[6];
			PropertyName[0] = "houseNewsStatus";
			PropertyName[1] = "newsType";
			PropertyName[2] = "houseFloor";
			PropertyName[3] = "housePrice";
			PropertyName[4] = "houseArea";
			PropertyName[5] = "houseReg";
			Value = new Object[9];
			Value[0] = status;
			Value[1] = newstype;
			Value[2] = lfloor;
			Value[3] = rfloor;
			Value[4] = lprice;
			Value[5] = rprice;
			Value[6] = larea;
			Value[7] = rarea;
			Value[8] = region;
			
		} //System.out.println("------------------------------------");
		List<HouseNews> list = houseNewsDAO.FindByProperty(PropertyName, Value);
		//System.out.println("*****************************************");
		//System.out.println(list.size());
		return list;
	}

}
