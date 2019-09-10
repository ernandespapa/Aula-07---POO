<%-- 
    Document   : index
    Created on : 10/09/2019, 14:25:47
    Author     : ernandes
--%>

<%@page import="br.com.fatecpg.contatos.Db"%>
<%@page import="br.com.fatecpg.contatos.Contato"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Índice - WebContatos</title>
    </head>
    <body>
        <h1>WebContatos</h1>
        <h2>Ìndice</h2>
        <h3><a href="incluir.jsp"> Adicionar Contatos</a></h3>
        <table border="1">
            <tr>
                <th>Índice</th>
                <th>Nome</th>
                <th>E-mail</th>
                <th>Fone</th>
                <th>Comandos</th>
            </tr>
            <% for (Contato c: Db.getContatos()){%>
            <tr>
                <td><%=Db.getContatos().indexOf(c) %></td>
                <td><%= c.getNome() %></td>
                <td><%= c.getEmail() %></td>
                <td><%= c.getFone() %></td>
                <td>
                    <a href="alterar.jsp?index= <%= Db.getContatos().indexOf(c)%>"> Alterar</a>
                    <a href="ecluir.jsp?index= <%= Db.getContatos().indexOf(c)%>"> Excluir</a>
                </td>
                <%}%>
        </table>
    </body>
</html>
