<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                version="1.0">
    <xsl:output method="html" doctype-system="about:legacy-compat"/>
    <!-- This allows generation of <!DOCTYPE html SYSTEM "about:legacy-compat"> for HTML5 -->
    <xsl:template match="/">
        <html lang="en">
            <head>
                <title>Regiones</title>
                <meta charset="utf-8"/>
                <meta name="viewport" content="width=device-width, initial-scale=1"/>
                <link rel="stylesheet"
                      href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css" integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS" crossorigin="anonymous"/>            </head>
            <body>
                <style>
                    div.card-body{
                    font-weight: bold;
                    }
                    div.card-footer{
                    font-weight: bold;
                    }
                    section.logo {
                    margin-top: 5px;
                    margin-bottom: 5px;
                    }
                    div.row
                    {
                    text-align: -moz-center;
                    margin-left: 10px;
                    margin-top: 5px;
                    }
                    h2
                    {
                    margin-top: 10px;
                    margin-bottom: 10px;
                    font-weight: bold;
                    }

                    div.text
                    {
                    text-align: center;
                    margin-top: 10px;
                    margin-bottom: 10px;

                    }
                </style>
                <div class="container">
                    <header>
                        <section class="logo">
                            <div class="text-center">
                                <img src="./img/cuba-logo.png" width="256"/>
                            </div>
                        </section>
                        <section name="navbar">
                            <nav class="navbar navbar-expand-lg navbar-light bg-light">
                                <a class="navbar-brand" href="/parse/cuba">Home</a>
                                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                                    <span class="navbar-toggler-icon"/>
                                </button>

                                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                                    <ul class="navbar-nav mr-auto">
                                        <li class="nav-item active">
                                            <a class="nav-link" href="/parse/regiones">Regiones <span
                                                    class="sr-only"/></a>
                                        </li>
                                    </ul>
                                    <form class="form-inline my-2 my-lg-0">
                                        <input class="form-control mr-sm-2" type="search" placeholder="Buscar"
                                               aria-label="Search"/>
                                        <button class="btn btn-outline-success my-2 my-sm-0" type="submit"><img src="./img/logosearch.png" height="25" width="25"/></button>
                                    </form>
                                </div>
                            </nav>
                        </section>
                    </header>
                <section class="regiones">

                <div class="row">
                    <xsl:apply-templates/>
                </div>

                </section>
                    <footer>
                        <div class="card text-center">
                            <div class="card-body">
                                <h6 class="card-title">©Iñaki Rios</h6>
                                <h6><p class="card-text">Para viajeros apasionados de viajeros apasionados</p></h6>
                            </div>
                            <div class="card-footer text-muted">
                                YouThink | Cuba
                            </div>
                        </div>
                    </footer>

                </div>
            </body>
        </html>
    </xsl:template>
    <xsl:template match="regiones">
        <xsl:for-each select="region">
            <div class="col-md-12">
                <h2>
                    <xsl:value-of select="titulo"/>
                </h2>
                <img width="400" height="256">
                    <xsl:attribute name="src">
                        <xsl:value-of select="img"/>
                    </xsl:attribute>
                </img>
                <div class="text col-md-10">
                    <p>
                        <xsl:value-of select="descripcion"/>
                    </p>
                </div>
            </div>
        </xsl:for-each>
    </xsl:template>
</xsl:stylesheet>