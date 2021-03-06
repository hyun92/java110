package ex10;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;

@ComponentScan("ex10")
public class AppConfig {
        
        
        public AppConfig() {
            System.out.println("AppConfig() 호출됨!");
        }
        
        // 임의적으로 객체 만들기
        // 객체를 생성해주는 메서드 선언부에 @Bean 태그를 붙여라
        // 
        
        
        @Bean
        public Car getCar() {
            Car c = new Car();
            c.setMaker("비트자동차");
            c.setModel("오호라");
            c.setCc(2000);
            
            return c;
        }
        
        
        @Bean("c3")
        public Car getCar2() {
            Car c = new Car();
            c.setMaker("비트자동차");
            c.setModel("오호라");
            c.setCc(2000);
            
            return c;
        }
        
        
        // 객체의 이름을 지정하기 2
        // => 실무에서는 객체 이름을 따로 지정하지 않고 주로 메서드 이름으로 처리한다.
        // 
        
        
        @Bean
        public Car c4() {
            Car c = new Car();
            c.setMaker("비트자동차");
            c.setModel("오호라");
            c.setCc(2000);
            
            return c;
      }
}


