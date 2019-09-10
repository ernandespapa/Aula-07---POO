<%-- 
    Document   : incluir
    Created on : 10/09/2019, 14:26:57
    Author     : ernandes
--%>
<%@page import="br.com.fatecpg.contatos.Db"%>
<%@page import="br.com.fatecpg.contatos.Contato"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    if(request.getParameter("cancel")!=null){
        response.sendRedirect("index.jsp");
        
    }if (request.getParameter("add")!=null){
        String nome = request.getParameter("nome");
        String email = request.getParameter("email");
        String fone = request.getParameter("fone");
        Contato c = new Contato(nome, email, fone);
        Db.getContatos().add(c);
        response.sendRedirect("index.jsp");
    }
  %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Incluir - WebContatos</title>
    </head>
    <body>
        <h1>WebContatos</h1>
        <h2>Novo Contato</h2>
        <form>
            Nome:<br/>
            <input type="text" name="nome"/><br>
            Email: <br/>
            <input type="email" name="email"/><br>
            Telefone: <br/>
            <input type="text" name="fone"/><br/><br/>
            <input type="submit" name="add" value="Adicionar"/>
            <input type="submit" name="cancel" value="Cancelar"/>
        </form>
    </body>
</html>
