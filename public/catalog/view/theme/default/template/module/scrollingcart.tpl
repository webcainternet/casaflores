<?php 
    $scrollingcart_detail=$this->config->get('scrollingcart_description');

    $get_language_data=$scrollingcart_detail[$this->config->get('config_language_id')];

    $this->document->addStyle('catalog/view/javascript/scrollingcart/scrollingcart.css');

    if($get_language_data['jsstatus']==1){
	$this->document->addScript('catalog/view/javascript/scrollingcart/jquery.js');
    }

    if($get_language_data['showposition']==0){ $scroll_position='right'; }else{ $scroll_position='left';}
    if($get_language_data['bgcolor']==''){ $scroll_bgcolor='066E70'; }else{ $scroll_bgcolor=$get_language_data['bgcolor'];}
    if($get_language_data['showpricecolor']==''){ $scroll_pricecolor='000000';}else{ $scroll_pricecolor=$get_language_data['showpricecolor'];}
    if($get_language_data['showproductcolor']==''){ $scroll_productcolor='23A1D1';}else{$scroll_productcolor=$get_language_data['showproductcolor'];}
?>
<script type="text/javascript">
jQuery(document).ready(function() {
    jQuery("#<?php echo $scroll_position?>_toolbar").show(); 
    jQuery("#back-top").hide();

    jQuery(function() {
	jQuery(window).scroll(function() {
	    if (jQuery(this).scrollTop() > 150) {
			jQuery('#back-top').fadeIn();
		  } else { 
			jQuery('#back-top').fadeOut();
		  }
	      });

	      jQuery('#back-top a').click(function() { jQuery('body,html').animate({scrollTop: 0}, 400);
		  return false;
	      });
    });

    jQuery("#<?php echo $scroll_position?>_toolbar .shoppingcart").bind('mouseenter',function() {jQuery(".shopping_cart_mini",this).stop(true, true).fadeIn(200, "linear");});
    
    jQuery("#<?php echo $scroll_position ?>_toolbar .shoppingcart").bind('mouseleave',function() { jQuery(".shopping_cart_mini",this).stop(true, true).fadeOut(200, "linear");});
  
    jQuery("#right_toolbar .form-search ").mouseenter(function() {jQuery('#right_toolbar .form-search input').animate({ right: 48,width: 240 }, 300);});

    jQuery("#left_toolbar .form-search ").mouseenter(function() {jQuery('#left_toolbar .form-search input').animate({ left: 40,width: 240}, 300);});

    jQuery("#right_toolbar .form-search ").mouseleave(function() { jQuery('#right_toolbar .form-search input').stop(true, false).animate({right: 20,width: 0}, 300);});

    jQuery("#left_toolbar .form-search ").mouseleave(function() {jQuery('#left_toolbar .form-search input').stop(true, false).animate({left: 20,width: 0}, 300);});

    jQuery('#magiksearch input[name=\'mgksearch\']').parent().find('button').on('click', function() { 
	url = jQuery('base').attr('href') + 'index.php?route=product/search';

	var value = jQuery('#right_toolbar input[name=\'mgksearch\']').val();
      
	if (value) { url += '&search=' + encodeURIComponent(value);}

	location = url;
    });

});
</script> 
<style>
.shoppingcart .fadelink {background:#<?php echo $scroll_bgcolor ?>;}
.shoppingcart:hover .fadelink span a {background:#<?php echo $scroll_bgcolor ?>;}
.shopping_cart_mini .button{background:#<?php echo $scroll_bgcolor ?>;}
#right_toolbar .form-search button{background:#<?php echo $scroll_bgcolor ?>;}
#left_toolbar .form-search button{background:#<?php echo $scroll_bgcolor ?>;}
.scrollproduct-price {color: #<?php echo $scroll_pricecolor ?>;}
.shopping_cart_mini .product-detailes .product-name {color: #<?php echo $scroll_productcolor ?>;}
</style>
      
<div  id="<?php echo $scroll_position?>_toolbar">
    <div class="shoppingcart">
	<div class="fadelink">
	      <span class="pull-<?php echo $scroll_position?>"> 
		  <img src="catalog/view/javascript/scrollingcart/image/scrollcart_icon.png" align="absmiddle">
	      </span>
	       <?php if( count($products) > 0 ){  ?>
			<span class="badge  badge-inverse"><?php echo $text_items_count; ?></span> 
	      <?php } ?>
	     
	    <?php if(count($products) < 4){ ?>
		     <?php if(count($products) == 0){ ?>
			<div class="shopping_cart_mini" style="bottom:0px;">
		     <?php }else{ ?>
			<div class="shopping_cart_mini">
		      <?php } ?>
	      <?php }else { ?>
		  <div class="shopping_cart_mini" style="overflow-y:auto;height:300px;">
	      <?php } ?>

	      <div class="inner-wrapper"> 
		<?php if(count($products)) { ?>
		    <?php if(count($products) > 0){ ?>
			<span class="scarttxtcolor">There are <?php echo $text_items_count; ?> items in your cart.</span>
		    <?php } ?>
				  
		<?php }else{  ?>
			<span class="scarttxtcolor"><?php echo $text_no_item; ?></span>
		<?php } ?>		  
		
 	      		   
		<?php foreach ($products as $product) { ?>
			<div class="item">
			    <?php if($get_language_data['showproductimage']){  ?>
			    <a href="<?php echo $product['href']; ?>" class="product-image">
			      <img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" title="<?php echo $product['name']; ?>" class="img-thumbnail" />
			    </a>
			    <?php } ?>
			    <div class="product-detailes"> 
				<a href="<?php echo $product['href']; ?>" class="product-name"><?php echo $product['name']; ?></a>
				<div class="scrollproduct-price">
				    <strong><?php echo $product['quantity'];?> x <span class="price"></span><?php echo $product['total']; ?></strong>
				</div>
			    </div>
			    <?php if($get_language_data['showdeletelink']){  ?>
				<div class="alignright">  
				   <button type="button" <?php if(VERSION >= 2.1) { ?> onclick="cart.remove('<?php echo $product['cart_id']; ?>');"<?php } else { ?> onclick="cart.remove('<?php echo $product['key']; ?>');"<?php } ?> title="<?php echo $button_remove; ?>">
				     <img src="catalog/view/javascript/scrollingcart/image/btn_scroll_trash.png">
				   </button> 
				</div>
			    <?php } ?>
			</div>

		<?php } ?>
		<?php if(count($products)) { ?>
			<div>
			  <span class="scarttxtcolor"><?php echo $text_cart_total;?></span> <span class="scrollproduct-price"><strong><?php echo $text_total; ?></strong></span>
			</div>
			<div class="shopping"> 
			    <a href="<?php echo $checkout ?>" class="button"><?php echo $text_checkout;?></a> 
			    <a href="<?php echo $cart; ?>" class="button"><?php echo $text_cart;?></a> 
			</div>
	      <?php } ?>
	      </div><!-- inner wrapper-->
	      </div>
	</div>
    </div>
		<?php if($get_language_data['showsearch']==1) { ?>
    		  <div class="search_wrapper" id="magiksearch">
		      <form class="form-search" action="" method="get">
				<button type="button">
				    <img src="catalog/view/javascript/scrollingcart/image/scrollsearch_icon.png" align="absmiddle">
				</button>
				<input name="mgksearch" class="input-medium search-query" value="search" onBlur="if (this.value == '') {this.value = 'search';}" onFocus="if(this.value =='search') {this.value = '';}" type="text">
			      </form>
		  </div>
		<?php } ?>
		<?php if($get_language_data['showtoplink']==1) { ?>
		  <div id="back-top" style="display:none;">
		    <a href="#top"><img src="catalog/view/javascript/scrollingcart/image/magikbackto_top.png"></a>
		  </div>
		<?php } ?>
    </div>

