<%-- 
    Document   : couplingweight
    Created on : Mar 1, 2020, 11:37:22 PM
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
                            <center><div class="card-heading p-2"><h4>Weights related to the coupling factor</h4></div></center>
                            <div class="card-body" >
                                <div class="table-responsive-sm" >
                                    <center><table class="table table-bordered" style="width: 900px;">
                                        <thead>
                                            <tr>
                                                <th scope="col">Coupling Type</th>
                                                <th scope="col">Weight</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <td>A recursive call </td>
                                                <td><center><input type="text" id="coupling_A" name="coupling_A" style="width: 50px; text-align: center;"></center></td>
                                            </tr>
                                            
                                            <tr>
                                                <td>A regular method calling another regular method in the same file</td>
                                                <td><center><input type="text" id="coupling_B" name="coupling_B" style="width: 50px; text-align: center;"></center></td>
                                            </tr>
                                            
                                            
                                            <tr>
                                                <td>A regular method calling another regular method in a different file </td>
                                                <td><center><input type="text" id="coupling_C" name="coupling_C" style="width: 50px; text-align: center;"></center></td>
                                            </tr>
                                            
                                            <tr>
                                                <td>A regular method calling a recursive method in the same file</td>
                                                <td><center><input type="text" id="coupling_D" name="coupling_D" style="width: 50px; text-align: center;"></center></td>
                                            </tr>
                                            
                                            <tr>
                                                <td>A regular method calling a recursive method in a different file</td>
                                                <td><center><input type="text" id="coupling_E" name="coupling_E" style="width: 50px; text-align: center;"></center></td>
                                            </tr>
                                            
                                            <tr>
                                                <td>A recursive method calling another recursive method in the same file</td>
                                                <td><center><input type="text" id="coupling_F" name="coupling_F" style="width: 50px; text-align: center;"></center></td>
                                            </tr>
                                            
                                            <tr>
                                                <td>A recursive method calling another recursive method in a different file </td>
                                                <td><center><input type="text" id="coupling_G" name="coupling_G" style="width: 50px; text-align: center;"></center></td>
                                            </tr>
                                            
                                            <tr>
                                                <td>A recursive method calling a regular method in the same file </td>
                                                <td><center><input type="text" id="coupling_H" name="coupling_H" style="width: 50px; text-align: center;"></center></td>
                                            </tr>
                                            
                                            <tr>
                                                <td>A recursive method calling a regular method in a different file</td>
                                                <td><center><input type="text" id="coupling_I" name="coupling_I" style="width: 50px; text-align: center;"></center></td>
                                            </tr>
                                            
                                            <tr>
                                                <td>A regular method referencing a global variable in the same file</td>
                                                <td><center><input type="text" id="coupling_J" name="coupling_J" style="width: 50px; text-align: center;"></center></td>
                                            </tr>
                                            
                                            <tr>
                                                <td>A regular method referencing a global variable in a different file </td>
                                                <td><center><input type="text" id="coupling_K" name="coupling_K" style="width: 50px; text-align: center;"></center></td>
                                            </tr>
                                            
                                            <tr>
                                                <td>A recursive method referencing a global variable in the same file</td>
                                                <td><center><input type="text" id="coupling_L" name="coupling_L" style="width: 50px; text-align: center;"></center></td>
                                            </tr>
                                            
                                            <tr>
                                                <td>A recursive method referencing a global variable in a different file</td>
                                                <td><center><input type="text" id="coupling_M" name="coupling_M" style="width: 50px; text-align: center;"></center></td>
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
