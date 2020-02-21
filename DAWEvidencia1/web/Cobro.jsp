<%-- 
    Document   : Cobro
    Created on : 20/02/2020, 08:11:20 PM
    Author     : reyleal
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <header> Metodo de pago</header>
        <div>
            <br>
        <label for="NombreTitular"><b>Titular</b></label>
        <input type="text" placeholder=" Nombre " name="NombreTitular" required>
        <br>
        <br>
        <label for="NumTarjeta"><b>Numero de Tarjeta</b>  </label>
        <input type="text" placeholder="Ingrese Numero de tarjeta" name="numtarjeta" required>
        <br><br>
        <label for="numClave"><b>Clave de seguridad</b>   </label>
        <input type="text" placeholder=" Ingrese clave de seguridad " name="numclave" required>
        <br><br>
        <label for="TipodeTarjeta"><b>Tipo de tarjeta</b> </label>
        
        <form method="post">
            <select name="TipoTarjete">
            <option value="1">Visa</option>
            <option value="2">Mastercard</option>
            <option value="3">UnionPay</option>
            <option value="4">American Express</option>
            <option value="5">JCB</option>
            <option value="6">Diners Club</option>
            </select>
        </form>
        <br>
        
        
        <label for="FechaDExpiracion"><b>FDE</b></label>
        <input type="text" placeholder=" MM/YY" name="fechaExpiracion" required>
        
        
        </div>
       <br>
        <form name="f" method="post" action="Cobro.do" >
            <input type="submit" value="pagar" name="evi">  
       </form>
    </body>
</html>
