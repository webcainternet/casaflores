<script>
	jQuery(function(){
		jQuery('#camera_wrap_<?php echo $module; ?>').camera({
			navigation: true,
			playPause: false,
			thumbnails: false,
			navigationHover: false,
			barPosition: 'top',
			loader: false,
			time: 3000,
			transPeriod:800,
			alignment: 'center',
			autoAdvance: true,
			mobileAutoAdvance: true,
			barDirection: 'leftToRight', 
			barPosition: 'bottom',
			easing: 'easeInOutExpo',
			fx: 'simpleFade',

			minHeight: '500px',
			hover: true,
			pagination: false,
			loaderColor			: '#1f1f1f', 
			loaderBgColor		: 'transparent',
			loaderOpacity		: 1,
			loaderPadding		: 0,
			loaderStroke		: 3,
			});
	});
</script>
<div class="fluid_container" >
	<div class="camera_container">
	<div id="camera_wrap_<?php echo $module; ?>">
	<?php foreach ($banners as $banner) { ?>
		<div title="<?php echo $banner['title']; ?>" data-thumb="<?php echo $banner['image']; ?>" <?php if ($banner['link']) { ?> data-link="<?php echo $banner['link']; ?>" onclick="location.href='<?php echo $banner['link']; ?>'"<?php } ?> data-src="<?php echo $banner['image']; ?>">
			<div class="camera_caption fadeIn" style="cursor: pointer; width: 100%; height: 100%;" onclick="location.href='<?php echo $banner['link']; ?>'">
				<?php echo $banner['description']; ?>
			</div>
		</div>
	<?php } ?>
	</div>
	</div>
	<div class="clear"></div>
</div>