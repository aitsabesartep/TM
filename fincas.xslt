<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
    <div id="cos_fincas" class="container">
        <div class="row">
            <div class="col-xs-10 col-xs-offset-1 col-sm-10 col-sm-offset-1 col-md-offset-1 col-md-10 col-lg-offset-0 col-lg-12">
                <div class="row">
                    <div id="filter-panel" class="collapse filter-panel">
                        <div class="panel panel-default">
                            <div class="panel-body">
                                <form class="form-inline" role="form">
                                    <div class="row">
                                        <div class="col-xs-12 col-sm-12 col-md-4 col-lg-4">
                                            <div >
                                                <h5>Fechas</h5>
                                                <row>
                                                    <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
                                                        <div id="entrada" class="calendari_fincas">
                                                            <div class="form-group" style="width:100%; margin-top:7px">
                                                                <div class="input-group" style="width:100%">
                                                                   <span class="input-group-addon" role="button"><i class="glyphicon glyphicon-calendar" style="width: 100%"></i></span>
                                                                   <input id="from" class="form-control" role="button" name='salida' placeholder="Dia entrada" readonly="true"/>
                                                                </div>
                                                                <div class="input-group" style="width:100%">
                                                                   <span class="input-group-addon" role="button"><i class="glyphicon glyphicon-calendar" style="width: 100%"></i></span>
                                                                   <input id="from" class="form-control" role="button" name='salida' placeholder="Dia entrada" readonly="true"/>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </row>
                                            </div>
                                        </div>
                                        <div class="col-xs-12 col-sm-6 col-md-4 col-lg-4">
                                            <h5>Características</h5>
                                            <row>
                                                <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
                                                    <div class="form-group carac">
                                                        <select class="form-control sel_fincas" id="sel1">
                                                            <option>Nº Personas</option>
                                                            <option>1</option>
                                                            <option>2</option>
                                                            <option>3</option>
                                                            <option>4</option>
                                                        </select>
                                                    </div>
                                                </div>
                                                <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
                                                    <div class="form-group carac">
                                                        <select class="form-control sel_fincas" id="sel2">
                                                            <option>Tipo</option>
                                                            <option>Finca</option>
                                                            <option>Casa</option>
                                                            <option>Apartamento</option>
                                                        </select>
                                                    </div>
                                                </div>
                                                <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
                                                    <div class="form-group carac">
                                                        <select class="form-control sel_fincas" id="sel3">
                                                            <option>Población</option>
                                                            <option>Petra</option>
                                                            <option>Sineu</option>
                                                            <option>Manacor</option>
                                                        </select>
                                                    </div>
                                                </div>
                                            </row>
                                        </div>
                                        <div class="col-xs-12 col-sm-6 col-md-4 col-lg-4" id="col_mobiliari">
                                            <h5>Mobiliario</h5>
                                            <div id="recuadre_serveis">
                                                <div class="row" style="margin-left:8px; padding-top:8px; padding-bottom:8px;">
                                                    <table style="width:100%">
                                                        <tr>
                                                            <td>
                                                                <div class="checkbox serveis_fincas" style="margin-left:10px; margin-right:10px;">
                                                                    <label><input type="checkbox"/> Piscina</label>
                                                                </div>
                                                            </td>
                                                            <td>
                                                                <div class="checkbox serveis_fincas" style="margin-left:10px; margin-right:10px;">
                                                                    <label><input type="checkbox"/> Wifi</label>
                                                                </div>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td>
                                                                <div class="checkbox serveis_fincas" style="margin-left:10px; margin-right:10px;">
                                                                    <label><input type="checkbox"/> TV</label>
                                                                </div>
                                                            </td>
                                                            <td>
                                                                <div class="checkbox serveis_fincas" style="margin-left:10px; margin-right:10px;">
                                                                    <label><input type="checkbox"/> Yacuzzi</label>
                                                                </div>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td>
                                                                <div class="checkbox serveis_fincas" style="margin-left:10px; margin-right:10px;">
                                                                    <label><input type="checkbox"/> Mar</label>
                                                                </div>
                                                            </td>
                                                            <td>
                                                                <div class="checkbox serveis_fincas" style="margin-left:10px; margin-right:10px;">
                                                                    <label><input type="checkbox"/> Admiten perros</label>
                                                                </div>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td>
                                                                <div class="checkbox serveis_fincas" style="margin-left:10px; margin-right:10px;">
                                                                    <label><input type="checkbox"/> Barbacoa</label>
                                                                </div>
                                                            </td>
                                                            <td>
                                                                <div class="checkbox serveis_fincas" style="margin-left:10px; margin-right:10px;">
                                                                    <label><input type="checkbox"/> Aire acond.</label>
                                                                </div>
                                                            </td>
                                                        </tr>
                                                    </table>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                    <button type="button" class="btn btn-primary" data-toggle="collapse" data-target="#filter-panel">
                        <span class="glyphicon glyphicon-filter"></span> Filtros
                    </button>
                </div>
            </div>
        </div>

        <section>
            <xsl:apply-templates select="fincas/finca"/>
        </section>
    </div>
    <footer id="peu">
        <p id="textPeu" >Copyright 2016 All rights reserved.</p>
    </footer>
