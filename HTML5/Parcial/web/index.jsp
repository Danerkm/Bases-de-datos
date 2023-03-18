<%-- 
    Document   : index
    Created on : 13/11/2021, 4:57:40 p.m.
    Author     : Daniel M
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css" integrity="sha384-zCbKRCUGaJDkqS1kPbPd7TveP5iyJE0EjAuZQTgFLD2ylzuqKfdKlfG/eSrtxUkn" crossorigin="anonymous">
        <title>Nomina</title>
        <style type="text/css" media="screen">
            .caja,div{
                margin: auto;
            }
            th,td{
                text-align: center;
            }
        </style>
    </head>
    <body>
        <h1 style="text-align: center">CALCULAR NOMINA HERENCIA</h1>

        <DIV id="caja" class="d-flex">

            <div class="card col-sm-6">
                <div class="card-body" >
                    <form method="post" action="calcular.jsp">
                        <div class="form_goup d-flex">
                            <label for="n1"class="col-sm-7">NOMBRE DE EMPLEADO</label>
                            <input type="text" class="form-control col-sm-6" id="n1" name="n1" placeholder="NOMBRE DE EMPLEADO" >
                            
                        </div>
                        
                        
                        <div class="form_goup d-flex">
                            <label for ="n2"class="col-sm-7">IDENTIFICACION</label>
                            <input type="text" class="form-control col-sm-6" id="n2" name="n2" placeholder="IDENTIFICACION">
                        </div>
                        <div class="form_goup d-flex">
                            <label for ="sbase"class="col-sm-7">SALARIO BASE</label>
                            <input type="text" class="form-control col-sm-6" id="sbase" name="sbase" placeholder="SALARIO">
                            <!--                            <div class="dropdown">
                                                            <button class="btn btn-outline dropdown-toggle col-sm-6" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-expanded="false">
                                                                $
                                                            </button>
                                                            <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                                                                <a class="dropdown-item" href="#">908.526</a>
                                                                <a class="dropdown-item" href="#">1.000.000</a>
                                                                <a class="dropdown-item" href="#">1.500.000</a>
                                                                <a class="dropdown-item" href="#">2.000.000</a>
                                                                <a class="dropdown-item" href="#">2.500.000</a>
                                                                <a class="dropdown-item" href="#">3.000.000</a>
                                                            </div>
                                                        </div>-->
                        </div>
                        
                        <div class="form_goup d-flex">
                            <label for ="n2"class="col-sm-7">DIAS TRABAJADOS</label>
                            <input type="text" class="form-control col-sm-6" id="n4" name="n4" placeholder="DIAS">
                        </div>
                        <!--                         <div class="form_goup d-flex">
                                                    <label for ="n4"class="col-sm-7">IDENTIFICACION</label>
                                                    <input type="text" class="form-control col-sm-6" id="n2" name="n2" placeholder="NOMBRE DE EMPLEADO">
                                                </div>-->
                        <p>
                        <div class="form_goup d-flex">
                            <input style="margin: auto" type="submit" value="Calcular"  name="accion" class="btn btn-info col-sm-4">
                        </div>
                        </p>
                        
                    </form>
                    
                </div>
            </div>

           
            
            
            <script>
               
//                public long auxt()
//                {

//                
//                }


    
               
            </script>
        </DIV>
        

        <script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.min.js" integrity="sha384-VHvPCCyXqtD5DqJeNxl2dtTyhF78xXNXdkwX1CZeRusQfRKp+tA7hAShOK/B/fQ2" crossorigin="anonymous"></script>
    </body>
</html>