<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>Thank You - Email List</title>
    <link rel="stylesheet" href="styles/main.css" type="text/css"/>
</head>

<body>
<div class="container">
    <h1>🎉 Thanks for joining our email list!</h1>

    <p>Here’s the information you entered:</p>

    <div class="info-box">
        <p><strong>Email:</strong> ${user.email}</p>
        <p><strong>First Name:</strong> ${user.firstName}</p>
        <p><strong>Last Name:</strong> ${user.lastName}</p>
    </div>

    <p>
        To register another email address, click the button below.
    </p>

    <form action="emailList" method="post">
        <input type="hidden" name="action" value="join">
        <input type="submit" value="Return to Form">
    </form>
</div>
</body>
</html>