</xsl:template>

  <xsl:template match="finca">
    <div class="row">
      <div id="cuadro_finca" class="col-xs-10 col-xs-offset-1 col-sm-10 col-sm-offset-1 col-md-offset-1 col-md-10 col-lg-offset-0 col-lg-12">
        <div class="col-md-12 col-lg-6">
            <a class="mouse_select"><xsl:attribute name="onclick">loadPropiedad(<xsl:value-of select="codi"/>)</xsl:attribute>
            <img id="img_finca" class="img-responsive">
                  <xsl:attribute name="src"><xsl:value-of select="imagenes/url"/></xsl:attribute>
            </img>
          </a>
        </div>
        <div id="descripcio" class="col-md-12 col-lg-6">
            <div id="rp" class="row">
                <div class="col-md-12">
                    <h3>
                    <a class="mouse_select">
                        <xsl:attribute name="onclick">loadPropiedad(<xsl:value-of select="codi"/>)</xsl:attribute>
                        <xsl:value-of select="nombre"/>
                    </a>
                    </h3>
                    <h5><xsl:value-of select="poblacion"/></h5>
                    <hr></hr>
                </div>
            </div>
          <div class="row">
              <div id="info" class="col-xs-12 col-sm-8 col-md-9 col-lg-7">
                <div id="subinfo">
                  <ul id="caracteristiques">
                    <li><p>Capacidad personas: <xsl:value-of select="capacidad_personas"/></p></li>
                    <li><p>Nº Baños: <xsl:value-of select="num_banyos"/></p></li>
                    <li><p>Nº Habitaciones: <xsl:value-of select="num_habitaciones"/></p></li>
                    <li><p>Casa: <xsl:value-of select="metros_casa"/> m<sup>2</sup></p></li>
                    <li><p><xsl:value-of select="servicios/*[1]"/>&#160;<span class="glyphicon glyphicon-ok"></span></p></li>
                    <li><p><xsl:value-of select="servicios/*[2]"/>&#160;<span class="glyphicon glyphicon-ok"></span></p></li>
                    <li><p><xsl:value-of select="servicios/*[3]"/>&#160;<span class="glyphicon glyphicon-ok"></span></p></li>
                  </ul>
                </div>
              </div>
              <div id="preu" class="col-xs-1 col-sm-2 col-md-3 col-lg-4">
                 <h3 id="preui" class="btn btn-success">
                    <a id="preui"><xsl:attribute name="onclick">loadPropiedad(<xsl:value-of select="codi"/>)</xsl:attribute>
                    <span id="desde">desde</span>&#160;<xsl:value-of select="precio/enero"/>&#160;€/noche
                    </a>
                </h3>
              </div>
        </div>
        </div>
      </div>
    </div>
  </xsl:template>

</xsl:stylesheet>