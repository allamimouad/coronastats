          <div class="col-lg-3 ds">
            <!--COMPLETED ACTIONS DONUTS CHART-->
            <div class="donut-main">
              <h4>COMPLETED ACTIONS & PROGRESS</h4>
              <canvas id="newchart" height="130" width="130"></canvas>
              <script>
                var doughnutData = [{
                    value: 50,
                    color: "#82B1FF",
                    label: "confirmed"
                  },
                  {
                    value: 30,
                    color: "#EF5350",
                    label: "confirmed"
                  },
                  {
                    value: 20,
                    color: "#1DE9B6",
                    label: "confirmed"
                  }
                ];
                var myDoughnut = new Chart(document.getElementById("newchart").getContext("2d")).Doughnut(doughnutData);
              </script>

                <style type="text/css">
                  .dott66 {
                  height: 10px;
                  width: 10px;
                  background-color: #82B1FF;
                  border-radius: 50%;
                  display: inline-block;
                }

                .dott67 {
                  height: 10px;
                  width: 10px;
                  background-color: #EF5350;
                  border-radius: 50%;
                  display: inline-block;
                }

                .dott68 {
                  height: 10px;
                  width: 10px;
                  background-color: #1DE9B6;
                  border-radius: 50%;
                  display: inline-block;
                }


                </style>


              <p> <span class="dott66"></span>&nbsp;confirmed&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="dott67"></span>&nbsp;deaths&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="dott68"></span>&nbsp;recovered  </p>
            </div>
            <!-- RECENT ACTIVITIES SECTION -->
            <h4 class="centered mt">RECENT ACTIVITY</h4>
            <!-- First Activity -->
            <div class="desc">
              <div class="thumb">
                <span class="badge bg-theme"><i class="fa fa-clock-o"></i></span>
              </div>
              <div class="details">
                <p>
                  <muted>Just Now</muted>
                  <br/>
                  <a href="#">Paul Rudd</a> purchased an item.<br/>
                </p>
              </div>
            </div>
            <!-- Second Activity -->
            <div class="desc">
              <div class="thumb">
                <span class="badge bg-theme"><i class="fa fa-clock-o"></i></span>
              </div>
              <div class="details">
                <p>
                  <muted>2 Minutes Ago</muted>
                  <br/>
                  <a href="#">James Brown</a> subscribed to your newsletter.<br/>
                </p>
              </div>
            </div>
            <!-- Third Activity -->
            <div class="desc">
              <div class="thumb">
                <span class="badge bg-theme"><i class="fa fa-clock-o"></i></span>
              </div>
              <div class="details">
                <p>
                  <muted>3 Hours Ago</muted>
                  <br/>
                  <a href="#">Diana Kennedy</a> purchased a year subscription.<br/>
                </p>
              </div>
            </div>
            <!-- Fourth Activity -->
            <div class="desc">
              <div class="thumb">
                <span class="badge bg-theme"><i class="fa fa-clock-o"></i></span>
              </div>
              <div class="details">
                <p>
                  <muted>7 Hours Ago</muted>
                  <br/>
                  <a href="#">Brando Page</a> purchased a year subscription.<br/>
                </p>
              </div>
            </div>
          </div>