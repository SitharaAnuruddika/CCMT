<%-- 
    Document   : inheritanceweight
    Created on : Mar 1, 2020, 11:33:36 PM
    Author     : pasin_000
--%>

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
                                <div class="table-responsive-sm" >
                                    <center><table class="table table-bordered" style="width: 900px;">
                                        <thead>
                                            <tr>
                                                <th scope="col">Inherited Pattern </th>
                                                <th scope="col">Weight</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <td>A class with no inheritance (direct or indirect) </td>
                                                <td><center><input type="text" id="inheriting_A" name="inheriting_A" style="width: 50px; text-align: center;"></center></td>
                                            </tr>
                                            
                                            <tr>
                                                <td>A class inheriting (directly or indirectly) from one user-defined class </td>
                                                <td><center><input type="text" id="inheriting_B" name="inheriting_B" style="width: 50px; text-align: center;"></center></td>
                                            </tr>
                                            
                                            
                                            <tr>
                                                <td>A class inheriting (directly or indirectly) from two user-defined classes</td>
                                                <td><center><input type="text" id="inheriting_C" name="inheriting_C" style="width: 50px; text-align: center;"></center></td>
                                            </tr>
                                            
                                            <tr>
                                                <td>A class inheriting (directly or indirectly) from three user-defined classes </td>
                                                <td><center><input type="text" id="inheriting_D" name="inheriting_D" style="width: 50px; text-align: center;"></center></td>
                                            </tr>
                                            
                                            <tr>
                                                <td>A class inheriting (directly or indirectly) from more than three user-defined classes</td>
                                                <td><center><input type="text" id="inheriting_E" name="inheriting_E" style="width: 50px; text-align: center;"></center></td>
                                            </tr>
                                            

                                        </tbody>
                                    </table></center>
                                </div>

                               <button class="buttonsave button5" >Save</button>
                            </div>
                        </div>


                    </div> 
                    <div class="col-md-1"></div> 
                </div></center>
    </body>
</html>
