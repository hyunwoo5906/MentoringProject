package net.skhu.mentoring.mapper;
import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import net.skhu.mentoring.dto.Professor;
import net.skhu.mentoring.dto.Student;
@Mapper
public interface ProfessorMapper {
	Professor findOne(String profId);
	Professor findByUserId(int userId);
	List<Professor> findAll();
}
