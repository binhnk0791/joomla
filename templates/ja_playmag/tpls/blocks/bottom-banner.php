<?php
/**
 * @package   T3 Blank
 * @copyright Copyright (C) 2005 - 2012 Open Source Matters, Inc. All rights reserved.
 * @license   GNU General Public License version 2 or later; see LICENSE.txt
 */

defined('_JEXEC') or die;
?>

<?php if ($this->countModules('bottom-banner')) : ?>
	<!-- BOTTOM BANNER -->
	<div class="wrap t3-bottombanner text-center <?php $this->_c('bottom-banner') ?>">
		<div class="container">
			<jdoc:include type="modules" name="<?php $this->_p('bottom-banner') ?>" style="raw" />
		</div>
	</div>
	<!-- //BOTTOM BANNER -->
<?php endif ?>
