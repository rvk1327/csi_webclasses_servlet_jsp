package dbutil;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class CollegeContext {
    
    public static CollegeDAO getContext() {
        ApplicationContext ac = new ClassPathXmlApplicationContext("dbutil/springconfig.xml");
        return (CollegeDAO)ac.getBean("clg_dao");
    }
}
