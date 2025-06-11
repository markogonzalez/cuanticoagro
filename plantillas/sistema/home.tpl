<section class="main-slider">
    {literal}
    <div class="swiper-container thm-swiper__slider" data-swiper-options='{
        "slidesPerView": 1,
        "loop": true,
        "effect": "fade",
        "autoplay": {
            "delay": 5000
        },
        "navigation": {
            "nextEl": "#main-slider__swiper-button-next",
            "prevEl": "#main-slider__swiper-button-prev"
                }
        }'>
        {/literal}
        <div class="swiper-wrapper">
            <div class="swiper-slide">
                <div class="image-layer" style="background-image: linear-gradient(rgba(0,0,0,0.5), rgba(0,0,0,0.5)), url({$base_url}img/slide1_.png);"></div>
                <div class="container">
                    <div class="row">
                        <div class="col-xl-7 col-lg-7">
                            <span class="tagline">Agroinsumos especializados y asesoría técnica para cultivos clave de México</span>
                            <p>En Cuántico Agroservicios Integrales proveemos soluciones integrales (insumos, tecnología y acompañamiento) para cultivos como tuna, nopal, jitomate y papa. Combate plagas como la grana cochinilla, mejora tu rendimiento y protege tu inversión con nuestros fungicidas, insecticidas y fertilizantes de alto desempeño, somos la tienda de agroinsumos más relevante de la región.</p>
                            <a href="#" class=" thm-btn">Conoce nuestros producto</a>
                        </div>
                    </div>
                </div>
            </div>
            <div class="swiper-slide">
                <div class="image-layer" style="background-image: linear-gradient(rgba(0,0,0,0.5), rgba(0,0,0,0.5)), url({$base_url}img/slide4.jpeg);"></div>
                <div class="container">
                    <div class="row">
                        <div class="col-xl-7 col-lg-7">
                            <span class="tagline">Tecnología probada en condiciones mexicanas</span>
                            <p>Portafolio basado en investigación para combatir plagas complejas (grana, mal de oro) y estrés climático.</p>
                            <a href="#" class=" thm-btn">Soluciones para tuna</a>
                        </div>
                    </div>
                </div>
            </div>
            <div class="swiper-slide">
                <div class="image-layer" style="background-image: linear-gradient(rgba(0,0,0,0.5), rgba(0,0,0,0.5)), url({$base_url}img/slide3.jpg);"></div>
                <div class="container">
                    <div class="row">
                        <div class="col-xl-7 col-lg-7">
                            <span class="tagline">Asesoría técnica sin costo en tu parcela</span>
                            <p>Diagnóstico preciso + plan personalizado de agroinsumos para tu cultivo. Operamos en Edomex, Puebla, Veracruz y más.</p>
                            <a href="#" class="thm-btn">Agenda tu visita</a>
                        </div>
                    </div>
                </div>
            </div>
            <div class="swiper-slide">
                <div class="image-layer" style="background-image: linear-gradient(rgba(0,0,0,0.5), rgba(0,0,0,0.5)), url({$base_url}img/slide4.jpg);"></div>
                <div class="container">
                    <div class="row">
                        <div class="col-xl-7 col-lg-7">
                            <span class="tagline">Insumos en tu puerta en 24/48 horas</span>
                            <p>Surtimiento a domicilio enzonas aledañas. Precios competitivos y garantía de calidad.</p>
                            <a href="#" class=" thm-btn">Cotiza hoy</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div class="main-slider__nav">
            <div class="swiper-button-prev" id="main-slider__swiper-button-next"><i class="agrikon-icon-left-arrow"></i>
            </div>
            <div class="swiper-button-next" id="main-slider__swiper-button-prev"><i class="agrikon-icon-right-arrow"></i></div>
        </div>

    </div>
</section>

<section class="about-one">
    <img src="{$base_url}images/icons/about-bg-icon-1-1.png" class="about-one__bg-shape-1" alt="">
    <div class="container">
        <div class="row">
            <div class="col-lg-5">
                <div class="about-one__images">
                    <img src="{$base_url}img/elegirnos1.jpeg" style="width: 100%;" alt="">
                    <img src="{$base_url}img/elegirnos2.png" style="width: 100%;" alt="">
                </div>
            </div>
            <div class="col-lg-7">
                <div class="about-one__content">
                    <div class="block-title text-left">
                        <h3>¿POR QUÉ ELEGIRNOS?</h3>
                    </div>
                    <div class="about-one__summery">
                        <ul class="list-unstyled feature-one__check-list">
                            <li>
                                <i class="fa-solid fa-microscope"></i>
                                <p class="descripcion"><strong>Innovación Accesible</strong><br><span>Llevamos tecnología de punta de agroinsumos a pequeños y medianos agricultores, con precios justos y resultados comprobados en tuna y nopal.</span></p>
                            </li>
                            <li>
                                <i class="fa-solid fa-chart-line"></i>
                                <p class="descripcion"><strong>Honestidad en Resultados</strong><br><span>No vendemos productos, resolvemos problemas. Te decimos exactamente qué esperar y cómo aplicarlo.</span></p>
                            </li>
                            <li>
                                <i class="fa-solid fa-handshake-simple"></i>
                                <p class="descripcion"><strong>Empatía en el Campo</strong><br><span>Hablamos tu lenguaje. Visitas personalizadas, recomendaciones sin conflicto de interés y respeto por tu tierra.</span></p>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>

