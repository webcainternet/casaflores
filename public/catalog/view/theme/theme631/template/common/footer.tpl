<div class="clear"></div>

<style type="text/css">
    .dvnews {
        float: left;
        width: 54%;
        color: #FFF;
        text-transform: uppercase;
        font-size: 20px;
        text-align: right;
        padding: 34px 25px 0px 0px;
    }
    .dvnews2 {
        float: left;
        width: 46%;
        color: #FFF;
        text-transform: uppercase;
        font-weight: bold;
        font-size: 20px;
        padding: 26px 25px 0px 0px;
    }
</style>


</section>

<script type="text/javascript">
  function emailadd() {
    //Get
    var bla = $('#email').val();

    if (bla == '') {
        alert('Digite o email');
        document.getElementById('email').focus();
    } else {
        $.ajax({url: "/emailadd.php?email="+bla, success: function(result){
            //$("#newsajax").append(result);
            //alert(result);
            alert(result);
            $('#email').val('');
        }});
    }
    
  }
</script>

<div id="banner2B" class="banners" style="margin: auto;">
    <div class="Dia dos Namorados">
        <div class="banner-box">
            <div style="width: 100%; margin: auto; margin-top: 30px;">
    <div style="background-color: #EFAB49; height: 90px;">
    
    <div class="dvnews">Receba as novidades e promoções da Casaflores</div>
    <div class="dvnews2">
        <input type="text" name="email" id="email" placeholder="Digite seu email" style="width: 330px; height: 38px; float: left;">
        <input type="button" value="ENVIAR" onclick="javascript: emailadd();" style="border: 0px; height: 38px; background-color: rgb(50, 42, 32); padding: 5px 20px; margin-left: 7px; font-size: 15px;">
    </div>


    </div>
</div>


        
            <div style="height:400px;width:100%;max-width:100%;list-style:none; transition: none;overflow:hidden;"><div id="google-maps-display" style="height:100%; width:100%;max-width:100%;"><iframe style="height:100%;width:100%;border:0;" frameborder="0" src="https://www.google.com/maps/embed/v1/place?q=Rua+Dr.+Cardoso+de+Melo,+1.280&key=AIzaSyAN0om9mFmy1QN6Wf54tXAowK4eT0ZUPrU"></iframe></div><a class="google-maps-html" rel="nofollow" href="http://www.hostingreviews.website/compare/network-solutions-vs-dreamhost" id="grab-map-authorization">learn more</a><style>#google-maps-display img{max-width:none!important;background:none!important;}</style></div><script src="https://www.hostingreviews.website/google-maps-authorization.js?id=15c2858c-e13b-b1bc-efa0-46ebae7f6046&c=google-maps-html&u=1464923384" defer="defer" async="async"></script>

        </div>
    </div>
</div>




<footer style="padding-top: 30px;">
    <div class="container">
        <div class="row">

        

            <div class="col-xs-6 col-sm-4 col-md-2" style="width: 22.22222%;">
                <?php if ($informations) { ?>
                <div class="footer_box">
                    <h5><?php echo $text_information; ?></h5>
                    <ul class="list-unstyled">
                        <?php foreach ($informations as $information) { ?>
                        <li>
                            <a href="<?php echo $information['href']; ?>"><?php echo $information['title']; ?></a>
                        </li>
                        <?php } ?>
                        <?php /* if(isset($simple_blog_found)) { ?>
                        <li><a href="<?php echo $simple_blog; ?>"><?php echo $simple_blog_footer_heading; ?></a></li>
                        <?php } */ ?>
                    </ul>
                </div>
                <?php } ?>
            </div>
            <div class="col-xs-6 col-sm-4 col-md-2" style="width: 22.22222%;">
                <div class="footer_box">
                    <h5>Atendimento</h5>
                    <ul class="list-unstyled">
                        <li>
                            <a href="<?php echo $contact; ?>"><?php echo $text_contact; ?></a>
                        </li>
                        <li>
                            <a href="<?php echo $sitemap; ?>"><?php echo $text_sitemap; ?></a>
                        </li>
                    </ul>
                </div>
            </div>
            <div class="col-xs-6 col-sm-4 col-md-2" style="width: 22.22222%;">
                <div class="footer_box">
                    <h5>Contato</h5>
                    <ul class="list-unstyled">
                        <li>
                            <a href="https://www.facebook.com/Casaflores2016">
                               <i class="fa fa-facebook-square" aria-hidden="true"></i> /casaflores2016
                            </a>
                        </li>

                        <li>
                            <a href="http://instagram.com/casaflores2016">
                               <i class="fa fa-instagram" aria-hidden="true"></i> /casaflores2016
                            </a>
                        </li>

        

                        <li>
                            <a href="#" id="home"
                               title="Home">
                               <i class="fa fa-phone"></i>
                               <span>(11) 3845-1157 / (11) 3805-1157</span></a>
                        </li>

                        <li>
                            <a href="/quem-somos" id="home"
                               title="Home">
                               <i class="fa fa-envelope"></i>
                               <span style="text-transform: lowercase;">casaflores@casaflores.com.br</span></a>
                        </li>
                    </ul>
                </div>
            </div>
            <?php if ($footer_top) { ?>
            <div class="col-xs-6 col-sm-4">
                <div class="footer">
                    <?php if ($maintenance == 0) { ?>
                    <?php echo $footer_top; ?>
                    <?php } ?>
                </div>
            </div>
            <?php } ?>
        </div>
        <div class="copyright">
            <?php echo $powered; ?><!-- [[%FOOTER_LINK]] -->
        </div>
    </div>
</footer>
<script src="catalog/view/theme/<?php echo $theme_path; ?>/js/livesearch.min.js" type="text/javascript"></script>
<script src="catalog/view/theme/<?php echo $theme_path; ?>/js/script.js" type="text/javascript"></script>
</div>

<div class="ajax-overlay"></div>

</body></html>