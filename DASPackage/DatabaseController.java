package DASPackage;
import java.util.Properties;
import java.sql.*;
import DASPackage.*;
import java.util.ArrayList;

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

    public void populateDenialList(){
        String firstName, lastName, insuranceName, dateOfService, statusText;
        ArrayList<String> populateList = new ArrayList<String>();

        try{
            PreparedStatement stmt = conn.prepareStatement("SELECT * from denialList() AS f(first_name varchar, last_name varchar, insurance_name varchar, dos date, status_text varchar);");
            ResultSet rs = stmt.executeQuery();
            while (rs.next()) {
                firstName = rs.getString("first_name");
                lastName = rs.getString("last_name");
                insuranceName = rs.getString("insurance_name");
                dateOfService = rs.getString("dos");
                statusText = rs.getString("status_text");
                String concat = firstName + " " + lastName + " " + insuranceName + " " + dateOfService + " " + statusText;
                populateList.add(concat);

            }
        }
        catch (SQLException e) {
            e.printStackTrace();
        }

        DenialAppealSystem das;
        das.updateDenialList(populateList);

}