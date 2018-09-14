package bitcamp.java110.cms.dao;

import java.util.List;

import bitcamp.java110.cms.domain.Student;

public interface StudentDao {
    int insert(Student student) 
           ;
    List<Student> findAll();
    Student findByEmail(String email);
    default Student findByNo(int no) {return null;}
    int delete(int no);  
    //default 는 기존의 것 유지보수 하거나  프로그램에 혼란을 일으키지 않으면서 새로운 규칙 추가시 필요한거다.
}








