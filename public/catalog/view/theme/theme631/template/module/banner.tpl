<div id="banner<?php echo $module; ?>" class="banners">
	<?php foreach ($banners as $banner) { ?>
	<?php if ($banner['link']) { ?>
	<div class="<?php echo $banner['title']; ?>">
		<div class="banner-box">
			<a class="clearfix" href="<?php echo $banner['link']; ?>">
				<img src="<?php echo $banner['image']; ?>" alt="<?php echo $banner['title']; ?>" class="img-responsive" />
				<?php if ($banner['description']) { ?>
				<div class="s-desc">
					<div class="container">
						<?php echo $banner['description']; ?>
					</div>
				</div>
				<?php } ?>
			</a>
		</div>
	</div>
	<?php } else { ?>
	<div class="<?php echo $banner['title']; ?>">
		<div class="banner-box">
			<img src="<?php echo $banner['image']; ?>" alt="<?php echo $banner['title']; ?>" class="img-responsive" />
			<?php if ($banner['description']) { ?>
			<div class="s-desc">
				<div class="container">
					<?php echo $banner['description']; ?>
				</div>
			</div>
			<?php } ?>
		</div>
	</div>
	<?php } ?>
	<?php } ?>
</div>