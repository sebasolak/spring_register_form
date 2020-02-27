<%--
  Created by IntelliJ IDEA.
  User: Sebastian
  Date: 27.02.2020
  Time: 01:50
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
    <title>User Registration Form</title>
    <style type="text/css">
        label {
            display: inline-block;
            width: 200px;
            margin: 5px;
            text-align: left;
        }

        button {
            padding: 10px;
            margin: 10px;
        }

        input[type=text], input[type=password], select {
            width: 200px;
        }

        input[type=radio] {
            display: inline-block;
            margin-left: 45px;
        }

        input[type=checkbox]{
            display: inline-block;
            margin-right: 190px;
        }

    </style>
</head>
<body>
<div align="center">
    <h2>User Registration</h2>
    <form:form action="register" method="post" modelAttribute="user">
        <form:label path="name">Full name:</form:label>
        <form:input path="name"/> <br/>

        <form:label path="email">E-mail:</form:label>
        <form:input path="email"/> <br/>

        <form:label path="password">Password:</form:label>
        <form:password path="password"/> <br/>

        <form:label path="birthday">Birthday (yyyy-mm-dd):</form:label>
        <form:input path="birthday"/> <br/>

        <form:label path="profession">Profession:</form:label>
        <form:select path="profession" items="${professionList}"/><br/>

        <form:label path="gender">Gender:</form:label>
        <form:radiobutton path="gender" value="Male"/>Male
        <form:radiobutton path="gender" value="Female"/>Female
        <br/>

        <form:label path="married">Married?</form:label>
        <form:checkbox path="married"/><br/>

        <form:label path="note">Note:</form:label>
        <form:textarea path="note" rows="5" cols="25"/><br/>
        <form:button>Register</form:button>
    </form:form>
</div>
</body>
</html>
