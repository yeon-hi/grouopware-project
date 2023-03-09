package com.mycompany.webapp.vacation.model;

import java.sql.Blob;
import java.util.Date;
import java.util.List;

import lombok.Data;
import lombok.ToString;

@Data
@ToString(exclude="vacationFileData")
public class Vacation {
	private int vacationType;
	private int vacationId;
	private String content;
	private String writeDate;
	private String dates;
	private int vacationCategoryId;
	private String empId;
	private String vacationFileName;
	private String vacationFileContentType;
	private Blob vacationFileData;
	private String vacationFileSize;
	
	private List<VacationDate> vacationDate;
	private List<VacationLine> vacationLine;
	
}
