package dbUtil;

import java.util.Properties;

import dbUtil.PropertyReader;
import org.apache.tomcat.dbcp.dbcp2.BasicDataSource;

public class DBStore {
    static Properties property;

    public  static BasicDataSource getDataSource(){
        property= getProperty();
        BasicDataSource ds = new BasicDataSource();
        ds.setDriverClassName(property.getProperty("DB_Driver"));
        ds.setUrl(property.getProperty("DB_URL"));
        ds.setPassword(property.getProperty("DB_Password"));
        ds.setUsername(property.getProperty("DB_User"));
        ds.setMaxTotal(200);
        ds.setMaxIdle(20);
        ds.setMaxOpenPreparedStatements(180);
        ds.setMinIdle(20);
        ds.setMaxWaitMillis(2000);
        ds.setDefaultAutoCommit(false);
        return ds;
    }

    public static Properties getProperty() {
        return property;
    }

    static {
        property= PropertyReader.readPropertyFile();
    }
}
