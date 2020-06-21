<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta name="description" content="">
  <meta name="author" content="Dashboard">
  <meta name="keyword" content="Dashboard, Bootstrap, Admin, Template, Theme, Responsive, Fluid, Retina">
  <title>Dashio - Bootstrap Admin Template</title>

  <!-- Favicons -->
  <link href="img/favicon.png" rel="icon">
  <link href="img/apple-touch-icon.png" rel="apple-touch-icon">

  <!-- Bootstrap core CSS -->
  <link href="libb/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <!--external css-->
  <link href="libb/font-awesome/css/font-awesome.css" rel="stylesheet" >
  <link rel="stylesheet" type="text/css" href="css/zabuto_calendar.css"/>
  <link rel="stylesheet" type="text/css" href="libb/gritter/css/jquery.gritter.css" >
  
  <!-- cities CSS and JS ( for cities table || for search with auto comlete ) -->
  <link rel="stylesheet" type="text/css" href="css/cities/cities.css"/>
  <script src="css/cities/cities.js"></script>
  
  <!-- Custom styles for this template -->
  <link href="css/style.css" rel="stylesheet">
  <link href="css/style-responsive.css" rel="stylesheet">
  <script src="libb/chart-master/Chart.js"></script>

  <!-- =======================================================
    Template Name: Dashio
    Template URL: https://templatemag.com/dashio-bootstrap-admin-template/
    Author: TemplateMag.com
    License: https://templatemag.com/license/
  ======================================================= -->
</head>

