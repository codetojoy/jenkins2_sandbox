<%@page import="java.util.*" %>
<%@page import="net.codetojoy.*" %>

<html>
<head>
  <title>Absurd Greeting Example</title>
</head>
<body>
  <%
    String version = Greeter.VERSION;
    Locale locale = null;

    Greeter greeter = new Greeter();
    
    String greeting = greeter.greet(locale);

  %>
  <h2>Version: </h2><p> <%= version %> </p>
  <h2>Greeting:</h2><p> <%= greeting %> </p>
</body>
</html>