<section class="service-two">
    <div class="service-two__bottom-curv"></div><!-- /.service-two__bottom-curv -->
    <div class="container">
        <div class="block-title text-center">
            <p>Especialistas en los cultivos que alimentan México a través de agroinsumos especializados</p>
            <h3>SOLUCIONES POR CULTIVO</h3>
        </div><!-- /.block-title -->
        <div class="row">
            <div class="col-sm-12 col-md-6 col-lg-3">
                <a href="{$base_url}/agroquimicos/tuna">
                    <div class="service-two__card">
                        <div class="service-two__card-image">
                            <img src="{$base_url}img/tuna.png" alt="">
                        </div>
                        <div class="service-two__card-content">
                            <div class="service-two__card-icon">
                                <i class="agrikon-icon-organic-food"></i>
                            </div>
                            <h3>TUNA</h3>
                            <p>Paquetes integrados contra grana y sequía</p>
                        </div>
                    </div>
                </a>
            </div>
            <div class="col-sm-12 col-md-6 col-lg-3">
                <a href="{$base_url}/agroquimicos/nopal">
                    <div class="service-two__card">
                        <div class="service-two__card-image">
                            <img src="{$base_url}images/services/service-2-2.jpg" alt="">
                        </div>
                        <div class="service-two__card-content">
                            <div class="service-two__card-icon">
                                <i class="agrikon-icon-vegetable"></i>
                            </div>
                            <h3>NOPAL</h3>
                            <p>Fertilización balanceada para mayor rendimiento</p>
                        </div>
                    </div>
                </a>
            </div>
            <div class="col-sm-12 col-md-6 col-lg-3">
                <a href="{$base_url}/agroquimicos/jitomate">
                    <div class="service-two__card">
                        <div class="service-two__card-image">
                            <img src="{$base_url}images/services/service-2-3.jpg" alt="">
                        </div>
                        <div class="service-two__card-content">
                            <div class="service-two__card-icon">
                                <i class="agrikon-icon-organic-food"></i>
                            </div>
                            <h3>JITOMATE</h3>
                            <p>Manejo integrado de mosca blanca</p>
                        </div>
                    </div>
                </a>
            </div>
            <div class="col-sm-12 col-md-6 col-lg-3">
                <a href="{$base_url}/agroquimicos/papa">
                    <div class="service-two__card">
                        <div class="service-two__card-image">
                            <img src="{$base_url}img/papa.png" alt="">
                        </div>
                        <div class="service-two__card-content">
                            <div class="service-two__card-icon">
                                <i class="agrikon-icon-vegetable"></i>
                            </div>
                            <h3>PAPA</h3>
                            <p>Control preventivo de tizón tardío</p>
                        </div>
                    </div>
                </a>
            </div>
            <div class="col-md-12 mt-20 text-center">
                <a href="#" class="thm-btn btn-azul">¿No ves tu cultivo? Cuéntanos tu necesidad </a>
            </div>
        </div>
    </div>
</section>

<section class="call-to-action__three jarallax" data-jarallax data-speed="0.3" data-imgPosition="50% 50%">
    <img class="call-to-action__three__bg jarallax-img" src="{ruta_relativa}img/cta-2-bg-1.jpg" alt="parallax-image" />
    <div class="container">
        <div class="row">
            <div class="col-lg-5 wow fadeInLeft" data-wow-duration="1500ms">
                <div class="call-to-action__three-image">
                    <img src="{$base_url}images/resources/cta-3-1.jpg" alt="">
                    <img src="{$base_url}images/resources/cta-3-2.jpg" alt="">
                </div>
            </div>
            <div class="col-lg-7">
                <div class="call-to-action__three-content">
                    <h3>COBERTURA</h3>
                    <p>Atendemos Edomex, Puebla, Veracruz, Michoacán y CDMX con entregas exprés. ¿Eres de otra zona? Pregunta por envíos especiales.</p>
                    <a href="#" class="thm-btn btn-azul-back"><i class="fa-solid fa-truck"></i> Envío especial</a>
                </div>
            </div>
        </div>
    </div>
</section>

<section class="testimonials-one">
    <img src="{$base_url}images/icons/testimonials-bg-1-1.png" class="testimonials-one__bg" alt="">
    <div class="container">
        <h2 class="testimonials-one__title">CASO DE ÉXITO</h2>
        <div id="testimonials-one__carousel" class="testimonials-one__carousel swiper-container">
            <div class="swiper-wrapper">
                <div class="swiper-slide">
                    <div class="testimonials-one__icons">
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                    </div>
                    <p>Con Cuántico reduje un 70% la grana en mi tuna y aumenté 18% la producción. ¡Su asesoría vale oro!</p>
                </div>
            </div>
        </div>

        <div id="testimonials-one__thumb" class="swiper-container">
            <div class="swiper-wrapper">
                <div class="swiper-slide">
                    <div class="testimonials-one__image">
                        <img src="{$base_url}images/resources/testimonials-1-1.jpg" alt="">
                    </div>
                </div>
            </div>
        </div>

        <div id="testimonials-one__meta" class="testimonials-one__carousel swiper-container">
            <div class="swiper-wrapper">
                <div class="swiper-slide">
                    <div class="testimonials-one__meta">
                        <h4>Adrián Martínez</h4>
                        <span>Ejido Otumba</span>
                    </div>
                </div>
            </div>
        </div>
        <div class="swiper-pagination" id="testimonials-one__swiper-pagination"></div>
    </div>
</section>

{include file="formulario.tpl"}
