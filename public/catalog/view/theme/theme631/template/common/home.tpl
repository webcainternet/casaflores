<?php echo $header; ?>

<style>
#banner0 {
    margin: auto;
    width: 1170px;
    margin-top: 30px;
    margin-bottom: 30px;
    height: 150px;
}

.info01, .info02 {
    float: left;
    width: 50%;
}
</style>

<div id="container">
	<div class="container">
		<div class="row"><?php echo $column_left; ?>
		<?php if ($column_left && $column_right) { ?>
		<?php $class = 'col-sm-6'; ?>
		<?php } elseif ($column_left || $column_right) { ?>
		<?php $class = 'col-sm-9'; ?>
		<?php } else { ?>
		<?php $class = 'col-sm-12'; ?>
		<?php } ?>
		<div id="content" class="<?php echo $class; ?>"><?php echo $content_top; ?></div>
		<?php echo $column_right; ?></div>
	</div>
</div>
<div class="content_bottom">
			<?php echo $content_bottom; ?>
</div>
<?php echo $footer; ?>
<?php if ($footer_bottom) { ?>
<div class="footer_bottom"><?php echo $footer_bottom; ?></div>
	<?php }?>
