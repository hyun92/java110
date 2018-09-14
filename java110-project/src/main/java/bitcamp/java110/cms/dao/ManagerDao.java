package bitcamp.java110.cms.dao;

import java.util.List;

import bitcamp.java110.cms.domain.Manager;

public interface ManagerDao {
    int insert(Manager manager) ;
    List<Manager> findAll();
    Manager findByEmail(String email);
    default Manager findByNo(int no) {return null;}
    int delete(int no);
}
