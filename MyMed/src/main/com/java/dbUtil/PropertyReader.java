package dbUtil;

import java.io.IOException;
import java.util.Properties;

public class PropertyReader {
    public static Properties readPropertyFile(){
        Properties p = new Properties();
        try {
            p.load(PropertyReader.class.getResourceAsStream("/db.properties"));
        } catch (IOException e) {
            e.printStackTrace();
        }
        return p;
    }
}
