  <header class="header black-bg">
      <div class="sidebar-toggle-box">
        <div class="fa fa-bars tooltips" data-placement="right" data-original-title="Toggle Navigation"></div>
      </div>
      <!--logo start-->
      <a href="index.html" class="logo"><b>Corona<span>Stats</span></b></a>
      <!--logo end-->
      <div class="nav notify-row searchxx" id="top_menu">
      
      <form autocomplete="off" action="${pageContext.request.contextPath}/home">
	        <ul class="nav pull-right top-menu">
	          <li><input id="myInput" type="text" name="name" placeholder="City Search"></li>
	          <input type="hidden" id="custId" name="type" value="city">
	          <li><button type="submit" class="search"><i class="fa fa-search"></i></button></li>
	        </ul>
        </form>
        
        <style>
        
        .searchxx{
        
        	position: relative;
  			left: -80px;
        
        }
        
        </style>
        
        
        <script type="text/javascript">
        
        /*An array containing all the country names in the world:*/
    	var countries = [	
    		
						<c:forEach items="${ cities_name }" var="city_name">
            
							"${ city_name }",
                    
						</c:forEach>
    				
    					];

        
        autocomplete(document.getElementById("myInput"), countries);
        
        </script>
        
      </div>
      
      <c:if test="${ sessionScope.admin_conected == true }">
      
		<div class="top-menu">
	        <ul class="nav pull-right top-menu">
	          <li><a class="logout" href="${pageContext.request.contextPath}/login?logout=yes">Logout</a></li>
	        </ul>
		</div>

		</c:if>
      
    </header>