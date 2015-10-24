<?php
/**
 * @package   T3 Blank
 * @copyright Copyright (C) 2005 - 2012 Open Source Matters, Inc. All rights reserved.
 * @license   GNU General Public License version 2 or later; see LICENSE.txt
 */

defined('_JEXEC') or die;
?>

<?php if ($this->countModules('bottom-slider')) : ?>
	<!-- BOTTOM BANNER -->
	<div class="wrap t3-bottomslider text-center <?php $this->_c('bottom-slider') ?>">
		<div class="container">
			<jdoc:include type="modules" name="<?php $this->_p('bottom-slider') ?>" style="T3xHtml" />
		</div>
	</div>
	<!-- //BOTTOM BANNER -->
<?php endif ?>
