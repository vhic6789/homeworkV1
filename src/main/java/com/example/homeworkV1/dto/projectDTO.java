package com.example.homeworkV1.dto;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@NoArgsConstructor
@AllArgsConstructor
@Getter
@Setter
public class projectDTO extends AbstractDTO<projectDTO> {

	private String tieude;
	private String mota;
	private String danhsachanh;
	private String noidung;
	private String tienluong;
	private String thoigianketthuc;
	private String yeucau;
}