<body>
  <section id="container">
    <!-- **********************************************************************************************************************************************************
        TOP BAR CONTENT & NOTIFICATIONS
        *********************************************************************************************************************************************************** -->
    <!--header start-->
    



    <!--    navbar.html    -->
    
     <%@ include file="includs/navbar.jsp" %> 




    <!--header end-->
    <!-- **********************************************************************************************************************************************************
        MAIN SIDEBAR MENU
        *********************************************************************************************************************************************************** -->


    <!--sidebar start-->
    
      <!--   menu.html   -->
      
      <%@ include file="includs/menu.jsp" %> 

    <!--sidebar end-->


    <!-- **********************************************************************************************************************************************************
        MAIN CONTENT
        *********************************************************************************************************************************************************** -->
    <!--main content start-->
    <section id="main-content">
      <section class="wrapper">
        <div class="row">
          <div class="col-lg-9 main-chart">
            <!--CUSTOM CHART START -->

              <div class="border-head">
                <h3>USER VISITS</h3>
              </div>


              <script>
                window.onload = function () {

                var chart = new CanvasJS.Chart("chartContainer", {
                  animationEnabled: true,
                  theme: "light2",
                  title: {
                    text: "Corona Cases"
                  },
                  axisX: {
                    valueFormatString: "D/M"
                  },
                  axisY: {
                    prefix: "",
                    labelFormatter: addSymbols
                  },
                  toolTip: {
                    shared: true
                  },
                  legend: {
                    cursor: "pointer",
                    itemclick: toggleDataSeries
                  },
                  data: [
                  {
                    type: "column",
                    name: "confirmed",
                    showInLegend: true,
                    xValueFormatString: "DDD MMMM YYYY",
                    yValueFormatString: "#,##0",
                    dataPoints: [
                    	
                    <c:forEach items="${ corona_cases }" var="corona_case">
                        
                        { x: new Date( ${ corona_case.c_date.year } , ${ corona_case.c_date.month } ,${ corona_case.c_date.day }), y: ${ corona_case.c_confirmed } },
                        
                    </c:forEach>
                        
                    ]
                  }, 
                  {
                    type: "line",
                    name: "recovered",
                    showInLegend: true,
                    yValueFormatString: "#,##0",
                    dataPoints: [
                    	
                    <c:forEach items="${ corona_cases }" var="corona_case">
                    
                      { x: new Date( ${ corona_case.c_date.year } , ${ corona_case.c_date.month } ,${ corona_case.c_date.day }), y: ${ corona_case.c_recovered } },
                      
                    </c:forEach>
                      
                    ]
                  },
                  {
                    type: "area",
                    name: "death",
                    markerBorderColor: "white",
                    markerBorderThickness: 2,
                    showInLegend: true,
                    yValueFormatString: "#,##0",
                    dataPoints: [


                    <c:forEach items="${ corona_cases }" var="corona_case">
                        
                        { x: new Date( ${ corona_case.c_date.year } , ${ corona_case.c_date.month } ,${ corona_case.c_date.day }), y: ${ corona_case.c_deaths } },
                        
                    </c:forEach>
                    	
                    	
                    ]
                  }
                    
                    ]
                });
                chart.render();

                function addSymbols(e) {
                  var suffixes = ["", "K", "M", "B"];
                  var order = Math.max(Math.floor(Math.log(e.value) / Math.log(1000)), 0);

                  if(order > suffixes.length - 1)                 
                    order = suffixes.length - 1;

                  var suffix = suffixes[order];      
                  return CanvasJS.formatNumber(e.value / Math.pow(1000, order)) + suffix;
                }

                function toggleDataSeries(e) {
                  if (typeof (e.dataSeries.visible) === "undefined" || e.dataSeries.visible) {
                    e.dataSeries.visible = false;
                  } else {
                    e.dataSeries.visible = true;
                  }
                  e.chart.render();
                }

                }
              </script>



              <div id="chartContainer" style="height: 100%; width: 100%;"></div>
              <script src="https://canvasjs.com/assets/script/canvasjs.min.js"></script>

            <!--custom chart end-->

            <div class="row mt">
              <!-- SERVER STATUS PANELS -->
            </div>
          </div>
          <!-- /col-lg-9 END SECTION MIDDLE -->
          <!-- **********************************************************************************************************************************************************
              RIGHT SIDEBAR CONTENT
              *********************************************************************************************************************************************************** -->
          

          <!--   rightbar.html   -->
          
            <%@ include file="includs/rightbar.jsp" %> 


          <!-- /col-lg-3 -->
        </div>
        <!-- /row -->
      </section>
    </section>
    <!--main content end-->
    <!--footer start-->
    <footer class="site-footer">
      <div class="text-center">
        <p>
          &copy; Copyrights <strong>Dashio</strong>. All Rights Reserved
        </p>
        <div class="credits">
          <!--
            You are NOT allowed to delete the credit link to TemplateMag with free version.
            You can delete the credit link only if you bought the pro version.
            Buy the pro version with working PHP/AJAX contact form: https://templatemag.com/dashio-bootstrap-admin-template/
            Licensing information: https://templatemag.com/license/
          -->
          Created with Dashio template by <a href="https://templatemag.com/">TemplateMag</a>
        </div>
        <a href="index.html#" class="go-top">
          <i class="fa fa-angle-up"></i>
          </a>
      </div>
    </footer>
    <!--footer end-->
  </section>
  <!-- js placed at the end of the document so the pages load faster -->
  <script src="libb/jquery/jquery.min.js"></script>

  <script src="libb/bootstrap/js/bootstrap.min.js"></script>
  <script class="include" type="text/javascript" src="libb/jquery.dcjqaccordion.2.7.js"></script>
  <script src="libb/jquery.scrollTo.min.js"></script>
  <script src="libb/jquery.nicescroll.js" type="text/javascript"></script>
  <script src="libb/jquery.sparkline.js"></script>
  <!--common script for all pages-->
  <script src="libb/common-scripts.js"></script>
  <script type="text/javascript" src="libb/gritter/js/jquery.gritter.js"></script>
  <script type="text/javascript" src="libb/gritter-conf.js"></script>
  <!--script for this page-->
  <script src="libb/sparkline-chart.js"></script>
  <script src="libb/zabuto_calendar.js"></script>
  <script type="text/javascript">
    $(document).ready(function() {
      var unique_id = $.gritter.add({
        // (string | mandatory) the heading of the notification
        title: 'Welcome to Dashio!',
        // (string | mandatory) the text inside the notification
        text: 'Hover me to enable the Close Button. You can hide the left sidebar clicking on the button next to the logo.',
        // (string | optional) the image to display on the left
        image: 'img/ui-sam.jpg',
        // (bool | optional) if you want it to fade out on its own or just sit there
        sticky: false,
        // (int | optional) the time you want it to be alive for before fading out
        time: 8000,
        // (string | optional) the class name you want to apply to that specific message
        class_name: 'my-sticky-class'
      });

      return false;
    });
  </script>
  <script type="application/javascript">
    $(document).ready(function() {
      $("#date-popover").popover({
        html: true,
        trigger: "manual"
      });
      $("#date-popover").hide();
      $("#date-popover").click(function(e) {
        $(this).hide();
      });

      $("#my-calendar").zabuto_calendar({
        action: function() {
          return myDateFunction(this.id, false);
        },
        action_nav: function() {
          return myNavFunction(this.id);
        },
        ajax: {
          url: "show_data.php?action=1",
          modal: true
        },
        legend: [{
            type: "text",
            label: "Special event",
            badge: "00"
          },
          {
            type: "block",
            label: "Regular event",
          }
        ]
      });
    });

    function myNavFunction(id) {
      $("#date-popover").hide();
      var nav = $("#" + id).data("navigation");
      var to = $("#" + id).data("to");
      console.log('nav ' + nav + ' to: ' + to.month + '/' + to.year);
    }
  </script>
</body>

</html>