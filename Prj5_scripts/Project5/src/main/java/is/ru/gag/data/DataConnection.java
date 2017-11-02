package is.ru.gag.data;

import java.sql.*;
import java.util.List;

public class DataConnection {

    public void closeConnection(Connection con) {
        try {
            con.close();
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
    }

    public ResultSet getFromQuery(String query, Connection con) {
        ResultSet rs = null;
        try
        {
            Statement stmt = con.createStatement();
            rs = stmt.executeQuery(query);
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        return rs;
    }

    public void pushList(List<String> queries) throws Exception {

            Class.forName("org.postgresql.Driver");
        Connection con=DriverManager.getConnection(
                "jdbc:postgresql://localhost:5432/project5","postgres","willie17");
        Statement stmt = con.createStatement();

        boolean check = con.isClosed();
        for(String string : queries) {
            ResultSet rs = stmt.executeQuery(string);
            rs.next();

            String t1 = rs.getString(1);
            String t2 = rs.getString(2);
            String updateQuery = "INSERT INTO fd (fd, validity) VALUES ('" + rs.getString(1) +  "', '" + rs.getString(2) + "')";
            stmt.executeUpdate(updateQuery);
        }

        closeConnection(con);
    }

}
