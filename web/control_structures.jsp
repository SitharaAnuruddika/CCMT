<%-- 
    Document   : variable
    Created on : Feb 21, 2020, 2:47:07 PM
    Author     : pasin_000
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Control Structures</title>
        
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
                        <div class="col-sm-10 text-center">
                            <a href="index.jsp"><h4 class="p-3 mb-2 bg-info text-white">CODE COMPLEXITY MEASURING TOOL</h4></a>
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
                    <button class="buttonn button2" onclick="window.location.href = 'control_structureweight.jsp';">Set Weight</button>
                </div>
                
                <div class="row">
                    <div class="col-md-1"></div> 
                    <div class="col-md-10">
                        <div class="card">
                            <div class="card-heading p-2"><h4>Control structures</h4></div>
                            <div class="card-body">
                                <div class="table-responsive-sm">
                                    <table class="table table-bordered">
                                        <thead>
                                            <tr>
                                                <th scope="col">Line no</th>
                                                <th scope="col">Program statements</th>
                                                <th scope="col">Wtcs</th>
                                                <th scope="col">NC</th>
                                                <th scope="col">Ccspps</th>
                                                <th scope="col">Ccs</th>
                                                
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <th scope="row">1</th>
                                                <td>class Pattern { </td>
                                                <td></td>
                                                <td></td>
                                                <td></td>
                                                <td>0</td>
                                                
                                            </tr>
                                            <tr>
                                                <th scope="row">2</th>
                                                <td>public static void main(String[] args) {</td>
                                                <td></td>
                                                <td></td>
                                                <td></td>
                                                <td>0</td>
                                               
                                            </tr>
                                            <tr>
                                                <th scope="row">3</th>
                                                <td>int rows = 5;</td>
                                                <td></td>
                                                <td></td>
                                                <td></td>
                                                <td>0</td>
                                              
                                            </tr>
                                            <tr>
                                                <th scope="row">4</th>
                                                <td>for(int i = 1; i <= rows; ++i) {</td>
                                                <td>3</td>
                                                <td>1</td>
                                                <td>0</td>
                                                <td>3</td>
                                                
                                            </tr>
                                            <tr>
                                                <th scope="row">5</th>
                                                <td>for(int j = 1; j <= i; ++j) {</td>
                                                <td>3</td>
                                                <td>1</td>
                                                <td>3</td>
                                                <td>6</td>
                                               
                                            </tr>
                                            <tr>
                                                <th scope="row">5</th>
                                                <td>System.out.print(j + " ");</td>
                                                <td></td>
                                                <td></td>
                                                <td></td>
                                                <td>0</td>
                                              
                                            </tr>
                                            <tr>
                                                <th scope="row">6</th>
                                                <td>}</td>
                                                <td></td>
                                                <td></td>
                                                <td></td>
                                                <td>0</td>
                                            </tr>
                                            <tr>
                                                <th scope="row">7</th>
                                                <td>System.out.println("");</td>
                                                <td></td>
                                                <td></td>
                                                <td></td>
                                                <td>0</td>
                                            </tr>
                                            <tr>
                                                <th scope="row">8</th>
                                                <td>}</td>
                                                <td></td>
                                                <td></td>
                                                <td></td>
                                                <td>0</td>
                                            </tr>
                                            <tr>
                                                <th scope="row">9</th>
                                                <td>}</td>
                                                <td></td>
                                                <td></td>
                                                <td></td>
                                                <td>0</td>
                                            </tr>
                                            <tr>
                                                <th scope="row">10</th>
                                                <td>}</td>
                                                <td></td>
                                                <td></td>
                                                <td></td>
                                                <td>0</td>
                                            </tr>

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
