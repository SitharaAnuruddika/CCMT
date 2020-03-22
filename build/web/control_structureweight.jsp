<%-- 
    Document   : control_structureweight
    Created on : Mar 1, 2020, 11:57:05 PM
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
        
        <center><div class="row" style="margin-top: 20px; margin-bottom: 10px;">
                    <div class="col-md-1"></div> 
                    <div class="col-md-10">
                        <div class="card" style="width: 1000px; height: 100%;" >
                            <center><div class="card-heading p-2"><h4>Weights related to the control structure factor</h4></div></center>
                            <div class="card-body" >
                                <div class="table-responsive-sm" >
                                    <center><table class="table table-bordered" style="width: 900px;">
                                        <thead>
                                            <tr>
                                                <th scope="col">Control Structure Type</th>
                                                <th scope="col">Weight</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <td>A conditional control structure such as an ‘if’ or ‘else-if’ condition</td>
                                                <td><center><input type="text" id="control_A" name="control_A" style="width: 50px; text-align: center;"></center></td>
                                            </tr>
                                            
                                            <tr>
                                                <td>An iterative control structure such as a ‘for’, ‘while’, or ‘do-while’ loop</td>
                                                <td><center><input type="text" id="control_B" name="control_B" style="width: 50px; text-align: center;"></center></td>
                                            </tr>
                                            
                                            
                                            <tr>
                                                <td>The ‘switch’ statement in a ‘switch-case’ control structure</td>
                                                <td><center><input type="text" id="control_C" name="control_A" style="width: 50px; text-align: center;"></center></td>
                                            </tr>
                                            
                                            <tr>
                                                <td>Each ‘case’ statement in a ‘switch-case’ control structure</td>
                                                <td><center><input type="text" id="control_D" name="control_D" style="width: 50px; text-align: center;"></center></td>
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
