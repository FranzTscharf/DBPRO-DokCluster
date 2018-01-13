<%--
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:url value="/login" var="loginUrl"/>
<form action="${loginUrl}" method="post">       1
    <c:if test="${param.error != null}">        2
        <p>
            Invalid username and password.
        </p>
    </c:if>
    <c:if test="${param.logout != null}">       3
        <p>
            You have been logged out.
        </p>
    </c:if>
    <p>
        <label for="username">Username</label>
        <input type="text" id="username" name="username"/>	4
    </p>
    <p>
        <label for="password">Password</label>
        <input type="password" id="password" name="password"/>	5
    </p>
    <input type="hidden"                        6
           name="${_csrf.parameterName}"
           value="${_csrf.token}"/>
    <button type="submit" class="btn">Log in</button>
</form>
--%>

<!DOCTYPE html>
<html lang="en">
<head>
    <title>Login V16</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!--===============================================================================================-->
    <link rel="icon" type="image/png" href="resources/Login_v16/images/icons/favicon.ico"/>
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="resources/Login_v16/vendor/bootstrap/css/bootstrap.min.css">
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="resources/Login_v16/fonts/font-awesome-4.7.0/css/font-awesome.min.css">
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="resources/Login_v16/fonts/Linearicons-Free-v1.0.0/icon-font.min.css">
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="resources/Login_v16/vendor/animate/animate.css">
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="resources/Login_v16/vendor/css-hamburgers/hamburgers.min.css">
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="resources/Login_v16/vendor/animsition/css/animsition.min.css">
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="resources/Login_v16/vendor/select2/select2.min.css">
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="resources/Login_v16/vendor/daterangepicker/daterangepicker.css">
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="resources/Login_v16/css/util.css">
    <link rel="stylesheet" type="text/css" href="resources/Login_v16/css/main.css">
    <!--===============================================================================================-->
</head>
<body>

<div class="limiter">
    <div class="container-login100" style="background-image: url('resources/Login_v16/images/bg-01.jpg');">
        <div class="wrap-login100 p-t-30 p-b-50">
				<span class="login100-form-title p-b-41">
					Account Login
				</span>
            <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
            <c:url value="/login" var="loginUrl"/>
            <form class="login100-form validate-form p-b-33 p-t-5" action="${loginUrl}" method="post">

                <div class="wrap-input100 validate-input" data-validate = "Enter username">
                    <input class="input100" type="text" name="username" id="username" placeholder="User name">
                    <span class="focus-input100" data-placeholder="&#xe82a;"></span>
                </div>

                <div class="wrap-input100 validate-input" data-validate="Enter password">
                    <input class="input100" type="password" name="password" id="password" placeholder="Password">
                    <span class="focus-input100" data-placeholder="&#xe80f;"></span>
                </div>

                <input type="hidden"                        6
                       name="${_csrf.parameterName}"
                       value="${_csrf.token}"/>

                <div class="container-login100-form-btn m-t-32">
                    <button class="login100-form-btn" type="submit">
                        Login
                    </button>
                </div>

            </form>
        </div>
    </div>
</div>


<div id="dropDownSelect1"></div>

<!--===============================================================================================-->
<script src="resources/Login_v16/vendor/jquery/jquery-3.2.1.min.js"></script>
<!--===============================================================================================-->
<script src="resources/Login_v16/vendor/animsition/js/animsition.min.js"></script>
<!--===============================================================================================-->
<script src="resources/Login_v16/vendor/bootstrap/js/popper.js"></script>
<script src="resources/Login_v16/vendor/bootstrap/js/bootstrap.min.js"></script>
<!--===============================================================================================-->
<script src="resources/Login_v16/vendor/select2/select2.min.js"></script>
<!--===============================================================================================-->
<script src="resources/Login_v16/vendor/daterangepicker/moment.min.js"></script>
<script src="resources/Login_v16/vendor/daterangepicker/daterangepicker.js"></script>
<!--===============================================================================================-->
<script src="resources/Login_v16/vendor/countdowntime/countdowntime.js"></script>
<!--===============================================================================================-->
<script src="resources/Login_v16/js/main.js"></script>

</body>
</html>

