<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>Join Our Email List</title>
    <link rel="stylesheet" href="styles/main.css" type="text/css"/>
</head>

<body>
<div class="container">
    <h1>Join our email list</h1>
    <p>Enter your name and email address below to receive our updates and newsletters.</p>

    <!-- Hiển thị thông báo lỗi nếu email trùng -->
    <c:if test="${not empty message}">
        <div class="message">${message}</div>
    </c:if>

    <form action="emailList" method="post">
        <input type="hidden" name="action" value="add">

        <label for="email">Email:</label>
        <input type="email" id="email" name="email"
               value="${user.email}" required>

        <label for="firstName">First Name:</label>
        <input type="text" id="firstName" name="firstName"
               value="${user.firstName}" required>

        <label for="lastName">Last Name:</label>
        <input type="text" id="lastName" name="lastName"
               value="${user.lastName}" required>

        <input type="submit" value="Join Now">
    </form>
</div>
</body>
</html>
