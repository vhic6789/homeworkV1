package com.example.homeworkV1.converter;

import com.example.homeworkV1.dto.projectDTO;
import com.example.homeworkV1.model.project;

public class conver {

	public static projectDTO converToProjectDTO(project p) {
		projectDTO dto = new projectDTO();
		dto.setId(p.getId());
		dto.setTieude(p.getTitle());
		dto.setMota(p.getDescription());
		dto.setDanhsachanh(p.getListImage());
		dto.setNoidung(p.getContent());
		dto.setTienluong(p.getSalary());
		dto.setThoigianketthuc(p.getFinishTime());
		dto.setYeucau(p.getRequest());
		dto.setKetqua("");
		dto.setNgaytao(p.getCreateDate());
		dto.setIdNguoitao(p.getCreateBy());
		dto.setNgaychinhsua(p.getModifiedDate());
		dto.setIdNguoichinhsua(p.getModifiedBy());
		return dto;
	}
}
