package net.skhu.mentoring.mapper;
import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import net.skhu.mentoring.dto.IntroTitle;
@Mapper
public interface IntroTitleMapper {
	List<IntroTitle> findAll();
}
