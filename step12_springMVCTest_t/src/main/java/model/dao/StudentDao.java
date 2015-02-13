package model.dao;

import java.util.List;

import model.domain.StudentVo;

public interface StudentDao {
	int studentInsert(StudentVo vo);
	List<StudentVo> studentSelect();
	int studentUpdate(StudentVo vo);
	int studentDelete(String studentNo);
	StudentVo studentIdCheck(String studentNo);	
}