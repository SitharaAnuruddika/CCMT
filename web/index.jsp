<%-- 
    Document   : index
    Created on : Feb 21, 2020, 2:37:25 PM
    Author     : pasin_000
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>CCMTool</title>

        <link rel="stylesheet" href="css/Homepage.css"  >
        <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <script src="js/jquery.ajaxfileupload.js"></script>

        <script type="text/javascript">

        </script>
    </head>
    <body>
        <div class="container">

            <h1>CODE COMPLEXITY MEASURING TOOL</h1>

            <div class="row">
                <div class="col-md-1"></div>
                <div class="col-md-10">
                    <div class="form-group">
                        <label for="exampleFormControlTextarea1" style = "margin-right: 72%;">Code here</label>
                        <br>
                        <textarea class="form-control rounded-0" id="txtcode" rows="12" style="width: 80%; height: 80%"></textarea>
                    </div>
                </div>
            </div>


            <!--    <form action="/action_page.php" style="margin-right: 60%;" >
              <label for="myfile">Select a file:</label>
              <input type="file" id="myfile" name="myfile"><br><br>
              <input type="submit">
              </form>-->
            <div>

                <form action="UploadFile" enctype="multipart/form-data" method="post" style="margin-right: 54%;" >
                    <label for="myfile">Select a file:</label>
                    <input type="file" id="myfile" name="file2"  multiple="multiple"><input type="submit" value="upload" /><br>
                </form>

                <div class="col-md-1">
                    <button type="button" class="clear" onclick="document.getElementById('txtcode').value = ''" style="margin-left: 76%">Clear</button>
                </div>
            </div>
            <br> 

            <br>
            <div class="content">

                <a href="sizevariable.jsp" id="btnsize" class="btn left">
                    <span class="left icon icon-gear"></span>
                    <span class="right title" style="height: 100px; width: 200px;"><span class="arrow-right"></span>Size,Variables,Methods</span>
                </a>

                <a href="inheritance.jsp" class="btn left">
                    <span class="left icon icon-gear"></span>
                    <span class="right title" style="height: 100px; width: 200px"><span class="arrow-right"></span>Inheritance</span>
                </a>
            </div>
            <br>

            <div class="content">
                <a href="cupling.jsp" class="btn left">
                    <span class="left icon icon-gear"></span>
                    <span class="right title" style="height: 100px; width: 200px"><span class="arrow-right"></span>Coupling</span>
                </a>

                <a href="control_structures.jsp" class="btn left">
                    <span class="left icon icon-gear"></span>
                    <span class="right title" style="height: 100px; width: 200px"><span class="arrow-right"></span>Control Structure</span>
                </a>
            </div>
            <br>

            <div class="content">
                <a href="AllFunction.jsp" class="btn left">
                    <span class="left icon icon-gear"></span>
                    <span class="right title" style="height: 100px; width:200px"><span class="arrow-right"></span>ALL</span>
                </a>
            </div>


        </div>
    </body>
</html>
