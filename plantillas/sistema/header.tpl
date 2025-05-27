<!-- 
         _____   _____    ___
       /   _  | /  __  \ |
       |  | |_| | |  | | |
       |  |  __ | |  | | |
       |  |_| | | |__| | |
        \_____/  \_____/ |
-->
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>{$page_title|escape}</title>
    <!-- favicons -->
    <link rel="apple-touch-icon" sizes="180x180" href="favicon/apple-touch-icon.png">
    <link rel="icon" type="image/png" sizes="32x32" href="favicon/favicon-32x32.png">
    <link rel="icon" type="image/png" sizes="16x16" href="favicon/favicon-16x16.png">
    <link rel="manifest" href="favicon/site.webmanifest">
    <link rel="manifest" href="favicon/site.webmanifest">
    <meta name="description" content="{$page_description|escape}">

    <!-- fonts -->
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Handlee&family=Inter:wght@100;200;300;400;500;600;700;800;900&display=swap" rel="stylesheet">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Tuffy:ital,wght@0,400;0,700;1,400;1,700&display=swap" rel="stylesheet">
    <script src="https://kit.fontawesome.com/317a94351b.js" crossorigin="anonymous"></script>


    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="css/fontawesome-all.min.css">
    <link rel="stylesheet" href="css/swiper.min.css">
    <link rel="stylesheet" href="css/animate.min.css">
    <link rel="stylesheet" href="css/odometer.min.css">
    <link rel="stylesheet" href="css/jarallax.css">
    <link rel="stylesheet" href="css/magnific-popup.css">
    <link rel="stylesheet" href="css/bootstrap-select.min.css">
    <link rel="stylesheet" href="css/agrikon-icons.css">
    <link rel="stylesheet" href="css/nouislider.min.css">
    <link rel="stylesheet" href="css/nouislider.pips.css">
    <link rel="stylesheet" href="css/main.css">
</head>
<body>
    <div class="preloader">
        <img class="preloader__image" width="100" src="img/loader.png" alt="">
    </div>
    <div class="page-wrapper">
      <header class="main-header">
        <div class="topbar">
            <div class="container">
                <div class="topbar__left">
                    <div class="topbar__social">
                        <a href="#" class="fab fa-facebook-square"></a>
                        <a href="#" class="fab fa-instagram"></a>
                    </div>
                    <p>¡Síguenos en nuestras redes sociales!</p>
                </div>
                <div class="topbar__right">
                    <a href="#"><i class="agrikon-icon-email"></i>contacto@cuanticoagro.com</a>
                    <a href="#"><i class="agrikon-icon-clock"></i>Lun - Vie 7:00 AM - 5:00 PM | Sab 8:00 AM - 2:00 PM</a>
                </div>
            </div>
        </div>
        <nav class="main-menu">
            <div class="container">
                <div class="logo-box">
                    <a href="./" aria-label="logo image"><img src="img/loco_cuantico.png" width="235" alt=""></a>
                    <span class="fa fa-bars mobile-nav__toggler"></span>
                </div>
                <ul class="main-menu__list">
                  <li class="{if $opcion == 'home'}current{/if}">
                      <a href="./">Home</a>
                  </li>
                  <li class="{if $opcion == 'nosotros'}current{/if}">
                      <a href="./nosotros">Nosotros</a>
                  </li>
                  <li class="dropdown {if $opcion == 'tuna' || $opcion == 'nopal' || $opcion == 'papa' || $opcion == 'jitomate'}current{/if}">
                      <a href="#">Agroquímicos</a>
                      <ul>
                          <li><a href="./tuna">Para tuna</a></li>
                          <li><a href="./nopal">Para nopal</a></li>
                          <li><a href="./papa">Para papa</a></li>
                          <li><a href="./jitomate">Para jitomate</a></li>
                      </ul>
                  </li>
                </ul>

                <div class="main-header__info">
                    <!-- <a href="#" class="search-toggler main-header__search-btn"><i class="agrikon-icon-magnifying-glass"></i></a>
                    <a class="main-header__cart-btn" href="#"><i class="agrikon-icon-shopping-cart"></i></a> -->
                    <a href="tel:92-666-888-0000" class="main-header__info-phone">
                        <i class="agrikon-icon-phone-call"></i>
                        <span class="main-header__info-phone-content">
                            <span class="main-header__info-phone-text">Llámanos</span>
                            <span class="main-header__info-phone-title">55 1234 5678</span>
                        </span>
                    </a>
                </div>
            </div>
        </nav>
    </header>