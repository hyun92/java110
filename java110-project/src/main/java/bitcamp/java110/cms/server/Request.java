package bitcamp.java110.cms.server;

import static org.junit.Assert.assertEquals;

import java.util.HashMap;
import java.util.Map;

public class Request {

    String command;
    String appPath;
    String queryString;
    Map<String, String> paramMap = new HashMap <>();
    
    public Request(String command) {
        this.command = command;
        
        // 명령어에서 Query String을 분리한다.
        // ex) manager/add?name = aaa&emaildetail?no = 10
        String[] values = command.split("\\");
        this.appPath = values[0];  //ex) manager/detail?no = 10
        if(values.length >= 2) { 
            queryString = values[1];  // ex) no = 10
           
            parseQueryString(queryString);
            
        }
    }
    
    private void parseQueryString(String qs) {
        String[] values = qs.split("&");
        for(String value : values) {
            String[] kv = value.split("=");
            paramMap.put(kv[0], kv[1]);
         
        }
    }
    
    public String getParameter(String name) {
        return this.paramMap.get(name);
    }
    
    public String getCommand() {
        return this.command;
    }
    
    public String getAppPath() {
        return this.appPath;
    }
    
    
    
    public String getQueryString() {
        return this.queryString;
    }
    
 
}
