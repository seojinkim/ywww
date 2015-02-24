<!doctype html>
<html>
<head>
<meta charset="UTF-8">
<title>Log In</title>

<link rel="stylesheet" href="css/style.css" />

</head>
<script src="js/jquery-1.11.0.js"></script>
<body>

<nav><a href="B.do" class="focus">Log In</a> | <a href="A.do">Register</a></nav>

<form class="register">

   <h2>LOGIN</h2>

   <input type="text" class="text-field" placeholder="아이디(이메일)" name="id" id="id" />
    <input type="password" class="text-field" placeholder="비밀번호" name="pw" id="pw" />
    <br><br><br>
    
    <input type="button" value="LOGIN" class="button" name="btn" id="btn" />
    <br><br>
    <a href = "B.do" onclick="window.location.href=this.href; return false;">Sign Up</a>

</form>

</body>
</html>