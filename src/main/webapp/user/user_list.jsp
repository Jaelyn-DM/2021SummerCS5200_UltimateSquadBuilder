<%@page import="java.util.List" %>
<%@page import="squad.model.Users" %>

<div id="main">
<table>
<thead>
<tr>
   <th>#</th>
   <th>User Name</th>
   <th>Password</th>
   <th>Email</th>
</tr>
</thead>
<tbody>
<%
    int i = 1;
    List<Users> list = (List) request.getAttribute("list");
%>
<%
    for(Users u:list){
%>
    <tr>
      <td><%= i++ %></td>
      <td><%=u.getUserName() %></td>
      <td><%=u.getPassword() %></td>
      <td><%=u.getEmail() %></td>
      </tr>
      <%} %>

</tbody>
</table>
</div>