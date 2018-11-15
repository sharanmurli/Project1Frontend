<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ include file="header.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<div class="container">
<div id="myCarousel" class="carousel slide" data-ride="carousel">
            <!-- Indicators -->
            <ol class="carousel-indicators">
                <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                <li data-target="#myCarousel" data-slide-to="1"></li>
                <li data-target="#myCarousel" data-slide-to="2"></li>
                <li data-target="#myCarousel" data-slide-to="3"></li>
            </ol>
            <div class="carousel-inner" role="listbox">
                <div class="item active">
                    <img  src="<c:url value='/resources/images/33.png'></c:url>" alt="first slide" width="1200" height="700" >
                    <div class="container">
                        <div class="carousel-caption">
                           
                        </div>
                    </div>
                </div>
                <div class="item">
                    <img  src="<c:url value='/resources/images/134.png'></c:url>" alt="Second slide" width="1200" height="700">
                    <div class="container">
                        <div class="carousel-caption">
                            
                        </div>
                    </div>
                </div>
                <div class="item">
                    <img  src="<c:url value='/resources/images/166.png'></c:url>" alt="Third slide" width="1200" height="700">
                    <div class="container">
                        <div class="carousel-caption">
                            
                        </div>
                    </div>
                </div>
                 <div class="item">
                    <img  src="<c:url value='/resources/images/200.png'></c:url>"alt="forth slide" width="1200" height="700">
                    <div class="container">
                        <div class="carousel-caption">
                            
                        </div>
                    </div>
                </div>
            </div>
            
            <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
                <span class="glyphicon glyphicon-chevron-left"></span>
                <span class="sr-only">Previous</span>
            </a>
            <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
                <span class="glyphicon glyphicon-chevron-right" ></span>
                <span class="sr-only">Next</span>
            </a>
        </div><!-- /.carousel -->
       <br> 
  <div class="row">
    <div class="col-sm-4">
      <div class="panel panel-primary">
        <div class="panel-heading">SPORTS KIT</div>
        <div class="panel-body"><img src="<c:url value='/resources/images/5.png'></c:url>" class="img-responsive" style="width:100%" alt="Image"></div>
        <div class="panel-footer">50% OFF ON ALL ITEMS</div>
      </div>
    </div>
    <div class="col-sm-4"> 
      <div class="panel panel-primary">
        <div class="panel-heading">SPORTS SHOES</div>
        <div class="panel-body"><img src="<c:url value='/resources/images/102.png'></c:url>" class="img-responsive" style="width:100%" alt="Image"></div>
        <div class="panel-footer">30% OFF ON ALL THE ITEMS</div>
      </div>
    </div>
    <div class="col-sm-4"> 
      <div class="panel panel-primary">
        <div class="panel-heading">SPORTS JERSEY</div>
        <div class="panel-body"><img src="<c:url value='/resources/images/4.png'></c:url>" class="img-responsive" style="width:100%" alt="Image"></div>
        <div class="panel-footer">35% OFF ON ALL ITEMS</div>
      </div>
    </div>
    </div>



</div>

</body>
</html>