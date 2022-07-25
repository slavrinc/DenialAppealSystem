package DASPackage;
import java.util.Properties;
import java.sql.*;
import DASPackage.*;

public class DatabaseController {
    Connection conn;

    public DatabaseController(){
        
    }

    public boolean DatabaseInit(String username, String password) throws
        SQLException, ClassNotFoundException{

        boolean loggedIn;

        Class.forName("org.postgresql.Driver");
        String url = "jdbc:postgresql://localhost:5432/";
        Properties props = new Properties();
        props.setProperty("user", username);
        props.setProperty("password", password);
        conn =
                DriverManager.getConnection(url, props);

        PreparedStatement stmt = conn.prepareStatement("SELECT * FROM VALID_USERS WHERE username=? AND password=?");
        stmt.setString(1, username);
        stmt.setString(2, password);
        ResultSet rs = stmt.executeQuery();
        if (rs.next()) {
        loggedIn = true;
        System.out.println("Successfully logged in");
        return true;
        } else {
            System.out.println("Username and/or password not recognized");
            return false;
        }

    }

}