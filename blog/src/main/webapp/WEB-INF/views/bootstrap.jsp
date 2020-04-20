<html lang="en"><head><meta charset="UTF-8">
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <script src="Reproductor.js"></script>
    <style>
    body {
      background-image: url("Imagenes/fondo9.jpeg");
    }
    div {
        margin-top: 2px;
        margin-right:0px;
        margin-left:0px;
        margin-bottom:25px;
    }
    * {
        padding:0;
        margin:0;
        -webkit-box-sizing: border-box;
        -moz-box-sizing: border-box;
        box-sizing: border-box;
    }
    .menu_bar {
        display:none;
    }

    header {
        width: 100%;
    }

    header nav {
        background-color: #3B791E;
        z-index:1000;
        max-width: 1000px;
        width:95%;
        margin:20px auto;
    }

    header nav ul {
        list-style:none;
    }

    header nav ul li {
        display:inline-block;
        position: relative;
    }

    header nav ul li:hover {
        background: #8BF559;
    }

    header nav ul li a {
        color:#fff;
        display:block;
        text-decoration:none;
        padding: 20px;
    }

    header nav ul li a span {
        margin-right:10px;
    }

    header nav ul li:hover .children {
        display:block;
    }

    header nav ul li .children {
        display: none;
        background:#3B791E;
        position: absolute;
        width: 150%;
        z-index:1000;
    }

    header nav ul li .children li {
        display:block;
        overflow: hidden;
        border-bottom: 1px solid rgba(255,255,255,.5);
    }

    header nav ul li .children li a {
        display: block;
    }

    header nav ul li .children li a span {
        float: right;
        position: relative;
        top:3px;
        margin-right:0;
        margin-left:10px;
    }

    header nav ul li .caret {
        position: relative;
        top:3px;
        margin-left:10px;
        margin-right:0px;
    }

    @media screen and (max-width: 800px) {
        body {
            padding-top:80px;
        }

        .menu_bar {
            display:block;
            width:100%;
            position: fixed;
            top:0;
            background: #8BF559;
        }

        .menu_bar .bt-menu {
            display: block;
            padding: 20px;
            color: #fff;
            overflow: hidden;
            font-size: 25px;
            font-weight: bold;
            text-decoration: none;
        }

        .menu_bar span {
            float: right;
            font-size: 40px;
        }

        header nav {
            width: 80%;
            height: calc(100% - 80px);
            position: fixed;
            right:100%;
            margin: 0;
            overflow: scroll;
        }

        header nav ul li {
            display: block;
            border-bottom:1px solid rgba(255,255,255,.5);
        }

        header nav ul li a {
            display: block;
        }

        header nav ul li:hover .children {
            display: none;
        }

        header nav ul li .children {
            width: 100%;
            position: relative;
        }

        header nav ul li .children li a {
            margin-left:20px;
        }

        header nav ul li .caret {
            float: right;
        }
    }
    nav li a:hover, nav li a.current { /* aplicamos esta regla para el :hover y para la clase current */
        color: blue;   /* cambiamos el color de la fuente a amarillo */
        background-color:#8BF559;
    }
    #reproductor{
        width: 820px;
        margin: 20px auto;
        padding: 5px;
        background: #8BF559;
        border: 1px solid #8BF559;
        -moz-border-radius:5px;
        -webkit-border-radius:5px;
        border-radius: 5px;
    }
    #botones{
        float: left;
        width: 100px;
        height: 15px;
    }
    #barra{
        position: relative;
        float:left;
        width: 700px;
        height: 8px;
        padding: 2px;
        background:gray;
        border: 1px solid gray;
    }
    #progreso{
        position: absolute;
        width: 0px;
        height: 8px;
        background: black;
    }
    #reproducir{
        height: 20px;
    }
    h1{
        font-family: 'Lucida Sans', 'Lucida Sans Regular', 'Lucida Grande', 'Lucida Sans Unicode', Geneva, Verdana, sans-serif;
        color: darkgreen;
        font-size: 1cm;
    }
    h2{
        font-family: 'Times New Roman', Times, serif;
        color: black;
    }
    h3{
      font-family: 'Times New Roman', Times, serif;
      color: black;
      font-size: medium;
    }
    p{
        font-family: 'Yrsa', serif;
        color: black;
    }
    Footer{
        Clear: both;
        background-color:white;
    }
    .carousel-control-prev-icon, .carousel-control-next-icon {
        height: 100px;
        width: 100px;
        outline: black;
        background-color: rgba(0, 0, 0, 0.3);
        background-size: 100%, 100%;
        border-radius: 50%;
        border: 1px solid black;
    }
    #map{
                margin: 20px;
            }
    </style>
        <script src="/js/bootstrap.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
        <script src="/js/bootstrap.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
        <script src="/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
        </head><body><header>
          <center>
        <div class="menu_bar">
            <a href="#" class="bt-menu">Menú</a>
        </div>
        <img src="Imagenes/Logo.png" width="150">
        <nav>
            <ul>
                <li><a href="Inicio.html" class="current">Inicio</a></li>
                <li><a href="Conocenos.html">Conocenos</a></li>
                <li class="submenu">
                    <a href="Tienda.html">Tienda</a>
                    <ul class="children">
                        <li><a href="Rostro.html">Rostro</a></li>
                        <li><a href="Cuerpo.html">Cuerpo</a></li>
                        <li><a href="Manos.html">Manos</a></li>
                    </ul>
                </li>
                <li><a href="Contacto.html">Contacto</a></li>
            </ul>
        </nav>
      </center>
    </header>

        <section id="reproductor">
            <video id="medio" width="820" height="500">
                <source src="VideoDermaLive.mp4" type="video/mp4">
            </video>
            <nav>
                <div id="botones">
                    <button type="button" id="reproducir">Reproducir</button>
                </div>
                <div id="barra">
                    <div id="progreso"></div>
                </div>
                <div style="clear: both"></div>
            </nav>
        </section>
      <br>
          <h1>Productos más vendidos</h1>
    <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
            <ol class="carousel-indicators">
              <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
              <li data-target="#carouselExampleIndicators" data-slide-to="1" class=""></li>
              <li data-target="#carouselExampleIndicators" data-slide-to="2" class=""></li>
              <li data-target="#carouselExampleIndicators" data-slide-to="3" class=""></li>
            </ol>
            <div class="carousel-inner" align="center">
              <div class="carousel-item active">
                <img src="Imagenes/Producto1.png" class="d-block w-10">
                <h2>Skin Detox</h2>
              </div>
              <div class="carousel-item" align="center">
                <img src="Imagenes/Producto2.png" class="d-block w-10">
                <h2>Hydro Boost</h2>
              </div>
              <div class="carousel-item" align="center">
                <img src="Imagenes/Producto3.png" class="d-block w-30">
                <h2>Clearing</h2>
              </div>
              <div class="carousel-item" align="center">
                    <img src="Imagenes/Producto4.png" class="d-block w-30">
                    <h2>Mascarillas faciales</h2>
                  </div>
            </div>
            <a class="carousel-control-prev" href="#carousel" role="button" data-slide="prev">
              <span class="carousel-control-prev-icon" aria-hidden="true"></span>
              <span class="sr-only">Previous</span>
            </a>
            <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
              <span class="carousel-control-next-icon" aria-hidden="true"></span>
              <span class="sr-only">Next</span>
            </a>
          </div>
    <center>
        <img src="Imagenes/Recomendaciones.jpeg" width="900">
    </center>
    <br>


    <footer>
      <h3> Dermalive 2019 </h3>
    </footer></body></html>