<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
<html lang="es-ES" ><!-- Make sure the <html> tag is set to the .full CSS class. Change the background image in the full.css file. -->
<head>
<meta http-equiv="content-type" content="text/html; charset=UTF-8">

    <meta charset="utf-8"></meta>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"></meta></meta>
    <meta name="viewport" content="width=device-width, initial-scale=1"></meta>
    <meta name="description" content=""></meta>
    <meta name="author" content=""></meta>
    <link rel="icon" href="img/logo.png"></link>

    <title>Fincas En Mallorca</title>

    <!-- Bootstrap Core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet"></link>

    <!-- Custom CSS -->
    <link href="css/full.css" rel="stylesheet"></link>
    <link href="css/menu.css" rel="stylesheet"></link>
    <link href="css/mapa.css" rel="stylesheet"></link>

</head>

<body>
    <!-- Navigation -->
    <nav id="nav1" class="navbar-color navbar navbar-inverse navbar-fixed-top" role="navigation">
        <div class="container">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div id="navhead" class="navbar-header navbar-color">
                <button id="tg" type="button" class="navbar-toggle" data-toggle="collapse" data-target="#menu">
                    <span class="sr-only">Navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
            </div>
            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="menu">
                <ul class="nav navbar-nav navbar-color-mobile">
                    <li>
                        <a id="item_text" href="index.html">Home</a>
                    </li>
                    <li>
                        <a id="item_text" href="fincas.xml">Fincas</a>
                    </li>
                    <li id="menu_active">
                        <a id="item_text" href="fincas_mapa.xml">Mapa</a>
                    </li>
                    <li>
                        <a id="item_text" href="#">Contacto</a>
                    </li>
                </ul>
            </div>
            <!-- /.navbar-collapse -->
        </div>
  </nav>

    <div id="contingut" class="container">
        <div id="r" class="row">
            <div id="cases" class="col-lg-2">
                <h2>Finques</h2>
            </div>
            <div id="lg" class="col-lg-10">
                <div id="map">
                </div>
            </div>
        </div>
    </div>

    <!-- jQuery -->
    <script src="js/jquery.js"></script>
    <!-- Bootstrap Core JavaScript -->
    <script src="js/bootstrap.js"></script>
    <!-- <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBJM4SA9izScVEDXPtGpY1BqSoPcAS5C9E&amp;amp;callback=initMap"></script> -->
    <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBJM4SA9izScVEDXPtGpY1BqSoPcAS5C9E&amp;amp"></script>
    <script type="text/javascript">
        google.maps.event.addDomListener(window, "load", function() {
            map = new google.maps.Map(document.getElementById("map"), {
                center: new google.maps.LatLng(39.6130537, 2.8864253),
                zoom: 10,
            });
        });
    </script>

</body>
</html>
</xsl:template>

  <xsl:template match="finca">
    <script>
        <!-- var myLatlng = new google.maps.LatLng(39.6130537,2.8864253);
        var marker = new google.maps.Marker({
            position: myLatlng,
            title:"Hello World!"
        });
        marker.setMap(map); -->
    </script>
  </xsl:template>

</xsl:stylesheet>