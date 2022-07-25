package DASPackage;
import java.util.Properties;
import java.sql.*;
import DASPackage.*;

public class DatabaseController {
    Connection conn;

    public DatabaseController(){
        
    }

    public boolean DatabaseInit() throws
        SQLException, ClassNotFoundException{

        boolean loggedIn;

        Class.forName("org.postgresql.Driver");
        String url = "jdbc:postgresql://localhost:5432/";
        Properties props = new Properties();
        props.setProperty("user", "postgres");
        props.setProperty("password", "***");
        conn =
                DriverManager.getConnection(url, props);

        String username = "postgres";
        String password = "***";
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

    public boolean checkCredentials(String username, String password){
        
        Statement st;
        try {
            st = conn.createStatement();
            String query1 =
                    "SELECT * FROM VALID_USERS WHERE username=? AND password=?";
            ResultSet res1 = st.executeQuery(query1);
            String rid;
            String u, p;
            while (res1.next()) {
                rid = res1.getString("SID");
                u = res1.getString("Name");
                p = res1.getString(3);
                if(u.equals(username) && p.equals(password)){
                    return true;
                }
            }
        }catch (SQLException e) {
            e.printStackTrace();
        }
        return false;
    }
}