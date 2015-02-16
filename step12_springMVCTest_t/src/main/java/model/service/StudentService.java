package model.service;

import java.util.List;

import model.domain.StudentVo;

public interface StudentService {
	int studentInsert(StudentVo vo);
	List<StudentVo> studentSelect();
	int studentUpdate(StudentVo vo);
	int studentDelete(String studentNo);
	StudentVo studentNoCheck(String studentNo);
}
