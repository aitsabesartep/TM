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
    <link href="css/fincas.css" rel="stylesheet"></link>

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

</head>

<body>
    <!-- Navigation -->
    <nav class="navbar-color navbar navbar-inverse navbar-fixed-top" role="navigation">
        <div class="container">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header navbar-color">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                    <span class="sr-only">Navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
            </div>
            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav navbar-color-mobile">
                    <li>
                        <a id="item_text" href="index.html">Home</a>
                    </li>
                    <li id="menu_active">
                        <a id="item_text" href="fincas.html">Fincas</a>
                    </li>
                    <li>
                        <a id="item_text" href="#">Contacto</a>
                    </li>
                </ul>
            </div>
            <!-- /.navbar-collapse -->
        </div>
  </nav>

    <div class="container">

            <!-- Page Header -->
            <div class="row">
                <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
                  <div class="panel-heading">
                    <div class="pll-right">
                      <button id="filtro" type="button" class="btn btn-default btn-xs btn-filter" data-target="#bs-example-navbar-collapse-1">
                          <span class="glyphicon glyphicon-filter"></span>  Filtros
                      </button>
                    </div>
                </div>
                <div id="target" class="panel-body">

                    <form class="form-horizontal form-pricing" role="form">

                    //Filtres

                    </form>
                </div>
               </div>
            </div>
            <!-- /.row -->

            <!-- Projects Row -->
            <xsl:apply-templates select="fincas/finca"/>
            
            <!-- /.row -->

            <hr></hr>

            <!-- Pagination -->
            <div class="row text-center">
                <div class="col-lg-12">
                    <ul class="pagination">
                        <li>
                            <a href="#">Prev</a>
                        </li>
                        <li class="active">
                            <a href="#">1</a>
                        </li>
                        <li>
                            <a href="#">2</a>
                        </li>
                        <li>
                            <a href="#">3</a>
                        </li>
                        <li>
                            <a href="#">4</a>
                        </li>
                        <li>
                            <a href="#">5</a>
                        </li>
                        <li>
                            <a href="#">Next</a>
                        </li>
                    </ul>
                </div>
            </div>

        </div>

    <!-- jQuery -->
    <script src="js/jquery.js"></script>
    <script src="js/ion.rangeSlider.min.js"></script>
    <!-- Bootstrap Core JavaScript -->
    <script src="js/bootstrap.js"></script>

</body>
</html>
</xsl:template>

  <xsl:template match="finca">
    <div class="row">
      <div id="cuadro_finca" class="col-md-12">
        <div class="col-md-12 col-lg-6">
          <a href="#">
            <img id="img_finca" class="img-responsive" src="img/img_fincas/palacio/img0.jpg" alt=""></img>
          </a>
        </div>
        <div id="descripcio" class="col-md-12 col-lg-6">
            <div class="row">
                <div class="col-md-12">
                    <h3>
                    <a href="#"><xsl:value-of select="nombre"/></a>
                    </h3>
                    <h5><xsl:value-of select="poblacion"/></h5>
                    <hr></hr>
                </div>
            </div>
          <div id="contingut" class="row">
              <div id="info" class="col-xs-8 col-sm-8 col-md-8">
                <div id="subinfo">
                  <ul id="caracteristiques">
                    <li><p>Capacidad personas: <xsl:value-of select="capacidad_personas"/></p></li>
                    <li><p>Nº Baños: <xsl:value-of select="num_banyos"/></p></li>
                    <li><p>Casa: <xsl:value-of select="metros_casa"/> m<sup>2</sup></p></li>
                    <xsl:choose>
                        <xsl:when test="tipo/finc=1">
                            <li><p>Terreno: <xsl:value-of select="metros_terreno"/> m<sup>2</sup></p></li>
                        </xsl:when>
                    </xsl:choose>
                    <li><p><xsl:value-of select="servicios/*[1]"/>&#160;<span class="glyphicon glyphicon-ok"></span></p></li>
                    <li><p><xsl:value-of select="servicios/*[2]"/>&#160;<span class="glyphicon glyphicon-ok"></span></p></li>
                    <li><p><xsl:value-of select="servicios/*[3]"/>&#160;<span class="glyphicon glyphicon-ok"></span></p></li>
                  </ul>
                </div>
              </div>
              <div id="preu" class="col-xs-3 col-sm-3 col-md-3">
                 <p id="text_preu">Preu</p>
              </div>
        </div>
        </div>
      </div>
    </div>
  </xsl:template>

  <xsl:template match="servicios">
    <xsl:for-each select="*">
        <li>hoa</li>
    </xsl:for-each>
  </xsl:template>

</xsl:stylesheet>