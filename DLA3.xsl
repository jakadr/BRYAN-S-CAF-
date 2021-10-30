<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">


    <xsl:template match="/">
     <html>
 <head>
                <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous"></link>
                <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
            </head>
<body>

            <h1 class="text-center">Pizza Menu</h1>
            <div class="row row-cols-1 row-cols-sm-4 g-4">
            <xsl:for-each select="pizzamenu/item">
            <div class="col">
                <div class="card h-100">
                <img src="{pic}" class="card-img-top" alt="{name}"></img>
                <div class="card-body text-center">
                    <h5 class="card-title"><xsl:value-of select="name"/></h5>
                    <p class="card-text"><xsl:value-of select="price"/></p>
                </div>
                </div>
            </div>
            </xsl:for-each>
            </div>
</body>
</html>
</xsl:template>
</xsl:stylesheet>