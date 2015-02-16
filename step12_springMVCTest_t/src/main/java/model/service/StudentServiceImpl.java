package model.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import model.dao.StudentDao;
import model.domain.StudentVo;


@Service("stService")
public class StudentServiceImpl implements StudentService {

	@Resource(name="stDao")
	private StudentDao stDao;
	
	@Override
	public int studentInsert(StudentVo vo) {
		return stDao.studentInsert(vo);
	}

	@Override
	public List<StudentVo> studentSelect() {
		return stDao.studentSelect();
	}

	@Override
	public int studentUpdate(StudentVo vo) {
		return stDao.studentUpdate(vo);
	}

	@Override
	public int studentDelete(String studentNo) {
		return stDao.studentDelete(studentNo);
	}

	@Override
	public StudentVo studentNoCheck(String studentNo) {
		return stDao.studentIdCheck(studentNo);
	}

}