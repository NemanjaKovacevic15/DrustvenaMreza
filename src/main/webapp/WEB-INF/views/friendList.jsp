
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ page session="true" %>
<html>
<head>
    <title>Outstanding Friend Requests</title>

    <!-- CSS certain css style specifications taken from various StackOverflow posts -->
    <style type="text/css">
        h1, h2, h3, h5{
            color:white;
            text-align: center;

        }

        .tg  {border-collapse:collapse;border-spacing:0;border-color:#ccc;}
        .tg td{font-family:Arial, sans-serif;font-size:14px;padding:10px 5px;border-style:solid;border-width:1px;overflow:hidden;word-break:normal;border-color:#ccc;color:#333;background-color:#fff;}
        .tg th{font-family:Arial, sans-serif;font-size:14px;font-weight:normal;padding:10px 5px;border-style:solid;border-width:1px;overflow:hidden;word-break:normal;border-color:#ccc;color:#333;background-color:#f0f0f0;}
        .tg .tg-4eph{background-color:#f9f9f9}

        .button {
            display: block;
            width: 115px;
            height: 20px;
            background: #3b5998;
            padding: 5px;
            text-align: center;
            border-radius: 5px;
            color: white;
            font-weight: bold;
        }
    </style>
</head>
<body style="background-color: #3b5998">
<br>
<h2><a href="<c:url value='/welcome' />" >Back to your Profile!</a></h2>
<h3>Your Friends List</h3>

<!-- JSP Form Tags -->
<c:if test="${!empty listUsers}">
    <table class="tg" align="center">
        <tr>
            <th width="120">Users Name</th>
            <th width="60">Delete</th>
            <th width="60">Block</th>
            <th width="60">View Wall</th>
        </tr>
        <c:forEach items="${listUsers}" var="x">
            <tr>
                <td>${x.user1.username}</td>
                <td><a class="button" href="<c:url value='/declineFriendRequest/${x.user1.username}' />" >Delete Friend</a></td>
                <td><a class="button" href="<c:url value='/blockUser/${x.user1.username}' />" >Block</a></td>
                <td><a class="button" href="<c:url value='/wall/${x.user1.username}' />" >See wall</a></td>
            </tr>
        </c:forEach>
    </table>
</c:if>
<c:if test="${empty listUsers}">
    <h3>No Friends Yet</h3>
</c:if>
</body>
</html>

