<?php
/**
 * $JA#COPYRIGHT$
 */

defined('_JEXEC') or die;
?>

<?php if ($this->countModules('slideshow')) : ?>
<!-- Slideshow -->
<div class="wrap ja-slideshow <?php $this->_c('slideshow') ?>">
	<div class="container">
		<div class="col-sm-12 col-md-8 col-lg-9">
			<jdoc:include type="modules" name="<?php $this->_p('slideshow') ?>" style="raw" />
		</div>
	</div>
</div>
<!-- //Slideshow -->
<?php endif ?>

