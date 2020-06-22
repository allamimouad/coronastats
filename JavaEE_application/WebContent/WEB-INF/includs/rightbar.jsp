          <div class="col-lg-3 ds">
            <!--COMPLETED ACTIONS DONUTS CHART-->
            <div class="donut-main">
              <h4>Morocco</h4>
              <canvas id="newchart" height="130" width="130"></canvas>
              <script>
                var doughnutData = [
                  
                  {
                    value: ${ morroco_statistic.c_confirmed } ,
                    color: "#82B1FF"
                  },
                  {
                    value: ${ morroco_statistic.c_deaths } ,
                    color: "#EF5350"
                  },
                  {
                    value: ${ morroco_statistic.c_recovered } ,
                    color: "#1DE9B6"
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

              <p> 
	              <span class="dott66"></span>&nbsp;confirmed&nbsp;${ morroco_statistic.c_confirmed }%&nbsp;&nbsp;&nbsp;&nbsp;
	              <span class="dott67"></span>&nbsp;deaths&nbsp;${ morroco_statistic.c_deaths }%&nbsp;&nbsp;&nbsp;&nbsp;<br>
	              <span class="dott68"></span>&nbsp;recovered&nbsp;${ morroco_statistic.c_recovered }%
              </p>
            </div>
            
            
            <!-- Rancked cities by confirmed -->
            <h4 class="centered mt">Siba9 corona liwsal lawal yarba7</h4>
            
            
			<c:forEach items="${ cities_ranked }" var="city_ranked">
            
	            <div class="desc">
	              <div class="thumb">
	                <span class="badge bg-theme"><i class="fa fa-clock-o"></i></span>
	              </div>
	              <div class="details">
	                <p>
	                  <muted>confirmed : ${ city_ranked.c_confirmed }</muted>
	                  <br/>
	                  <a href="#">${ city_ranked.c_name }</a><br/>
	                </p>
	              </div>
	            </div>
            
			</c:forEach> 
            
          </div>