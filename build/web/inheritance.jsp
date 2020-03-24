<%-- 
    Document   : variable
    Created on : Feb 21, 2020, 2:47:07 PM
    Author     : pasin_000
--%>

<%@page import="com.itpm.model.InheritanceDTO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.itpm.controller.InheritanceController"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Inheritance</title>
        
        <link rel="stylesheet" href="css/button.css"  >
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"  >
        <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    </head>
    <body>
        
        <div class="wrapper">
            <div class="container-fluid">
                <div class="page-title-box">
                    <div class="row align-items-center">
                        <div class="col-sm-1"></div>
                        <div class="col-sm-10 align-items-center">
                            <a href="index.jsp"><center><h4 class="p-3 mb-2 bg-info text-white">CODE COMPLEXITY MEASURING TOOL</h4></a></center>
                        </div>

                    </div>
                    <!-- end row -->
<!--                </div>
                <div class="row">
                    <div class="col-md-1"></div>
                    <div class="col-md-10">
                        <div class="form-group">
                            <label for="exampleFormControlTextarea1">Code here</label>
                            <textarea class="form-control rounded-0" id="txtcode" rows="12"></textarea>
                        </div>
                    </div>
                </div>
                <div class="row" >
                    <div class="col-md-9"> </div>
                    <div class="col-md-1">
                        <button type="button" class="btn btn-primary">Measure</button>
                    </div>
                    <div class="col-md-1">
                        <button type="button" class="btn btn-secondary">Clear</button><br>
                    </div>
                </div>-->
                <br>

                <div>
                    <button class="buttonn button2" onclick="window.location.href = 'inheritanceweight.jsp';">Set Weight</button>
                </div>
                
                <div class="row">
                    <div class="col-md-1"></div> 
                    <div class="col-md-10">
                        <div class="card">
                            <div class="card-heading p-2"><h4>Inheritance</h4></div>
                            <div class="card-body">
                                <div class="table-responsive-sm">
                                    <table class="table table-bordered">
                                        
                                        <thead>
                                            <tr>
                                                <th scope="col">Count</th>
                                                <th scope="col">Class Name</th>
                                                <th scope="col">No of direct inheritance</th>
                                                <th scope="col">No of indirect inheritance</th>
                                                <th scope="col">Total inheritance</th>
                                                <th scope="col">Ci</th>
                                                
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <%
                                                InheritanceController inheritance = new InheritanceController();
                                                String filename=session.getAttribute("filename").toString();
                                                ArrayList<InheritanceDTO> inheritanceList = inheritance.measureInheritance(filename);
                                                int lineNo=0;
                                                for (InheritanceDTO I : inheritanceList) {
                                                    lineNo++;
                                            %>
                                            <tr>
                                                <th scope="row"><%=lineNo%></th>
                                                <td><%=I.getClassName()%></td>
                                                <td><%=I.getDirectInheritance()%></td>
                                                <td></td>
                                                <td></td>
                                                <td></td>            
                                            </tr>
                                            
                                        <%
                                            }
                                        %>
                                           

                                        </tbody>
                                    </table>
                                </div>


                            </div>
                        </div>


                    </div> 
                    <div class="col-md-1"></div> 
                </div>
            </div>
        </div>
        
    </body>
</html>
