package DASPackage;
import java.util.Properties;
import java.sql.*;
import DASPackage.*;

public class DatabaseController {

    public DatabaseController(){
        
    }

    public boolean DatabaseInit() throws
        SQLException, ClassNotFoundException{

        Class.forName("org.postgresql.Driver");
        String url = "jdbc:postgresql://localhost:5432/";
        Properties props = new Properties();
        props.setProperty("user", "postgres");
        props.setProperty("password", "Sales#120497");
        Connection conn =
                DriverManager.getConnection(url, props);

        return true;
    }
}