<?php echo $header; ?>
<link rel="stylesheet" href="view/javascript/scrollingcart/colorpicker/pick-a-color-1.2.3.min.css">
<?php echo $column_left; ?>

<div id="content">
  <div class="page-header">
    <div class="container-fluid">
      <div class="pull-right">
        <button type="submit" form="form-scrollingcart" data-toggle="tooltip" title="<?php echo $button_save; ?>" class="btn btn-primary"><i class="fa fa-save"></i></button>
        <a href="<?php echo $cancel; ?>" data-toggle="tooltip" title="<?php echo $button_cancel; ?>" class="btn btn-default"><i class="fa fa-reply"></i></a></div>
      <h1><?php echo $heading_title; ?></h1>
      <ul class="breadcrumb">
        <?php foreach ($breadcrumbs as $breadcrumb) { ?>
        <li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
        <?php } ?>
      </ul>
    </div>
  </div>
  <div class="container-fluid">
    <?php if ($error_warning) { ?>
    <div class="alert alert-danger"><i class="fa fa-exclamation-circle"></i> <?php echo $error_warning; ?>
      <button type="button" class="close" data-dismiss="alert">&times;</button>
    </div>
    <?php } ?>
    <div class="panel panel-default">
	<div class="panel-heading">
	  <h3 class="panel-title"><i class="fa fa-pencil"></i> <?php echo $text_edit; ?></h3>
	</div>

	<div class="panel-body">
	  <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" id="form-scrollingcart" class="form-horizontal">
	    <div class="tab-pane">
	      <ul class="nav nav-tabs" id="language">
              <?php foreach ($languages as $language) { ?>
              <li><a href="#language<?php echo $language['language_id']; ?>" data-toggle="tab"><img src="view/image/flags/<?php echo $language['image']; ?>" title="<?php echo $language['name']; ?>" /> <?php echo $language['name']; ?></a></li>
              <?php } ?>
            </ul>
	      <div class="tab-content">
		  <div class="form-group">
			<label class="col-sm-2 control-label" for="input-scrollingcart_ed"><?php echo $entry_status; ?></label>
			<div class="col-sm-10">
			    <select name="scrollingcart_status" id="input-scrollingcart_ed" class="form-control">
			    <?php if ($scrollingcart_status) { ?>
			    <option value="1" selected="selected"><?php echo $text_enabled; ?></option>
			    <option value="0"><?php echo $text_disabled; ?></option>
			    <?php } else { ?>
			    <option value="1"><?php echo $text_enabled; ?></option>
			    <option value="0" selected="selected"><?php echo $text_disabled; ?></option>
			    <?php } ?>
			    </select>
			</div>
		  </div>  
		  
		  <?php foreach ($languages as $language) { ?>
		      <div class="tab-pane" id="language<?php echo $language['language_id']; ?>">

			  <div class="form-group">
			    <label class="col-sm-2 control-label" for="input-showposition<?php echo $language['language_id']; ?>"><?php echo $entry_show_cartposition; ?></label>
			    <div class="col-sm-10">
			      <select name="scrollingcart_description[<?php echo $language['language_id']; ?>][showposition]" id="input-showposition<?php echo $language['language_id']; ?>" class="form-control">
				<?php if ($scrollingcart_description[$language['language_id']]['showposition']) { ?>
				<option value="1" selected="selected"><?php echo $text_left; ?></option>
				<option value="0"><?php echo $text_right; ?></option>
				<?php } else { ?>
				<option value="1"><?php echo $text_left; ?></option>
				<option value="0" selected="selected"><?php echo $text_right; ?></option>
				<?php } ?>
			      </select>
			    </div>
			  </div>
	  
			  <div class="form-group">
			    <label class="col-sm-2 control-label" for="input-jsstatus<?php echo $language['language_id']; ?>"><?php echo $entry_js_status; ?></label>
			    <div class="col-sm-10">
			      <select name="scrollingcart_description[<?php echo $language['language_id']; ?>][jsstatus]" id="input-jsstatus<?php echo $language['language_id']; ?>" class="form-control">
				<?php if ($scrollingcart_description[$language['language_id']]['jsstatus']) { ?>
				<option value="1" selected="selected"><?php echo $text_yes; ?></option>
				<option value="0"><?php echo $text_no; ?></option>
				<?php } else { ?>
				<option value="1"><?php echo $text_yes; ?></option>
				<option value="0" selected="selected"><?php echo $text_no; ?></option>
				<?php } ?>
			      </select>
			    </div>
			  </div>

			  <div class="form-group">
			    <label class="col-sm-2 control-label" for="input-showsearch<?php echo $language['language_id']; ?>"><?php echo $entry_show_search; ?></label>
			    <div class="col-sm-10">
			      <select name="scrollingcart_description[<?php echo $language['language_id']; ?>][showsearch]" id="input-showsearch<?php echo $language['language_id']; ?>" class="form-control">
				<?php if ($scrollingcart_description[$language['language_id']]['showsearch']) { ?>
				<option value="1" selected="selected"><?php echo $text_yes; ?></option>
				<option value="0"><?php echo $text_no; ?></option>
				<?php } else { ?>
				<option value="1"><?php echo $text_yes; ?></option>
				<option value="0" selected="selected"><?php echo $text_no; ?></option>
				<?php } ?>
			      </select>
			    </div>
			  </div>

			  <div class="form-group">
			    <label class="col-sm-2 control-label" for="input-showtoplink<?php echo $language['language_id']; ?>"><?php echo $entry_show_toplink; ?></label>
			    <div class="col-sm-10">
			      <select name="scrollingcart_description[<?php echo $language['language_id']; ?>][showtoplink]" id="input-showtoplink<?php echo $language['language_id']; ?>" class="form-control">
				<?php if ($scrollingcart_description[$language['language_id']]['showtoplink']) { ?>
				<option value="1" selected="selected"><?php echo $text_yes; ?></option>
				<option value="0"><?php echo $text_no; ?></option>
				<?php } else { ?>
				<option value="1"><?php echo $text_yes; ?></option>
				<option value="0" selected="selected"><?php echo $text_no; ?></option>
				<?php } ?>
			      </select>
			    </div>
			  </div>

			  <div class="form-group">
			    <label class="col-sm-2 control-label" for="input-bgcolor<?php echo $language['language_id']; ?>"><?php echo $entry_bgcolor; ?></label>
			    <div class="col-sm-10">
			    <input name="scrollingcart_description[<?php echo $language['language_id']; ?>][bgcolor]" cols="40" rows="5" id="input-bgcolor<?php echo $language['language_id']; ?>" placeholder="<?php echo $entry_bgcolor; ?>" value="<?php echo isset($scrollingcart_description[$language['language_id']]) ? $scrollingcart_description[$language['language_id']]['bgcolor'] : ''; ?>" class="pick-a-color form-control"/>
			    </div>
			  </div>

			  <div class="form-group">
			    <label class="col-sm-2 control-label" for="input-showdeletelink<?php echo $language['language_id']; ?>"><?php echo $entry_delete_link; ?></label>
			    <div class="col-sm-10">
			      <select name="scrollingcart_description[<?php echo $language['language_id']; ?>][showdeletelink]" id="input-showdeletelink<?php echo $language['language_id']; ?>" class="form-control">
				<?php if ($scrollingcart_description[$language['language_id']]['showdeletelink']) { ?>
				<option value="1" selected="selected"><?php echo $text_yes; ?></option>
				<option value="0"><?php echo $text_no; ?></option>
				<?php } else { ?>
				<option value="1"><?php echo $text_yes; ?></option>
				<option value="0" selected="selected"><?php echo $text_no; ?></option>
				<?php } ?>
			      </select>
			    </div>
			  </div>

			  <div class="form-group">
			    <label class="col-sm-2 control-label" for="input-showpricecolor<?php echo $language['language_id']; ?>"><?php echo $entry_price_color; ?></label>
			    <div class="col-sm-10">
			    <input name="scrollingcart_description[<?php echo $language['language_id']; ?>][showpricecolor]" cols="40" rows="5" id="input-showpricecolor<?php echo $language['language_id']; ?>" placeholder="<?php echo $entry_price_color; ?>" value="<?php echo isset($scrollingcart_description[$language['language_id']]) ? $scrollingcart_description[$language['language_id']]['showpricecolor'] : ''; ?>" class="pick-a-color form-control"/>
			    </div>
			  </div>
	
			  <div class="form-group">
			    <label class="col-sm-2 control-label" for="input-showproductcolor<?php echo $language['language_id']; ?>"><?php echo $entry_product_name_color; ?></label>
			    <div class="col-sm-10">
			    <input name="scrollingcart_description[<?php echo $language['language_id']; ?>][showproductcolor]" cols="40" rows="5" id="input-showproductcolor<?php echo $language['language_id']; ?>" placeholder="<?php echo $entry_product_name_color; ?>" value="<?php echo isset($scrollingcart_description[$language['language_id']]) ? $scrollingcart_description[$language['language_id']]['showproductcolor'] : ''; ?>" class="pick-a-color form-control"/>
			    </div>
			  </div>


			  	<div class="form-group">
			    <label class="col-sm-2 control-label" for="input-showproductimage<?php echo $language['language_id']; ?>"><?php echo $entry_product_image; ?></label>
			    <div class="col-sm-10">
			      <select name="scrollingcart_description[<?php echo $language['language_id']; ?>][showproductimage]" id="input-showproductimage<?php echo $language['language_id']; ?>" class="form-control">
				<?php if ($scrollingcart_description[$language['language_id']]['showproductimage']) { ?>
				<option value="1" selected="selected"><?php echo $text_yes; ?></option>
				<option value="0"><?php echo $text_no; ?></option>
				<?php } else { ?>
				<option value="1"><?php echo $text_yes; ?></option>
				<option value="0" selected="selected"><?php echo $text_no; ?></option>
				<?php } ?>
			      </select>
			    </div>
			  </div>

		      </div>
		  <?php } ?>

		  

	      </div>
	    </div>
	  </form>
	</div>
      </div>
  </div>
</div> 
  
    <script type="text/javascript"><!--
$('#language a:first').tab('show');
//--></script> 

 <script src="view/javascript/scrollingcart/colorpicker/tinycolor-0.9.15.min.js"></script>
 <script src="view/javascript/scrollingcart/colorpicker/pick-a-color-1.2.3.min.js"></script>  
  
  <script type="text/javascript">
  
    $(document).ready(function () {

      $(".pick-a-color").pickAColor({
        showSpectrum            : true,
        showSavedColors         : true,
        saveColorsPerElement    : true,
        fadeMenuToggle          : true,
        showAdvanced            : true,
        showBasicColors         : true,
        showHexInput            : true,
        allowBlank              : true,
        inlineDropdown          : true
      });
      
    });
  
    </script>
<?php echo $footer; ?> 
