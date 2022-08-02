<%-- 
Document   : listarCliente
Created on : 15/10/2020, 20:18:13
Author     : santa
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <%@include file="../header.jsp" %>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>FiveTech</title>
    </head>
    <body>
        <div class="container-fluid row mt-5 justify-content-around">
            <div class="col-6 mt-4">
                <h1 class=" display-4 font-italic text-white">Listar Clientes</h1>
            </div>
        </div>
        <table class="table table-bordered mt-3 table-dark">
            <thead class="thead-dark">
                <tr style="text-align: center">
                    <th>ID</th>
                    <th>Nome</th>
                    <th>CPF</th>
                    <th>RG</th>
                    <th>Telefone</th>
                    <th>E-mail</th>
                    <th>Endereço</th>
                    <th>Numero</th>
                    <th>Estado</th>
                        <c:if test="${sessionScope.usuario.admin}">
                        <th style="text-align: center" colspan="2">Selecionar</th>
                        </c:if>
                </tr>
            </thead>
            <tbody>
                <c:forEach items="${listaClientes}" var="cliente">
                    <tr>
                        <td>${cliente.id_cliente}</td>
                        <td>${cliente.nome_cliente}</td>
                        <td>${cliente.cpf}</td>
                        <td>${cliente.rg}</td>
                        <td>${cliente.telefone}</td>
                        <td>${cliente.email}</td>
                        <td>${cliente.endereco}</td>
                        <td>${cliente.numero}</td>
                        <td>${cliente.estado}</td>
                        <c:if test="${sessionScope.usuario.admin}">
                            <td><a class="btn btn-lg btn-danger font-italic h4 pb-2 pt-2" href="<c:url value="/AlterarCliente?cpf=${cliente.cpf}"/>">Alterar</a></td>
                            <td><a class="btn btn-lg btn-danger font-italic h4 pb-2 pt-2" href="<c:url value="/DeletarCliente?cpf=${cliente.cpf}"/>">Excluir</a></td>
                        </c:if>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
   <footer>

        <p>Copyright &copy; 2020, FiveTech - Todos os diretos reservados</p>

    </footer>


    </body>
    <style>
        
       body{
           background-color: #1f1f1f;
          opacity: 0.8;
        }
        
            footer {
        position: absolute;
        bottom: 0;
        background-color: black;
        width: 100%;
        height: 100px;
        text-align: center;
        line-height: 100px;
    }

    footer p {
        font-size: 1rem;
        margin-bottom: 1.5rem;
        color: white;
        font-weight: 100;
    }
    </style>
</html>
