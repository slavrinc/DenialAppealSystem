package DASPackage;
import java.util.Properties;
import java.sql.*;
import DASPackage.*;
import java.util.ArrayList;
import java.io.File;  // Import the File class
import java.io.IOException;  // Import the IOException class to handle errors
import java.io.FileWriter;

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

    public String[] populateDenialList(){
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

        String[] populateListArray = populateList.toArray(new String[0]);

        return populateListArray;

    }

    public String[] populatePatientInformation(String firstName, String lastName, String dateOfService){
        String[] patientInfo = new String[17];

        try{
            PreparedStatement stmt = conn.prepareStatement("SELECT * FROM requestPtInfo WHERE first_name = '" + firstName + "' AND last_name = '" +  lastName + "' AND dos = '" +  dateOfService + "';");
            ResultSet rs = stmt.executeQuery();
            if (rs.next()) {
                patientInfo[0] = rs.getString("patient_id");
                patientInfo[1] = rs.getString("first_name");
                patientInfo[2] = rs.getString("last_name");
                patientInfo[3] = rs.getString("dos");
                patientInfo[4] = rs.getString("px_code");
                patientInfo[5] = rs.getString("px_text");
                patientInfo[6] = rs.getString("dx_code");
                patientInfo[7] = rs.getString("dx_text");
                patientInfo[8] = rs.getString("attending_physician");
                patientInfo[9] = rs.getString("insurance_name");
                patientInfo[10] = rs.getString("address_line1");
                patientInfo[11] = rs.getString("address_line2");
                patientInfo[12] = rs.getString("city");
                patientInfo[13] = rs.getString("state");
                patientInfo[14] = rs.getString("zip");
                patientInfo[15] = rs.getString("policy_number");
                patientInfo[16] = rs.getString("status_text");

            }
        }
        catch (SQLException e) {
            e.printStackTrace();
        }

        return patientInfo;
    }

    public String[] populateAppealInformation(){
        String title, description;
        ArrayList<String> appealInformationList = new ArrayList<String>();

        try{
            PreparedStatement stmt = conn.prepareStatement("SELECT * FROM appeals;");
            ResultSet rs = stmt.executeQuery();
            while (rs.next()) {
                title = rs.getString("appeal_title");
                description = rs.getString("appeal_text");
                String concat = title + "/" + description;
                appealInformationList.add(concat);

            }
        }
        catch (SQLException e) {
            e.printStackTrace();
        }

        String[] appealInformationArray = appealInformationList.toArray(new String[0]);

        return appealInformationArray;
    }

    public boolean createDocument(String[] patientInfo, String[] appealDesc){
        File file = new File(patientInfo[1] + "_" + patientInfo[2] + "appeal_letter.txt");
        try {
            FileWriter writer = new FileWriter(patientInfo[1] + "_" + patientInfo[2] + "appeal_letter.txt");
            writer.write("(date)");
            System.getProperty("line.separator");
            writer.write(patientInfo[9]);
            System.getProperty("line.separator");
            writer.write(patientInfo[10]);
            System.getProperty("line.separator");
            writer.write(patientInfo[11]);
            System.getProperty("line.separator");

            writer.write(patientInfo[12] + ", " + patientInfo[13] + " " + patientInfo[14]);
            writer.close();
            System.out.println("Successfully wrote to the file.");
          } catch (IOException e) {
            System.out.println("An error occurred.");
            e.printStackTrace();
          }

        return false;
    }

}