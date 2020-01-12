<%@ pageimport="javax.servlet.http.*,javax.servlet.*" %>
<%@ page import="javax.mail.internet.*,javax.activation.*"%>
<%@ page import="java.io.*,java.util.*,javax.mail.*"%>

<%
    String result;
    String to = "pravintumsare@gmail.com";
    String from = "pravintumsare@gmail.com";
    String host = "localhost:8084";

    Properties properties = System.getProperties();

    properties.setProperty("mail.smtp.host", host);

    // Get the default Session object.
    Session mailSession = Session.getDefaultInstance(properties);

    try {
        MimeMessage message = new MimeMessage(mailSession);
        message.setFrom(new InternetAddress(from));
        message.addRecipient(Message.RecipientType.TO, InternetAddress(to));
        message.setSubject("This is the Subject Line!");
        message.setText("This is actual message");

        Transport.send(message);
        result = "Success....";
    } catch (MessagingExceptionmex) {
        mex.printStackTrace();
        result = "Error: unable to connect....";
    }
%>
<html>
    <head>
        <title>Send Email using JSP</title>
    </head>
    <body>
    <center>
        <h1>Send Email using JSP</h1>
    </center>
    <p align="center">
        <%
            out.println("Result: " + result + "\n");
        %>
    </p>
</body>
</html>

