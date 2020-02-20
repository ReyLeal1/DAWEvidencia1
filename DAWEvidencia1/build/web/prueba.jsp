<%-- 
    Document   : prueba
    Created on : 19/02/2020, 01:42:27 PM
    Author     : DAVID
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registarse</title>
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
  padding: 20px;
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

.registerbtn {
  background-color: #0099ff;
  color: white;
  padding: 16px 20px;
  margin: 8px 0;
  border: none;
  cursor: pointer;
  width: 100%;
  opacity: 0.9;
}

.registerbtn:hover {
  opacity: 1;
}


a {
  color: dodgerblue;
}

.signin {
  background-color: #f1f1f1;
  text-align: left;
  padding: 1rem 1rem;
}
</style>
    <body>
        
        <form action="Registro.do" method="post">
  <div class="container">
    <h1>Registro</h1>
    <p>Por favor llene el siguiente formato para crear una cuenta</p>
    <hr>
    
    <label for="username"><b>Nombre</b></label>
    <input type="text" placeholder="Ingrese su nombre de Usuario" name="nombreusuario" required>
    
    <label for="password"><b>Contraseña</b></label>
    <input type="password" placeholder="Ingrese una contraseña" name="contrasena" required>
    
    <label for="name"><b>Nombre</b></label>
    <input type="text" placeholder="Ingrese su nombre" name="nombre" required>
    
    <label for="email"><b>Email</b></label>
    <input type="text" placeholder="Ingrese un Email" name="correo" required>
    
    <label for="directionl"><b>Dirección</b></label>
    <input type="text" placeholder="Ingrese una dirección" name="direccion" required>
    
    <label for="cellphone"><b>Telefono</b></label>
    <input type="text" placeholder="Ingrese un numero de telefono" name="celular" required>
    
    

    <p>Creando una cuenta, usted acepta nuestros <a href="index.html">Terminos y Condiciones</a>.</p>
    <button type="submit" class="registerbtn">Registro</button>
  </div>

  <div class="container signin">
    <p>Ya tienes una cuenta? <a href="iniciarSesion.jsp">Iniciar Sesión</a>.</p>
  </div>
</form> 
    </body>
</html>
