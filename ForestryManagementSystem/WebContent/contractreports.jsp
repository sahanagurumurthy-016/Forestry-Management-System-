<%@ page import="java.sql.*" %>
<% System.out.println("In customerreports.jsp"); %>
<% System.out.println("after set custid"); %>

<body bgcolor="skyblue">
<table border="1"  bgcolor="wheet" align="center">
<tr>
<td>CONTRACTOR ID</td>
<td>CUST ID</td>
<td>PRODUCT ID</td>
<td>HAULIER ID</td>
<td>QUANTITY</td>
</tr>
<%
Connection con=dbcon.JDBCConn.getConnection();
Statement stmt=con.createStatement();
ResultSet rs=stmt.executeQuery("SELECT * FROM CONTRACT");
while(rs.next())
{
%>
<tr>
<td><%=rs.getString(1)%></td>
<td><%=rs.getString(2)%></td>
<td><%=rs.getString(3)%></td>
<td><%=rs.getString(4)%></td>
<td><%=rs.getString(5)%></td>
</tr>
<%}%>
</table><br><br>


</body>
