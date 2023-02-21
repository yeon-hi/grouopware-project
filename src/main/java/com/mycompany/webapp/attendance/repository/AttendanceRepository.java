package com.mycompany.webapp.attendance.repository;

import org.apache.ibatis.annotations.Param;

import com.mycompany.webapp.attendance.model.Attendance;

public interface AttendanceRepository {

	public Attendance selectAttendance(@Param("attDate")String attDate, @Param("empId")String empId);

	public int insertAttendance(Attendance attendance);

	public int updateLeave(@Param("attDate")String attDate, @Param("empId")String empId);

}
