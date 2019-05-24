<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                version="1.0">
    <xsl:output method="html" doctype-system="about:legacy-compat"/>
    <!-- This allows generation of <!DOCTYPE html SYSTEM "about:legacy-compat"> for HTML5 -->
    <xsl:template match="/">
        <html lang="en">
            <head>
                <title>Cuba</title>
                <meta charset="utf-8"/>
                <meta name="viewport" content="width=device-width, initial-scale=1"/>
                <link rel="stylesheet"
                      href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css"/>
            </head>
            <body>
                <style>
                    section.logo
                    {
                    margin-top: 5px;
                    margin-bottom: 5px;
                    }
                    div.row{
                    margin-top: 10px;
                    margin-left: 10px;
                    margin-right: 10px;
                    }
                    div.content{
                    margin-top: auto;
                    margin-left: auto;
                    margin-right: auto;
                    }

                </style>
                <div class="container">
                    <header>
                        <section class="logo">
                            <div class="text-center">
                                <img src="../img/cuba-logo.png" width="256"/>
                            </div>
                        </section>
                        <section name="navbar">
                            <nav class="navbar navbar-expand-lg navbar-light bg-light">
                                <a class="navbar-brand" href="#">Home</a>
                                <button class="navbar-toggler" type="button" data-toggle="collapse"
                                        data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent"
                                        aria-expanded="false" aria-label="Toggle navigation">
                                    <span class="navbar-toggler-icon"/>
                                </button>
                                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                                    <ul class="navbar-nav mr-auto">
                                        <li class="nav-item active">
                                            <a class="nav-link" href="../static/Regiones.html">Regiones
                                                <span class="sr-only"/>
                                            </a>
                                        </li>
                                        <li class="nav-item active">
                                            <a class="nav-link" href="../static/Actividades.html">Actividades
                                                <span class="sr-only"/>
                                            </a>
                                        </li>
                                    </ul>
                                    <form class="form-inline my-2 my-lg-0">
                                        <input class="form-control mr-sm-2" type="search" placeholder="Buscar"
                                               aria-label="Search"/>
                                        <button class="btn btn-outline-success my-2 my-sm-0" type="submit">
                                            <img src="../img/logosearch.png" height="25" width="25"/>
                                        </button>
                                    </form>
                                </div>
                            </nav>
                        </section>
                    </header>
                    <section>
                        <div class="row">
                            <xsl:apply-templates/>
                        </div>
                    </section>
                    <footer>
                        <div class="card text-center">
                            <div class="card-header"></div>
                            <div class="card-body">
                                <h6 class="card-title">©Iñaki Rios</h6>
                                <h6>
                                    <p class="card-text">Para viajeros apasionados de viajeros apasionados</p>
                                </h6>
                            </div>
                            <div class="card-footer text-muted">
                                YouThink | Cuba
                            </div>
                        </div>
                    </footer>

                </div>
                <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
                        integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
                        crossorigin="anonymous"></script>
                <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.6/umd/popper.min.js"
                        integrity="sha384-wHAiFfRlMFy6i5SRaxvfOCifBUQy1xHdJ/yoi7FRNXMRBu5WHdZYu1hA6ZOblgut"
                        crossorigin="anonymous"></script>
                <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/js/bootstrap.min.js"
                        integrity="sha384-B0UglyR+jN6CkvvICOB2joaf5I4l3gm9GU6Hc1og6Ls7i6U/mkkaduKaBhlAXv9k"
                        crossorigin="anonymous"></script>

            </body>
        </html>
    </xsl:template>
    <xsl:template match="informacion">
        <xsl:for-each select="detalle">
            <div class="col-md-4">
                <div class="thumbnail">
                    <img width="400" height="256">
                        <xsl:attribute name="src">
                            <xsl:value-of select="img"/>
                        </xsl:attribute>
                    </img>
                </div>
                <div class="content">
                    <p>
                        <xsl:value-of select="descripcion"/>
                    </p>
                </div>
            </div>

        </xsl:for-each>
    </xsl:template>
</xsl:stylesheet>