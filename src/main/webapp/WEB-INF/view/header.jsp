<%
String ctx=application.getContextPath();
String uri=ctx+"/logout";
%>
<h1 align="left">Certification Tracking System</h1>
  
   <p align="right">User Id:${UserName } (<a href='<%=uri%>' >Logout</a>)</p>
