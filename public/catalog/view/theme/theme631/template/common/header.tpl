<!DOCTYPE html>
<!--[if IE]><![endif]-->
<!--[if IE 8 ]>
<html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>" class="ie8"><![endif]-->
<!--[if IE 9 ]>
<html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>" class="ie9"><![endif]-->
<!--[if (gt IE 9)|!(IE)]><!-->
<html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>">
<!--<![endif]-->
<head>
    <meta charset="UTF-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title><?php echo $title; ?></title>
    <base href="<?php echo $base; ?>"/>
    <?php if ($description) { ?>
        <meta name="description" content="<?php echo $description; ?>"/>
    <?php } ?>
    <?php if ($keywords) { ?>
        <meta name="keywords" content="<?php echo $keywords; ?>"/>
    <?php } ?>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <?php if ($icon) { ?>
        <link href="<?php echo $icon; ?>" rel="icon"/>
    <?php } ?>

    <script src="catalog/view/javascript/jquery/jquery-2.1.1.min.js" type="text/javascript"></script>
    <link href="catalog/view/javascript/bootstrap/css/bootstrap.min.css" rel="stylesheet" media="screen"/>
    <script src="catalog/view/javascript/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
    <script src="catalog/view/javascript/jquery/datetimepicker/moment.js" type="text/javascript"></script>
    <script src="catalog/view/javascript/jquery/datetimepicker/bootstrap-datetimepicker.min.js" type="text/javascript"></script>
    <link href="catalog/view/javascript/jquery/datetimepicker/bootstrap-datetimepicker.min.css" rel="stylesheet">

    <link href="catalog/view/javascript/jquery/owl-carousel/owl.carousel.css" rel="stylesheet">
    <link href="catalog/view/theme/<?php echo $theme_path; ?>/stylesheet/magnificent.css" rel="stylesheet">
    <link href="catalog/view/theme/<?php echo $theme_path; ?>/js/jquery.bxslider/jquery.bxslider.css" rel="stylesheet">
    <link href="catalog/view/theme/<?php echo $theme_path; ?>/stylesheet/photoswipe.css" rel="stylesheet">
    <link href="catalog/view/theme/<?php echo $theme_path; ?>/js/fancybox/jquery.fancybox.css" rel="stylesheet">
    <link href="catalog/view/theme/<?php echo $theme_path; ?>/stylesheet/material-design.css" rel="stylesheet">
    <link href="catalog/view/theme/<?php echo $theme_path; ?>/stylesheet/fl-36-slim-icons.css" rel="stylesheet">
    <link href="catalog/view/theme/<?php echo $theme_path; ?>/stylesheet/fl-bigmug-line.css" rel="stylesheet">
    <link href="catalog/view/theme/<?php echo $theme_path; ?>/stylesheet/arrows.css" rel="stylesheet">
    <?php foreach ($styles as $style) { ?>
        <link href="<?php echo $style['href']; ?>" type="text/css" rel="<?php echo $style['rel']; ?>"
              media="<?php echo $style['media']; ?>"/>
    <?php } ?>
    <script src="catalog/view/theme/<?php echo $theme_path; ?>/js/common.js" type="text/javascript"></script>
    <script src="catalog/view/javascript/jquery/owl-carousel/owl.carousel.min.js" type="text/javascript"></script>


    <!--custom script-->
    <?php foreach ($scripts as $script) { ?>
        <?php if (strcmp($script, 'catalog/view/javascript/jquery/owl-carousel/owl.carousel.min.js') != 0) { ?>
            <script src="<?php echo $script; ?>" type="text/javascript"></script>
        <?php } ?>
    <?php } ?>
    <script src="catalog/view/theme/<?php echo $theme_path; ?>/js/device.min.js" type="text/javascript"></script>
    <!--[if lt IE 9]>
    <div style=' clear: both; text-align:center; position: relative;'>
        <a href="http://windows.microsoft.com/en-us/internet-explorer/download-ie">
            <img src="catalog/view/theme/<?php echo $theme_path; ?>/image/warning_bar_0000_us.jpg" border="0" height="42" width="820"
                 alt="You are using an outdated browser. For a faster, safer browsing experience, upgrade for free today."/>
        </a>
    </div>
    <![endif]-->

    <!--Start of Zopim Live Chat Script-->
    <script type="text/javascript">
    window.$zopim||(function(d,s){var z=$zopim=function(c){z._.push(c)},$=z.s=
    d.createElement(s),e=d.getElementsByTagName(s)[0];z.set=function(o){z.set.
    _.push(o)};z._=[];z.set._=[];$.async=!0;$.setAttribute("charset","utf-8");
    $.src="//v2.zopim.com/?3xKk11iabAp8limr42l2wXLCSDOyKKeQ";z.t=+new Date;$.
    type="text/javascript";e.parentNode.insertBefore($,e)})(document,"script");
    </script>
    <!--End of Zopim Live Chat Script-->

    <?php echo $google_analytics; ?>
    <link href="catalog/view/theme/<?php echo $theme_path; ?>/stylesheet/stylesheet.css" rel="stylesheet">
