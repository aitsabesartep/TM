<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
<html id="ht" lang="es-ES" ><!-- Make sure the <html> tag is set to the .full CSS class. Change the background image in the full.css file. -->
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
    <link href="css/menu.css" rel="stylesheet"></link>
    <link href="css/mapa.css" rel="stylesheet"></link>

</head>

<body id="bd">
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
                        <a id="item_text" href="fincas.php">Fincas</a>
                    </li>
                    <li id="menu_active">
                        <a id="item_text" href="mapa.php">Mapa</a>
                    </li>
                    <li>
                        <a id="item_text" href="#">Contacto</a>
                    </li>
                </ul>
            </div>
            <!-- /.navbar-collapse -->
        </div>
    </nav>
    <section>
        <div id="contingut" class="container">
            <div id="map">
                <xsl:apply-templates select="fincas"/>
            </div>
        </div>
    </section>

    <!-- jQuery -->
    <script src="js/jquery.js"></script>
    <!-- Bootstrap Core JavaScript -->
    <script src="js/bootstrap.js"></script>
    <!-- <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBJM4SA9izScVEDXPtGpY1BqSoPcAS5C9E&amp;amp;callback=initMap"></script> -->
    

</body>
</html>
</xsl:template>


    <xsl:template match="fincas">
    <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBJM4SA9izScVEDXPtGpY1BqSoPcAS5C9E&amp;amp"></script>
    <script src="js/markerclusterer.js"></script>
    <script type="text/javascript">
        var map;
        var markers = [];
        var markerCluster;

        function initMap(){
            map = new google.maps.Map(document.getElementById("map"), {
                center: new google.maps.LatLng(39.6130537, 2.8864253),
                zoom: 9,
            });
        }

        function addmarker(latilongi, info, last) {
            var marker = new google.maps.Marker({
                position: latilongi,
                title: 'titol',
                clickable: true,
                map: map
            });
            marker.info = info;
            google.maps.event.addListener(marker, 'click', function() {
              marker.info.open(map, marker);
            });
            markers.push(marker);

            if(last==1){
                markerCluster = new MarkerClusterer(map, markers);
            }
        }

        initMap();
    </script>
    <xsl:apply-templates select="finca"/>
    </xsl:template>


  <xsl:template match="finca">
    <script>
        var lat = <xsl:value-of select="coordenadas/latitud"/>
        var long = <xsl:value-of select="coordenadas/longitud"/>
        var myLatlng = new google.maps.LatLng(lat,long);

        var contentString = '<div id="content" style="width:100%; max-width:400px;">'+
            '<div id="siteNotice">'+
            '</div>'+
            '<a href="#"><h1 id="firstHeading" class="firstHeading"><xsl:value-of select="nombre"/></h1></a>'+
            '<h4 id="firstHeading" class="firstHeading"><xsl:value-of select="poblacion"/></h4>'+
            '<div id="bodyContent">'+
            '<a href="#"><img class="img-responsive" src="img/fondo1.jpg" style="width:100%; max-width:400px;"><xsl:attribute name="src"><xsl:value-of select="imagenes/url"/></xsl:attribute></img></a>'+
            '<hr></hr>'+
            '<p><xsl:value-of select="descripcion"/></p>'+
            '</div>'+
            '</div>';

        var info = new google.maps.InfoWindow({
          content: contentString
        });

        <xsl:if test="position() = last()">

          addmarker(myLatlng,info,1);

        </xsl:if>
        <xsl:if test="position() != last()">

          addmarker(myLatlng,info,0);

        </xsl:if>
    </script>
  </xsl:template>

</xsl:stylesheet>