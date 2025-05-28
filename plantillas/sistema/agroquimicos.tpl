<section class="page-header">
    <div class="page-header__bg" style="background-image: url({$base_url}images/backgrounds/page-header-bg-1-1.jpg);"></div>
    <div class="container">
        <ul class="thm-breadcrumb list-unstyled">
            <li><a href="./">Inicio</a></li>
            <li>/</li>
            <li><span>AGROQUÍMICOS</span></li>
        </ul>
        <h2>AGROQUÍMICOS PARA {$data[0]['item']}</h2>
        <p>{$data[0]['titulo']}</p>
        <p>{$data[0]['subtitulo']}</p>
    </div>
</section>

<section class="service-details">
    <div class="container">
        <div class="row">
            <div class="col-lg-4">
                <div class="service-sidebar">
                    <div class="service-sidebar__links">
                        <ul>
                            {foreach from=$agroquimicos item=row}
                                <li class="{if $item == $row.item}current{/if}">
                                    <a href="{$base_url}agroquimicos/{$row.item}">{$row.item}</a>
                                </li>
                            {/foreach}
                        </ul>
                    </div><!-- /.service-sidebar__links -->
                    <div class="service-sidebar__call">
                        <div class="service-sidebar__call-bg" style="background-image: url({$base_url}images/services/service-widget-bg-1.jpg);"></div>
                        <!-- /.service-sidebar__call-bg -->
                        <h3>We sell best
                            agriculture
                            products</h3>
                    </div><!-- /.service-sidebar__call -->
                </div><!-- /.service-sidebar -->
            </div><!-- /.col-lg-4 -->
            <div class="col-lg-8">
                <h3><strong>Plagas y Soluciones</strong></h3>
                <div class="row">
                    <div class="col-md-12">
                        <h4>Problema: {$data[0]['problema']}</h4>
                        <img src="{$base_url}img/{$data[0]['foto']}" alt="">
                        <ul class="service-details__list list-unstyled">
                            <li><strong>Síntomas:</strong> {$data[0]['sintomas']}</li>
                        </ul>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-6">
                        <img src="assets/images/services/service-d-1-2.jpg" alt="">
                    </div><!-- /.col-md-6 -->
                    <div class="col-md-6">
                        <h4>Solución</h4>
                        <ul class="list-unstyled service-details__list-2">
                            <li>
                                <i class="fa fa-check-circle"></i>
                                <strong>Producto recomendado:</strong> {$data[0]['producto']}
                            </li>
                            <li>
                                <i class="fa fa-check-circle"></i>
                                <strong>Dosis:</strong> {$data[0]['dosis']}
                            </li>
                            <li>
                                <i class="fa fa-check-circle"></i>
                                <strong>Beneficio:</strong> {$data[0]['beneficio']}
                            </li>
                        </ul><!-- /.list-unstyled -->
                    </div><!-- /.col-md-6 -->
                </div><!-- /.row -->
            </div><!-- /.col-lg-8 -->
        </div><!-- /.row -->
    </div><!-- /.container -->
</section><!-- /.service-details -->