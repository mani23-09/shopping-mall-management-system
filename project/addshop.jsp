<%@ page import="java.sql.*" %>
<%@ page contentType="text/html;charset=UTF-8" %>

<%
    String url = "jdbc:mysql://localhost:3306/touchcode";
    String username = "root";
    String password = "";

    Connection conn = null;
    PreparedStatement stmt = null;

    try {
        // Load the JDBC driver
        Class.forName("com.mysql.cj.jdbc.Driver");

        // Create a connection
        conn = DriverManager.getConnection(url, username, password);

        // Get the light state from the URL
        String lightState = request.getParameter("light_state");
        if (lightState == null) {
            lightState = "Notactivate";
        }

        // Insert data into the database using a prepared statement to prevent SQL injection
        String sql = "INSERT INTO sensor (touch) VALUES (?)";
        stmt = conn.prepareStatement(sql);
        stmt.setString(1, lightState);

        int rowsAffected = stmt.executeUpdate();

        if (rowsAffected > 0) {
            out.println("Data inserted successfully");
        } else {
            out.println("Error: Unable to insert data");
        }
    } catch (Exception e) {
        out.println("Error: " + e.getMessage());
    } finally {
        // Close the statement and connection in the finally block
        try {
            if (stmt != null) {
                stmt.close();
            }
            if (conn != null) {
                conn.close();
            }
        } catch (SQLException e) {
            out.println("Error closing resources: " + e.getMessage());
        }
    }
%>
