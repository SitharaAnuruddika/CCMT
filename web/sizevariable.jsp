<%-- 
    Document   : sizevariable
    Created on : Feb 21, 2020, 3:28:38 PM
    Author     : user
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="com.itpm.model.SizeDTO"%>
<%@page import="com.itpm.controller.SizeVariableMethodController"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Size variable</title>
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
                </div>
                <br>

                <div>
                    <button class="buttonn button2" onclick="window.location.href = 'sizevariableweight.jsp';">Set Weight</button>
                </div>

                <div class="row">
                    <div class="col-md-1"></div> 
                    <div class="col-md-10">
                        <div class="card">
                            <div class="card-heading p-2"><h4>Size</h4></div>
                            <div class="card-body">
                                <div class="table-responsive-sm">
                                    <table class="table table-bordered">
                                        <thead>
                                            <tr>
                                                <th scope="col">Line no</th>
                                                <th scope="col">Program statements</th>
                                                <th scope="col">Nkw</th>
                                                <th scope="col">Nid</th>
                                                <th scope="col">Nop</th>
                                                <th scope="col">Nnv</th>
                                                <th scope="col">Nsl</th>
                                                <th scope="col">Cs</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <%
                                                SizeVariableMethodController svmc = new SizeVariableMethodController();
                                                String filename = session.getAttribute("filename").toString();
                                                ArrayList<SizeDTO> sizeList = svmc.measureSize(filename);
                                                int lineNo = 0;
                                                for (SizeDTO s : sizeList) {
                                                    lineNo++;
                                            %>
                                            <tr>
                                                <th scope="row"><%=lineNo%></th>
                                                <td><%=s.getCodeLine()%></td>
                                                <td><%=s.getNkw() != 0 ? s.getNkw() : ""%></td>
                                                <td><%=s.getNid() != 0 ? s.getNid() : ""%></td>
                                                <td><%=s.getNop() != 0 ? s.getNop() : ""%></td>
                                                <td><%=s.getNnv() != 0 ? s.getNnv() : ""%></td>
                                                <td><%=s.getNsl() != 0 ? s.getNsl() : ""%></td>
                                                <td><%=s.getCs() != 0 ? s.getCs() : ""%></td>
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


                <br></br>
                <div class="row">
                    <div class="col-md-1"></div> 
                    <div class="col-md-10">
                        <div class="card">
                            <div class="card-heading p-2"><h4>Variable</h4></div>
                            <div class="card-body">
                                <div class="table-responsive-sm">
                                    <table class="table table-bordered">
                                        <thead>
                                            <tr>
                                                <th scope="col">Line no</th>
                                                <th scope="col">Program statements</th>
                                                <th scope="col">Wvs</th>
                                                <th scope="col">Npdtv</th>
                                                <th scope="col">Ncdtv</th>
                                                <th scope="col">Cv</th>

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
                                                <td>1</td>
                                                <td>1</td>
                                                <td>0</td>
                                                <td>1</td>

                                            </tr>
                                            <tr>
                                                <th scope="row">4</th>
                                                <td>for(int i = 1; i <= rows; ++i) {</td>
                                                <td></td>
                                                <td></td>
                                                <td></td>
                                                <td>0</td>

                                            </tr>
                                            <tr>
                                                <th scope="row">5</th>
                                                <td>for(int j = 1; j <= i; ++j) {</td>
                                                <td></td>
                                                <td></td>
                                                <td></td>
                                                <td>0</td>

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
                                                <td>for(int j = 1; j <= i; ++j) {</td>
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


                <br></br>
                <div class="row">
                    <div class="col-md-1"></div> 
                    <div class="col-md-10">
                        <div class="card">
                            <div class="card-heading p-2"><h4>Methods</h4></div>
                            <div class="card-body">
                                <div class="table-responsive-sm">
                                    <table class="table table-bordered">
                                        <thead>
                                            <tr>
                                                <th scope="col">Line no</th>
                                                <th scope="col">Program statements</th>
                                                <th scope="col">Wmrt</th>
                                                <th scope="col">Npdtp</th>
                                                <th scope="col">Ncdtp</th>
                                                <th scope="col">Cm</th>

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
                                                <td>0</td>
                                                <td>0</td>
                                                <td>1</td>
                                                <td>2</td>

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
                                                <td></td>
                                                <td></td>
                                                <td></td>
                                                <td>0</td>

                                            </tr>
                                            <tr>
                                                <th scope="row">5</th>
                                                <td>for(int j = 1; j <= i; ++j) {</td>
                                                <td></td>
                                                <td></td>
                                                <td></td>
                                                <td>0</td>

                                            </tr>
                                            <tr>
                                                <th scope="row">5</th>
                                                <td>System.out.print(j + " ");</td>
                                                <td></td>
                                                <td></td>
                                                <td></td>
                                                <td>5</td>

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
                                                <td>for(int j = 1; j <= i; ++j) {</td>
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
