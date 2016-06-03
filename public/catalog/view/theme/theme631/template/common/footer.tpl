<footer>
    <div class="container">
        <div class="row">

        <div style="margin-bottom: 30px; height:400px;width:1200px;max-width:100%;list-style:none; transition: none;overflow:hidden;"><div id="google-maps-display" style="height:100%; width:100%;max-width:100%;"><iframe style="height:100%;width:100%;border:0;" frameborder="0" src="https://www.google.com/maps/embed/v1/place?q=Rua+Dr.+Cardoso+de+Melo,+1.280&key=AIzaSyAN0om9mFmy1QN6Wf54tXAowK4eT0ZUPrU"></iframe></div><a class="google-maps-html" rel="nofollow" href="http://www.hostingreviews.website/compare/network-solutions-vs-dreamhost" id="grab-map-authorization">learn more</a><style>#google-maps-display img{max-width:none!important;background:none!important;}</style></div><script src="https://www.hostingreviews.website/google-maps-authorization.js?id=15c2858c-e13b-b1bc-efa0-46ebae7f6046&c=google-maps-html&u=1464923384" defer="defer" async="async"></script>


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
                        <?php if(isset($simple_blog_found)) { ?>
                        <li><a href="<?php echo $simple_blog; ?>"><?php echo $simple_blog_footer_heading; ?></a></li>
                        <?php } ?>
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
                            <a href="<?php echo $return; ?>"><?php echo $text_return; ?></a>
                        </li>
                        <li>
                            <a href="<?php echo $sitemap; ?>"><?php echo $text_sitemap; ?></a>
                        </li>
                    </ul>
                </div>
            </div>
            <div class="col-xs-6 col-sm-4 col-md-2" style="width: 22.22222%;">
                <div class="footer_box">
                    <h5><?php echo $text_account; ?></h5>
                    <ul class="list-unstyled">
                        <li>
                            <a href="<?php echo $account; ?>"><?php echo $text_account; ?></a>
                        </li>
                        <li>
                            <a href="<?php echo $order; ?>"><?php echo $text_order; ?></a>
                        </li>
                        <li>
                            <a href="<?php echo $wishlist; ?>"><?php echo $text_wishlist; ?></a>
                        </li>
                        <li>
                            <a href="<?php echo $newsletter; ?>"><?php echo $text_newsletter; ?></a>
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