package com.example.homeworkV1.dto;

import java.util.Date;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@NoArgsConstructor
@AllArgsConstructor
@Getter
@Setter
public class AbstractDTO<T> {

	private Long id;
	private Date ngaytao;
	private Long idNguoitao;
	private Date ngaychinhsua;
	private Long idNguoichinhsua;
}
