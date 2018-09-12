package bitcamp.java110.cms.dao;

public class DaoException extends Exception {

    public DaoException() {
        super();   // super 생략가능   -  컴파일러가 알아서 자동으로 추가.
    }

    public DaoException(String message, Throwable cause) {
        super(message, cause);
    }

    public DaoException(String message) {
        super(message);
    }
    

}
