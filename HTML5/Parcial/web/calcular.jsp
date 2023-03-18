<%-- 
    Document   : calcular
    Created on : 13/11/2021, 5:00:24 p.m.
    Author     : Daniel M
--%>


<%


//        Double sbase = Double.parseDouble(request.getParameter("sbase"));
//        Double n4 =Double.parseDouble (request.getParameter("n4"));
//        Double aux;
//        Double salario=(sbase/30)*n4;
//        Double salud=salario*0.03;
//        Double pension=salario*0.04;
         
         

//     if (sbase < (2 * 737117)) {
//                    aux = (83140 / 30) * n4; 
//                } else {
//                    aux = 0*n4;
//                    }
     
//        Double neto=salario+aux-salud-pension;

%>
<%@ page language="java" %>
<%--<%@ page import = "Parcial.Controlador.Controlador"%>--%> 
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%--<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>--%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
        <title>Nomina</title>
        <style type="text/css" media="screen">
            .caja,div,a{
                margin: auto;
            }
            td{
                text-align: center;
                font-size: 25px;
            }
            th{
                text-align: center;
                font-size: 40px;

            }
            dito{
                background-color: white;
                font-size: 40px;
            }
        </style>
    </head>
    <body>

        <div class="col-sm-8">
            <div class="card col-sm-6">
                <div class="card-body">
                    <form action="Controlador?menu=ejemplo" method="POST">
                        <table class="table table-hover">
                            <thead>
                                <tr>
                                    <th>NOMINA</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td>NOMBRE:  <%=request.getParameter("n1")%></td>
                                </tr>
                                <tr>
                                    <td>IDENTIFICACION:  <%=request.getParameter("n2")%></td>
                                </tr>
                                <tr>
                                    <td>SALARIO BASE:  <%=request.getParameter("sbase")%></td>

                                </tr>
                                <tr>
                                    <td>DIAS TRABAJADOS:  </td>

                                </tr>
                                <tr>
                                    <td>AUXILIO DE TRANSPORTE:  <%=request.getParameter("aux")%></td>

                                </tr>
                                                                <tr>
                                    <td>SALUD:  </td>

                                </tr>
                                                                <tr>
                                    <td>PENSIÓN:  </td>

                                </tr>
                                                                </tr>
                                                                <tr>
                                    <td>NETO A PAGAR:  </td>

                                </tr>
                            </tbody>
                        </table>

                    </form>
                </div>
            </div>



            <div class="col-sm-3">
                <a style="margin: auto"  href="index.jsp"  type="button" class="btn btn-primary "na>NUEVA CONSULTA</a>
            </div>
        </div>

        <p>
        <div class="col-sm-3">
            <a id="dito" href="https://matias.ma/nsfw/" target="_blank" style="background-color: white,font-size: 5px"> .</a>
        </div>
        
                <ul>
            <li> Scriplet : <%=request.getParameter("n1")%></li>
        </ul>

    </body>
</html>