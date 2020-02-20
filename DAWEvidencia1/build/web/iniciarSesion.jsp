<%-- 
    Document   : iniciarSesion
    Created on : 19/02/2020, 02:29:01 PM
    Author     : DAVID
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Iniciar Sesion</title>
    </head>
        <style>
body {
  font-family: Arial, Helvetica, sans-serif;
  background-color: black;
}

* {
  box-sizing: border-box;
}

.container {
  padding: 16px;
  background-color: white;
}

input[type=text], input[type=password] {
  width: 100%;
  padding: 15px;
  margin: 5px 0 22px 0;
  display: inline-block;
  border: none;
  background: #f1f1f1;
}

input[type=text]:focus, input[type=password]:focus {
  background-color: #ddd;
  outline: none;
}

hr {
  border: 1px solid #f1f1f1;
  margin-bottom: 25px;
}

.loginbtn {
  background-color: #0099ff;
  color: white;
  padding: 16px 20px;
  margin: 8px 0;
  border: none;
  cursor: pointer;
  width: 100%;
  opacity: 0.9;
}

.loginbtn:hover {
  opacity: 1;
}

.signin {
  background-color: #f1f1f1;
  text-align: left;
}
</style>
    <body>
   <form action="iniciarsesion.do" method="post">
  <div class="container">
    <h1>Iniciar Sesion</h1>
    <p>Por favor ingrese sus datos</p>
    <hr>
    
    <label for="loginusername"><b>Nombre</b></label>
    <input type="text" placeholder="Ingrese su nombre de usuario" name="loginusuario" required>
    
    <label for="password"><b>Contraseña</b></label>
    <input type="password" placeholder="Ingrese una contraseña" name="logincontrasena" required>

    <button type="submit" class="loginbtn">Registro</button>
  </div>
   </form>
    </body>
</html>
