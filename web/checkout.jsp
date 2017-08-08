

<%--
  Created by IntelliJ IDEA.
  User: Erin
  Date: 8/4/2017
  Time: 12:16 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <title>JHU Annual Software Development Seminar</title>
    <link rel="stylesheet" href="conferences.css">
</head>
<body>

    <div class="heading">
        <img src="university.logo_.small_.horizontal.white_.png" alt="JOHNS HOPKINS UNIVERSITY">
    </div>
    <h2 style="padding-left: 140px">JOHNS HOPKINS ANNUAL SOFTWARE DEVELOPMENT SEMINAR</h2>
    <hr width="99%" color="#C4C2C2">
    <br>

    <%--<jsp:useBean id="attendee" scope="session" class="tracks.Attendee"/>--%>

    <h2>${attendee.name}</h2>

    <p style="padding-left:20px">
        You are registered as a <strong>${attendee.status}</strong>.
        <br><br>
        Your total cost for the seminar is: <strong>$${attendee.totalCost}.00</strong>
    </p>

    <hr width="99%" color="#C4C2C2">
    <br>
    <fieldset>
    <table class="ccTable">
        <form action="">
        <legend>Credit Card Payment</legend>
        <tr>
            <td>Credit Card Type</td>
            <td>
                <%--<form>--%>
                <input type="radio" name="cardType" value="visa" checked/>VISA
                <input type="radio" name="cardType" value="masterCard"/>Master Card
                <input type="radio" name="cardType" value="discover"/>Discover
                <%--</form>--%>
            </td>
        </tr>
        <tr>
            <td>Credit Card Number</td>
            <td>
                <%--<form>--%>
                <input type="text" name="ccNumber" required id="ccNumber" >
                <%--</form>--%>
            </td>
        </tr>
        <tr>
            <td>Credit Card Expiration Date</td>
            <td>
                <input type="text" name="expiration" required id="expiration" >
            </td>
        </tr>
        </form>
    </table>

    </fieldset>
    <br>

    <table style="width:50%">
        <tr>
            <td>
                <form action="index.jsp" method="post">
                    <input type="submit" value="Edit Information">
                </form>
            </td>
            <td>
                <form action="index.jsp" method="post">
                    <input type="submit" value="Add More Courses">
                </form>
            </td>
            <td>
                <form action="registerConfirmation" method ="post">
                    <input type="submit" value="Confirm Registration">
                </form>
            </td>

        </tr>
    </table>


</body>
</html>

