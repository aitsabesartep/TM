<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:param name="code"/>
    <xsl:template match="/">
        <xsl:apply-templates select="fincas/finca[codi = $code]"/>
    </xsl:template>

<xsl:template match="finca">
    <div id="tot" class="container">
        <div id="main_r" class="row">
            <section>
                <div id="contingut" class="col-xs-12 col-sm-12 col-md-8 col-md-offset-1 col-lg-8 col-lg-offset-1">
                    <section class="slider">
                        <div id="slider" class="flexslider">
                          <ul class="slides">
                            <xsl:apply-templates select="imagenes/url"/>
                          </ul>
                        </div>
                        <div id="carousel" class="flexslider">
                            <ul class="slides">
                                <xsl:apply-templates select="imagenes/url"/>
                            </ul>
                        </div>
                    </section>
                </div>
            </section>
            <section>
                <div class="col-xs-12 col-sm-12 col-md-3 col-lg-3">
                    <div id="contingut_dreta" class="row">
                        <div id="contignut_dreta_in" class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
                            <h2 id="titol"><xsl:value-of select="nombre"/></h2>
                            <h4><xsl:value-of select="poblacion"/></h4>
                            <hr></hr>
                        </div>
                        <div id="contignut_dreta_in" class="col-xs-7 col-sm-7 col-md-12 col-lg-12">
                          <ul id="lista">
                            <li><p>Capacidad personas: <xsl:value-of select="capacidad_personas"/></p></li>
                            <li><p>Nº Baños: <xsl:value-of select="num_banyos"/></p></li>
                            <li><p>Casa: <xsl:value-of select="metros_casa"/> m<sup>2</sup></p></li>
                            <xsl:choose>
                                <xsl:when test="tipo/finc=1">
                                    <li><p>Terreno: <xsl:value-of select="metros_terreno"/> m<sup>2</sup></p></li>
                                </xsl:when>
                            </xsl:choose>
                          </ul>
                        </div>
                        <div id="contignut_dreta_in" class="col-xs-5 col-sm-5 col-md-12 col-lg-12">
                            <ul id="lista">
                                <li><p><xsl:value-of select="servicios/*[1]"/>&#160;<span class="glyphicon glyphicon-ok"></span></p></li>
                                <li><p><xsl:value-of select="servicios/*[2]"/>&#160;<span class="glyphicon glyphicon-ok"></span></p></li>
                                <li><p><xsl:value-of select="servicios/*[3]"/>&#160;<span class="glyphicon glyphicon-ok"></span></p></li>
                            </ul>
                        </div>
                    </div>                    
                    <div id="" class="row">
                        <div id="contingut_dreta_preu" class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
                            <div id ="estrelles">
                                <h4 id="val">Valoración usuarios</h4>
                                <input id="input-id" value="4"></input>
                            </div>
                        </div>
                    </div>
                    <div id="" class="row">
                        <div id="contingut_dreta_preu" class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
                            <button id="preu" class="btn btn-success">
                                Reservar ahora
                            </button>
                        </div>
                    </div>
                </div>
            </section>
        </div>
        <div class="col-xs-12 col-sm-12 col-md-11 col-md-offset-1 col-lg-11 col-lg-offset-1">
            <div id="descripcio">
            <!-- Nav tabs -->
              <ul class="nav nav-tabs" role="tablist">
                <li role="presentation" class="active"><a href="#home" aria-controls="home" role="tab" data-toggle="tab">Descripción</a></li>
                <li role="presentation"><a href="#profile" aria-controls="profile" role="tab" data-toggle="tab">Precios</a></li>
                <li id="loc" role="presentation">
                    <xsl:attribute name="onclick">
                        mapa(<xsl:value-of select="coordenadas/longitud"/>,<xsl:value-of select="coordenadas/latitud"/>)
                    </xsl:attribute>
                    <a href="#messages" aria-controls="messages" role="tab" data-toggle="tab">Localización</a>
                </li>
                <li role="presentation"><a id="com" href="#settings" aria-controls="settings" role="tab" data-toggle="tab">Comentarios</a></li>
              </ul>

              <!-- Tab panes -->
              <div id="pad" class="tab-content">
                <div role="tabpanel" class="tab-pane active" id="home">
                    <div>
                        <xsl:value-of select="descripcion"/>
                    </div>
                </div>
                <div role="tabpanel" class="tab-pane" id="profile">
                    <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
                        <div class="table-responsive">
                            <table class="table">
                                <thead>
                                    <tr>
                                        <th id="mes" align="center">Enero</th>
                                        <th id="mes" align="center">Febrero</th>
                                        <th id="mes" align="center">Marzo</th>
                                        <th id="mes" align="center">Abril</th>
                                        <th id="mes" align="center">Mayo</th>
                                        <th id="mes" align="center">Junio</th>
                                        <th id="mes" align="center">Julio</th>
                                        <th id="mes" align="center">Agosto</th>
                                        <th id="mes" align="center">Septiembre</th>
                                        <th id="mes" align="center">Octubre</th>
                                        <th id="mes" align="center">Noviembre</th>
                                        <th id="mes" align="center">Diciembre</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td><xsl:value-of select="precio/enero"/>&#160;&#8364;</td>
                                        <td><xsl:value-of select="precio/febrero"/>&#160;&#8364;</td>
                                        <td><xsl:value-of select="precio/marzo"/>&#160;&#8364;</td>
                                        <td><xsl:value-of select="precio/abril"/>&#160;&#8364;</td>
                                        <td><xsl:value-of select="precio/mayo"/>&#160;&#8364;</td>
                                        <td><xsl:value-of select="precio/junio"/>&#160;&#8364;</td>
                                        <td><xsl:value-of select="precio/julio"/>&#160;&#8364;</td>
                                        <td><xsl:value-of select="precio/agosto"/>&#160;&#8364;</td>
                                        <td><xsl:value-of select="precio/septiembre"/>&#160;&#8364;</td>
                                        <td><xsl:value-of select="precio/octubre"/>&#160;&#8364;</td>
                                        <td><xsl:value-of select="precio/noviembre"/>&#160;&#8364;</td>
                                        <td><xsl:value-of select="precio/diciembre"/>&#160;&#8364;</td>
                                    </tr>
                                </tbody>
                            </table>
                            <h6 id="nota">*Precio por noche</h6>
                        </div>
                    </div>
                </div>
                <div role="tabpanel" class="tab-pane" id="messages">
                    <div id="mapP">
                        
                    </div>
                </div>
                <div role="tabpanel" class="tab-pane" id="settings">
                    <div class="row">
                        <div id="fins" class="col-xs-12 col-sm-12 col-md-7 col-md-offset-0 col-lg-offset-0 col-lg-7">
                            <div id="scr">
                                <ul id="lista" class="media-list">
                                    <xsl:apply-templates select="comentarios/comentario"/>
                                </ul>
                            </div>
                        </div>
                        <div id="comentari" class="col-xs-12 col-sm-12 col-md-5 col-lg-5">
                            <form class="form-horizontal" role="form" method="post" action="">
                                <h4>Déjanos tu comentario</h4>
                                <div class="form-group">
                                    <label for="name" class="col-sm-2 control-label">Name</label>
                                    <div class="col-sm-10">
                                        <input type="text" class="form-control" id="name" name="name" placeholder="Nombre y apellido" value=""></input>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="email" class="col-sm-2 control-label">Rating</label>
                                    <div class="col-sm-10">
                                        <input id="input-id2" value="3"></input>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="message" class="col-sm-2 control-label">Mensaje</label>
                                    <div class="col-sm-10">
                                        <textarea class="form-control" rows="4" name="message"></textarea>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <div class="col-sm-10 col-sm-offset-2">
                                        <input id="submit" name="submit" type="submit" value="Enviar" class="btn btn-primary"></input>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div id="cal" class="col-xs-12 col-sm-12 col-md-11 col-md-offset-1 col-lg-11 col-lg-offset-1">
        <ul class="nav nav-tabs" role="tablist">
            <li role="presentation" class="active"><a aria-controls="cal" role="tab" data-toggle="tab">Calendario</a></li>
        </ul>
        <div>
            <div class="row">
                <div class="col-xs-12 col-sm-12 col-md-6 col-lg-6">
                    <div id="content">
                        <input id="date-range12" size="40" value=""/>
                    </div>
                </div>
                <div class="col-xs-12 col-sm-12 col-md-6 col-lg-6">
                    <div id="pagament" style="margin-top: 25px; padding: 10px;">
                            <form class="form-horizontal" role="form" method="post" action="reserva.php">
                                <h4>Datos reserva</h4>
                                <div class="form-group">
                                    <label for="name" class="col-sm-2 control-label">Nombre</label>
                                    <div class="col-sm-10">
                                        <input type="text" class="form-control" id="name" name="name" placeholder="Nombre y apellido" value=""></input>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="dni" class="col-sm-2 control-label">Teléfono</label>
                                    <div class="col-sm-4">
                                        <input type="number" class="form-control" id="dni" name="dni" placeholder="DNI" value=""></input>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="sel1" class="col-sm-2 control-label">Personas</label>
                                    <div class="col-sm-4">
                                        <select id="sel1" class="form-control" value="3">
                                            <option>1</option>
                                            <option>2</option>
                                            <option>3</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="message" class="col-sm-2 control-label">Mensaje</label>
                                    <div class="col-sm-10">
                                        <textarea class="form-control" rows="4" name="message"></textarea>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <div class="col-sm-10 col-sm-offset-2">
                                        <input id="submit" name="submit" type="submit" value="Enviar" class="btn btn-primary"></input>
                                    </div>
                                </div>
                            </form>
                        </div>  
                    </div>
                </div>
            </div>
        </div>
    </div>
    <footer id="peu" style="margin-top: 30px;">
        <p id="textPeu" >Copyright 2016 All rights reserved.</p>
    </footer>
</xsl:template>
    <xsl:template match="url">
        <li><img>
            <xsl:attribute name="src"><xsl:value-of select="."/></xsl:attribute>
        </img></li>
    </xsl:template>
    
    <xsl:template match="comentario">
        <li id="coment" class="media">
            <div id="cm" class="media-body">
                <h4 id="nom_comment" class="media-heading"><xsl:value-of select="name"/></h4>
                <p><xsl:value-of select="opinion"/></p>
                <input class="est_comment">
                    <xsl:attribute name="value"><xsl:value-of select="valoracion"/></xsl:attribute>
                </input>                                
            </div>
        </li>
        <hr></hr>
    </xsl:template>

</xsl:stylesheet>
