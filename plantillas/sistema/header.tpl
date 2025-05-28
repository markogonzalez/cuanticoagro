<!-- 
         _____   _____    _____    _____    ____  __    __   _____   __   __
       /   _  | /  __  \ |  __  \ |  ___|  / _  | \ \__/ /  / __  \ |  |  |  |
       |  | |_| | |  | | | |  | | | |_    / |_| |  \    /  | |  | | |  |  |  |
       |  |  __ | |  | | | |  | | |  _|  |___   |   |  |   | |  | | |  |  |  |
       |  |_| | | |__| | | |__| | | |___     |  |   |  |   | |__| | |  |__|  |
        \_____/  \_____/ |______/ |_____|    |__|   |__|    \_____/  \______/
                                                                                    -->
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>{$page_title|escape}</title>
    <!-- favicons -->
    <link rel="apple-touch-icon" sizes="180x180" href="{$base_url}favicon/apple-touch-icon.png">
    <link rel="icon" type="image/png" sizes="32x32" href="{$base_url}favicon/favicon-32x32.png">
    <link rel="icon" type="image/png" sizes="16x16" href="{$base_url}favicon/favicon-16x16.png">
    <link rel="manifest" href="{$base_url}favicon/site.webmanifest">
    <link rel="manifest" href="{$base_url}favicon/site.webmanifest">
    <meta name="description" content="{$page_description|escape}">

    <!-- fonts -->
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Handlee&family=Inter:wght@100;200;300;400;500;600;700;800;900&display=swap" rel="stylesheet">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Tuffy:ital,wght@0,400;0,700;1,400;1,700&display=swap" rel="stylesheet">
    <script src="https://kit.fontawesome.com/317a94351b.js" crossorigin="anonymous"></script>


    <link rel="stylesheet" href="{$base_url}css/bootstrap.min.css">
    <link rel="stylesheet" href="{$base_url}css/fontawesome-all.min.css">
    <link rel="stylesheet" href="{$base_url}css/swiper.min.css">
    <link rel="stylesheet" href="{$base_url}css/animate.min.css">
    <link rel="stylesheet" href="{$base_url}css/odometer.min.css">
    <link rel="stylesheet" href="{$base_url}css/jarallax.css">
    <link rel="stylesheet" href="{$base_url}css/magnific-popup.css">
    <link rel="stylesheet" href="{$base_url}css/bootstrap-select.min.css">
    <link rel="stylesheet" href="{$base_url}css/agrikon-icons.css">
    <link rel="stylesheet" href="{$base_url}css/nouislider.min.css">
    <link rel="stylesheet" href="{$base_url}css/nouislider.pips.css">
    <link rel="stylesheet" href="{$base_url}css/main.css">

    <script src="https://code.jquery.com/jquery-3.7.1.min.js" integrity="sha256-/JqT3SQfawRcv/BIHPThkBvs0OEvtFFmqPF/lYI/Cxo=" crossorigin="anonymous"></script>
	  <script src="https://cdn.jsdelivr.net/npm/jquery-validation@1.19.5/dist/jquery.validate.js" crossorigin="anonymous"></script>

	  <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
	  <script type="text/javascript" src="{$base_url}js/base/funciones_comunes.js?v={time()}"></script>
    <script type="text/javascript" src="{$base_url}js/base/{$opcion}.js?v={time()}"></script>
</head>
<body>
    <div class="preloader">
        <img class="preloader__image" width="100" src="{$base_url}img/loader.png" alt="">
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
                    <a href="mailto:comunicacioncuantico@gmail.com"><i class="agrikon-icon-email"></i>comunicacioncuantico@gmail.com</a>
                    <a href="#"><i class="agrikon-icon-clock"></i>Lun - Vie 7:00 AM - 5:00 PM | Sab 8:00 AM - 2:00 PM</a>
                </div>
            </div>
        </div>
        <nav class="main-menu">
            <div class="container">
                <div class="logo-box">
                    <a href="./" aria-label="logo image"><img src="{$base_url}img/loco_cuantico.png" width="235" alt=""></a>
                    <span class="fa fa-bars mobile-nav__toggler"></span>
                </div>
                <ul class="main-menu__list">
                  <li class="{if $opcion == 'home'}current{/if}">
                      <a href="{$base_url}">Home</a>
                  </li>
                  <li class="{if $opcion == 'nosotros'}current{/if}">
                      <a href="{$base_url}nosotros">Nosotros</a>
                  </li>
                  <li class="dropdown {if $opcion == 'agroquimicos'}current{/if}">
                      <a href="#">Agroquímicos</a>
                      <ul>
                          <li><a href="{$base_url}/agroquimicos/tuna">Para tuna</a></li>
                          <li><a href="{$base_url}/agroquimicos/nopal">Para nopal</a></li>
                          <li><a href="{$base_url}/agroquimicos/papa">Para papa</a></li>
                          <li><a href="{$base_url}/agroquimicos/jitomate">Para jitomate</a></li>
                      </ul>
                  </li>
                </ul>

                <div class="main-header__info">
                    <!-- <a href="#" class="search-toggler main-header__search-btn"><i class="agrikon-icon-magnifying-glass"></i></a>
                    <a class="main-header__cart-btn" href="#"><i class="agrikon-icon-shopping-cart"></i></a> -->
                    <a href="tel:52 55 6602 2130" class="main-header__info-phone">
                        <i class="agrikon-icon-phone-call"></i>
                        <span class="main-header__info-phone-content">
                            <span class="main-header__info-phone-text">Llámanos</span>
                            <span class="main-header__info-phone-title">+52 55 6602 2130</span>
                        </span>
                    </a>
                </div>
            </div>
        </nav>
    </header>
    <div class="stricky-header stricked-menu main-menu">
      <div class="sticky-header__content"></div><!-- /.sticky-header__content -->
    </div><!-- /.stricky-header -->