</head>
<body class="<?php echo $class; ?>">
<p id="gl_path" class="hidden"><?php echo $theme_path; ?></p>
<div id="page">
    <header>
        <div class="header_wrap">
            <div class="bg-dark">
                <div class="container">
                    <div id="logo" class="logo">
                        <?php if ($logo) { ?>
                        <a href="<?php echo $home; ?>"><img src="<?php echo $logo; ?>" title="<?php echo $name; ?>" alt="<?php echo $name; ?>" class="img-responsive"/></a>
                        <?php } else { ?>
                        <h1>
                            <a href="<?php echo $home; ?>"><?php echo $name; ?></a>
                        </h1>
                        <?php } ?>
                    </div>


                    <?php /* <nav id="top-links" class="nav toggle-wrap">
                        <a class="toggle material-design-settings49" href='#'></a>
                        <ul class="toggle_cont">
                            <li>
                                <a href="/" id="home"
                                   title="Home">
                                   <!--                            <i class="material-design-favorite22"></i> -->
                                   <span>Home</span></a>
                            </li>

                            <li>
                                <a href="/quem-somos" id="home"
                                   title="Home">
                                   <!--                            <i class="material-design-favorite22"></i> -->
                                   <span>Quem Somos</span></a>
                            </li>
                        </ul>
                        </nav> */ ?>
                        <?php //echo $cart; ?>
                        <?php //echo $search; ?>

                    <nav id="top-links" class="nav toggle-wrap" style="float: right;">
                        <a class="toggle material-design-settings49" href='#'></a>
                        <ul class="toggle_cont">
                            <li>
                                <a href="/" id="home"
                                   title="Home">
                                   <i class="fa fa-phone"></i>
                                   <span>(11) 3845-1157</span></a>
                            </li>

                            <li>
                                <a href="/quem-somos" id="home"
                                   title="Home">
                                   <i class="fa fa-envelope"></i>
                                   <span style="text-transform: lowercase;">casaflores@casaflores.com.br</span></a>
                            </li>
                        </ul>
                        </nav>


                        <?php echo $currency; ?>
                        <?php echo $language; ?>
                    </div>
                </div>


                    

                    <div id="stuck" class="stuck-menu">
                        <?php if ($categories) { ?>
                        <div id="tm_menu" class="nav__primary">
                            <div class="container">
                                <?php if ($categories_tm) {
                                    echo $categories_tm;
                                } ?>
                                <div class="clear"></div>
                            </div>
                        </div>
                        <?php } ?>
                    </div>

                <?php if ($categories) { ?>
                <div class="container">
                    <div id="menu-gadget" class="menu-gadget" >
                        <?php if ($categories_tm) {
                            echo $categories_tm;
                        } ?>
                    </div>
                </div>
                <?php } ?>
            </div>
            
            <?php if ($maintenance == 0 && $class == 'common-home') { ?>
            <div class="header_modules"><?php echo $header_top; ?></div>
            <?php } ?>
        </header>



