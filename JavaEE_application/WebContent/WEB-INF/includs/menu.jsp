 <!--sidebar start-->
    <aside>
      <div id="sidebar" class="nav-collapse ">
        <!-- sidebar menu start-->
        <ul class="sidebar-menu" id="nav-accordion">
          <p class="centered"><a href="profile.html"><img src="img/ui-sam.jpg" class="img-circle" width="80"></a></p>
          <h5 class="centered">Sam Soffes</h5>
          <li class="mt">
            <a class="active" href="${pageContext.request.contextPath}">
              <i class="fa fa-dashboard"></i>
              <span>morocco Stat</span>
              </a>
          </li>
          <li class="sub-menu">
            <a href="javascript:;">
              <i class="fa fa-bar-chart-o"></i>
              <span>Regions</span>
              </a>
            <ul class="sub">
            
            <c:forEach items="${ regions_name }" var="region_name">
                        
             	<li><a href="${pageContext.request.contextPath}?type=region&name=${ region_name } ">${ region_name }</a></li>
                        
            </c:forEach>

            </ul>
          </li>
          <li>
            <a href="${pageContext.request.contextPath}/city">
              <i class="fa fa-tasks"></i>
              <span>cities</span>
              </a>
          </li>
          <li>
            <a href="google_maps.html">
              <i class="fa fa-plus"></i>
              <span>add new cases</span>
              </a>
          </li>
          <li class="sub-menu">
            <a href="javascript:;">
              <i class="fa fa-th"></i>
              <span>Data Tables</span>
              </a>
            <ul class="sub">
              <li><a href="basic_table.html">Basic Table</a></li>
              <li><a href="responsive_table.html">Responsive Table</a></li>
              <li><a href="advanced_table.html">Advanced Table</a></li>
            </ul>
          </li>
        </ul>
        <!-- sidebar menu end-->
      </div>
    </aside>
    <!--sidebar end-->