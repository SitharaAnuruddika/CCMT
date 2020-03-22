<%-- 
    Document   : inheritanceweight
    Created on : Mar 1, 2020, 11:33:36 PM
    Author     : pasin_000
--%>

<%@page import="com.itpm.model.InheritanceMethod"%>
<%@page import="com.itpm.model.SizeVariableMetod"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.itpm.controller.InheritanceController"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Set Weight</title>
        
        <link rel="stylesheet" href="css/button.css"  >
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"  >
        
    </head>
    <body>
        <center><div class="row" style="margin-top: 20px;">
                    <div class="col-md-1"></div> 
                    <div class="col-md-10">
                        <div class="card" style="width: 1000px; height: 460px;" >
                            <center><div class="card-heading p-2"><h4>Weights related to the inheritance factor</h4></div></center>
                            <div class="card-body" >
                                <form action="UpdateInheritance" method="POST"
                                <div class="table-responsive-sm" >
                                    <center><table class="table table-bordered" style="width: 900px;">
                                        <thead>
                                            <tr>
                                                <th scope="col">Inherited Pattern </th>
                                                <th scope="col">Weight</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <%
                                                InheritanceController inheritance = new InheritanceController();
                                                ArrayList<InheritanceMethod> accounts = inheritance.getinheritance();
                                                for (InheritanceMethod account : accounts) {
                                            %>
                                            <tr>
                                                <td id="lablinherit<%=account.getID()%>"><%=account.getInherited_Pattern()%></td>
                                                <td><center><input type="text" id="<%=account.getID()%>" name="<%=account.getID()%>" style="width: 50px; text-align: center;" value="<%=account.getWeight()%>"></center></td>
                                            </tr>
                                            
                                            <%
                                            }
                                        %>
                                            
                                                                                      

                                        </tbody>
                                    </table></center>
                                </div>

                               <button class="buttonsave button5" >Save</button>
                                    </form>
                            </div>
                        </div>


                    </div> 
                    <div class="col-md-1"></div> 
                </div></center>
    </body>
</html>
