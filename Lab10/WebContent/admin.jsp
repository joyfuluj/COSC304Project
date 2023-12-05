<%@ page import="java.text.NumberFormat" %>
<!DOCTYPE html>
<html>
<head>
<title>Administrator Page</title>
</head>
<body>

<%
// TODO: Include files auth.jsp and jdbc.jsp
%>
    <%@ include file="auth.jsp"%>
    <%@ include file="jdbc.jsp"%>
<%

%>
<h3>Administrator Sales Report by Day</h3>
<%

// TODO: Write SQL query that prints out total order amount by day
String sql = "SELECT YEAR(orderDate) AS year, MONTH(orderDate) AS month, DAY(orderDate) AS day, SUM(totalAmount) AS total FROM ordersummary GROUP BY orderDate";
out.println("<table class=\"table\" border=\"1\"><tbody><tr><th>Order Date</th><th>Total Order Amount</th></tr>");
try ( Connection con = DriverManager.getConnection(url, uid, pw);
	Statement stmt = con.createStatement();) 
{			
    ResultSet rst = stmt.executeQuery(sql);
    NumberFormat currFormat = NumberFormat.getCurrencyInstance();
    while(rst.next()){
        if(rst.getString("year") != null)
            out.println("<tr><td>" + rst.getString("year") + "-" +  rst.getString("month") + "-" + rst.getString("day") +  "</td><td>" + currFormat.format(rst.getDouble("total")) + "</td></tr>");
    }
    out.println("</tbody></table>");
}
catch (SQLException ex) {
	out.println("SQLException: " + ex);
}


%>
<h3><a href="index.jsp">Back to Main Page</a></h3>
</body>
</html>

