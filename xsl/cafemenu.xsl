<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">


    <xsl:template match="/">
     <html>
 <head>
                <link rel="stylesheet" href="/boostrap/css/bootstrap.min.css"></link>
                <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous"></link>
                <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
 </head>
<body>
<nav>
   <nav class="navbar navbar-expand-lg navbar-light bg-light text-white pb-4 pt-4">
            <a class="navbar-brand" href="#">Bryan's Cafe</a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
              <span class="navbar-toggler-icon"></span>
            </button>
          
            <div class="collapse navbar-collapse" id="navbarSupportedContent">
              <ul class="navbar-nav mr-auto">
                <li class="nav-item active">
                  <a class="nav-link text-info" href="../indext.html">About Us<span class="sr-only">(current)</span></a>
                </li>
                <li class="nav-item">
                  <a class="nav-link" href="/xml/cafemenu.xml">Menu</a>
                </li>
                <li class="nav-item dropdown">
                  <a class="nav-link dropdown-toggle text-info  " href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-expanded="false">
                   Something else Here
                  </a>
                  <div class="dropdown-menu text-white" aria-labelledby="navbarDropdown">
                    <a class="dropdown-item" href="#">Coffee accessories</a>
                    <a class="dropdown-item" href="#">Specialty Bean</a>
                    <div class="dropdown-divider"></div>
                    <a class="dropdown-item" href="#">Merchandise</a>
                  </div>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">Contact</a>
                </li>
              </ul>
              <form class="form-inline my-2 my-lg-0">
                <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search"></input>
                <button class="btn btn-outline-dark my-2 my-sm-0" type="submit">Search</button>
              </form>
            </div>
          </nav>
</nav>
<main>
            <h1 class="text-center pb-4 pt-4">Bryan'Cafe Menu</h1>
            <div class="row row-cols-1 row-cols-sm-4 g-4">
            <xsl:for-each select="cafemenu/item">
            <div class="col">
                <div class="card h-100">
                <img src="{pic}" class="card-img-top" height="250px" width="250px" alt="{name}"></img>
                <div class="card-body text-center">
                    <h5 class="card-title"><xsl:value-of select="name"/></h5>
                    <p class="card-text"><xsl:value-of select="price"/></p>
                    <p class="card-text"><xsl:value-of select="description"/></p>
                </div>
                </div>
            </div>
            </xsl:for-each>
            </div>
 </main>
 <br/>
 <br/>
<footer>
<p>&#xA9;<script>document.writr(new Date().getFullYear())</script> Bryan's Cafe
<a href="../privacy.html">Privacy Policy</a></p>
</footer>
 <script src="/boostrap/js/jquery.min.js"></script>
<script src="/boostrap/js/bootstrap.min.js"></script>
</body>
</html>
</xsl:template>
</xsl:stylesheet>